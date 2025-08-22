# Vendors

Create and manage vendors in Simpro to import catalogs, create and send vendor orders.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Suppliers.htm">External documentation</a>

## 172ba82fefdcb045e2d0227d7d4ad344

<a id="opId172ba82fefdcb045e2d0227d7d4ad344"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendors/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v1.0/companies/{companyID}/vendors/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendors/`

*List all vendors.*

<h3 id="172ba82fefdcb045e2d0227d7d4ad344-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|pageSize|query|integer|false|The maximum number of results to be returned by a request.|
|page|query|integer|false|Set the page number on paginated request|
|orderby|query|array[string]|false|Set the order of the requested records, by prefixing '-' on the column name you can get records by descending order. Comma separated list can also be provided.|
|limit|query|integer|false|Set the limit of number of records in a request|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|search|all|
|search|any|

> Example responses

> 200 Response

```json
[
  {
    "ID": 0,
    "Name": "string"
  }
]
```

<h3 id="172ba82fefdcb045e2d0227d7d4ad344-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendors.|Inline|

<h3 id="172ba82fefdcb045e2d0227d7d4ad344-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 53d4ec1a8bf2906a38ace8cb994b3077

<a id="opId53d4ec1a8bf2906a38ace8cb994b3077"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendors/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "EIN": "string",
  "CompanyNo": "string",
  "Website": "string",
  "Email": "string",
  "Phone": "string",
  "Fax": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "BillingAddress": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "PrivateNotes": "string",
  "Profile": {
    "TaxCode": 0,
    "Account": "string",
    "Currency": "string",
    "PreferredNotificationMethod": "string"
  },
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/api/v1.0/companies/{companyID}/vendors/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendors/`

*Create a new vendor.*

> Body parameter

```json
{
  "Name": "string",
  "EIN": "string",
  "CompanyNo": "string",
  "Website": "string",
  "Email": "string",
  "Phone": "string",
  "Fax": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "BillingAddress": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "PrivateNotes": "string",
  "Profile": {
    "TaxCode": 0,
    "Account": "string",
    "Currency": "string",
    "PreferredNotificationMethod": "string"
  },
  "Archived": true
}
```

<h3 id="53d4ec1a8bf2906a38ace8cb994b3077-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Vendor object|
|» Name|body|string|true|none|
|» EIN|body|string|false|none|
|» CompanyNo|body|string|false|This column is only applicable to UK version web UI.|
|» Website|body|string|false|none|
|» Email|body|string|false|none|
|» Phone|body|string|false|none|
|» Fax|body|string|false|none|
|» Address|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» BillingAddress|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|none|
|»» RoutingNo|body|string|false|none|
|»» AccountNo|body|string|false|none|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the vendor payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» PrivateNotes|body|string|false|none|
|» Profile|body|object|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|
|»» Account|body|string|false|none|
|»» Currency|body|string|false|ID of a currency|
|»» PreferredNotificationMethod|body|string|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»»» Type|Invoice|
|»»» Type|Month|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "EIN": "string",
  "CompanyNo": "string",
  "Website": "string",
  "Email": "string",
  "Phone": "string",
  "Fax": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "BillingAddress": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "PrivateNotes": "string",
  "Profile": {
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    },
    "Account": "string",
    "Currency": "USD",
    "PreferredNotificationMethod": "string"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true,
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ],
        "IsMandatory": true
      },
      "Value": "string"
    }
  ]
}
```

<h3 id="53d4ec1a8bf2906a38ace8cb994b3077-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="53d4ec1a8bf2906a38ace8cb994b3077-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» EIN|string|true|none|none|
|» CompanyNo|string|true|none|This column is only applicable to UK version web UI.|
|» Website|string|true|none|none|
|» Email|string|true|none|none|
|» Phone|string|true|none|none|
|» Fax|string|true|none|none|
|» Address|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» BillingAddress|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|none|
|»» RoutingNo|string|true|none|none|
|»» AccountNo|string|true|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the vendor payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» PrivateNotes|string|true|none|none|
|» Profile|object|true|none|none|
|»» TaxCode|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»» Account|string|true|none|none|
|»» Currency|object|true|none|The default currency for this vendor. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»»» ID|string|true|none|none|
|»»» Name|string|true|none|none|
|»»» Visible|boolean|true|none|none|
|»» PreferredNotificationMethod|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this vendor. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Invoice|
|Type|Month|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 0dd5568713e06dbb9081394198337974

<a id="opId0dd5568713e06dbb9081394198337974"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendors/{vendorID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/api/v1.0/companies/{companyID}/vendors/{vendorID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendors/{vendorID}`

*Retrieve details for a specific vendor.*

<h3 id="0dd5568713e06dbb9081394198337974-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 0,
  "Name": "string",
  "EIN": "string",
  "CompanyNo": "string",
  "Website": "string",
  "Email": "string",
  "Phone": "string",
  "Fax": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "BillingAddress": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "PrivateNotes": "string",
  "Profile": {
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    },
    "Account": "string",
    "Currency": "USD",
    "PreferredNotificationMethod": "string"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true,
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ],
        "IsMandatory": true
      },
      "Value": "string"
    }
  ]
}
```

<h3 id="0dd5568713e06dbb9081394198337974-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor not found.|None|

<h3 id="0dd5568713e06dbb9081394198337974-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» EIN|string|true|none|none|
|» CompanyNo|string|true|none|This column is only applicable to UK version web UI.|
|» Website|string|true|none|none|
|» Email|string|true|none|none|
|» Phone|string|true|none|none|
|» Fax|string|true|none|none|
|» Address|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» BillingAddress|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|none|
|»» RoutingNo|string|true|none|none|
|»» AccountNo|string|true|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the vendor payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» PrivateNotes|string|true|none|none|
|» Profile|object|true|none|none|
|»» TaxCode|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»» Account|string|true|none|none|
|»» Currency|object|true|none|The default currency for this vendor. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»»» ID|string|true|none|none|
|»»» Name|string|true|none|none|
|»»» Visible|boolean|true|none|none|
|»» PreferredNotificationMethod|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this vendor. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Invoice|
|Type|Month|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 1c4b4b63e29e68c5da54230d0e70b358

<a id="opId1c4b4b63e29e68c5da54230d0e70b358"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendors/{vendorID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "EIN": "string",
  "CompanyNo": "string",
  "Website": "string",
  "Email": "string",
  "Phone": "string",
  "Fax": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "BillingAddress": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "PrivateNotes": "string",
  "Profile": {
    "TaxCode": 0,
    "Account": "string",
    "Currency": "string",
    "PreferredNotificationMethod": "string"
  },
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.patch('/api/v1.0/companies/{companyID}/vendors/{vendorID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendors/{vendorID}`

*Update a vendor.*

> Body parameter

```json
{
  "Name": "string",
  "EIN": "string",
  "CompanyNo": "string",
  "Website": "string",
  "Email": "string",
  "Phone": "string",
  "Fax": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "BillingAddress": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "PrivateNotes": "string",
  "Profile": {
    "TaxCode": 0,
    "Account": "string",
    "Currency": "string",
    "PreferredNotificationMethod": "string"
  },
  "Archived": true
}
```

<h3 id="1c4b4b63e29e68c5da54230d0e70b358-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|body|body|object|true|Vendor object|
|» Name|body|string|false|none|
|» EIN|body|string|false|none|
|» CompanyNo|body|string|false|This column is only applicable to UK version web UI.|
|» Website|body|string|false|none|
|» Email|body|string|false|none|
|» Phone|body|string|false|none|
|» Fax|body|string|false|none|
|» Address|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» BillingAddress|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|none|
|»» RoutingNo|body|string|false|none|
|»» AccountNo|body|string|false|none|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the vendor payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» PrivateNotes|body|string|false|none|
|» Profile|body|object|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|
|»» Account|body|string|false|none|
|»» Currency|body|string|false|ID of a currency|
|»» PreferredNotificationMethod|body|string|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»»» Type|Invoice|
|»»» Type|Month|

<h3 id="1c4b4b63e29e68c5da54230d0e70b358-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 5d8a6a2e8e1f9dc7372185eb6972ba2b

<a id="opId5d8a6a2e8e1f9dc7372185eb6972ba2b"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendors/{vendorID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests

r = requests.delete('/api/v1.0/companies/{companyID}/vendors/{vendorID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendors/{vendorID}`

*Delete a vendor.*

<h3 id="5d8a6a2e8e1f9dc7372185eb6972ba2b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5d8a6a2e8e1f9dc7372185eb6972ba2b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>