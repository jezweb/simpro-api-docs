# Customer Contracts

The contract will be used as the customer for maintenance jobs and will last for a specified duration.

## 39176000bce2a299e221bdd558e57567

<a id="opId39176000bce2a299e221bdd558e57567"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/`

*List all customer contracts.*

<h3 id="39176000bce2a299e221bdd558e57567-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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
    "Name": "string",
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22",
    "ContractNo": "string",
    "Expired": true
  }
]
```

<h3 id="39176000bce2a299e221bdd558e57567-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer contracts.|Inline|

<h3 id="39176000bce2a299e221bdd558e57567-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractNo|string|true|none|none|
|» Expired|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 45e5e14365aac2deb358eca8402bfde3

<a id="opId45e5e14365aac2deb358eca8402bfde3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "ContractNo": "string",
  "Value": 1.57,
  "Notes": "string",
  "Email": "address@example.com",
  "Expired": true,
  "PricingTier": 0,
  "Markup": 0,
  "Rates": {
    "ServiceFee": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/`

*Create a new customer contract.*

> Body parameter

```json
{
  "Name": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "ContractNo": "string",
  "Value": 1.57,
  "Notes": "string",
  "Email": "address@example.com",
  "Expired": true,
  "PricingTier": 0,
  "Markup": 0,
  "Rates": {
    "ServiceFee": 0
  }
}
```

<h3 id="45e5e14365aac2deb358eca8402bfde3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|body|body|object|true|Customer contract object|
|» Name|body|string|false|none|
|» StartDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractNo|body|string|false|none|
|» Value|body|number|false|none|
|» Notes|body|string|false|none|
|» Email|body|string|false|Standard email address format eg. address@example.com|
|» Expired|body|boolean|false|none|
|» PricingTier|body|integer|false|ID of a pricing tier|
|» Markup|body|number|false|Markup for material rates, pricing tier default will be used when empty.|
|» Rates|body|object|false|none|
|»» ServiceFee|body|integer|false|ID of a service fee|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "ContractNo": "string",
  "Value": 1.57,
  "Notes": "string",
  "Email": "address@example.com",
  "Archived": true,
  "Expired": true,
  "PricingTier": {
    "ID": 12345,
    "Name": "Tier 1 (Service name)",
    "DefaultMarkup": 10
  },
  "Markup": 0,
  "Rates": {
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    }
  },
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
  ],
  "ServiceLevels": [
    {
      "ServiceLevel": {
        "ID": 0,
        "Name": "string",
        "Prebuild": {
          "ID": 0,
          "Name": "string"
        },
        "Time": 1.57,
        "ChargeRate": 1.57
      },
      "AssetType": {
        "ID": 0,
        "Name": "string"
      }
    }
  ]
}
```

<h3 id="45e5e14365aac2deb358eca8402bfde3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer contract created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="45e5e14365aac2deb358eca8402bfde3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractNo|string|true|none|none|
|» Value|number|true|none|none|
|» Notes|string|true|none|none|
|» Email|string|true|none|Standard email address format eg. address@example.com|
|» Archived|boolean|true|none|none|
|» Expired|boolean|true|none|none|
|» PricingTier|object|true|none|Pricing tier of the customer contract materials.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|» Markup|number|true|none|Markup for material rates, pricing tier default will be used when empty.|
|» Rates|object|true|none|none|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this customer contract. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» ServiceLevels|[object]|true|none|none|
|»» ServiceLevel|object|true|none|none|
|»»» ID|number|true|none|none|
|»»» Name|string|true|none|none|
|»»» Prebuild|object|true|none|none|
|»»»» ID|number|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Time|number|true|none|none|
|»»» ChargeRate|number|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|number|true|none|none|
|»»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 15e7fff97f319d5126c401d29745ad42

<a id="opId15e7fff97f319d5126c401d29745ad42"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}`

*Retrieve details for a specific customer contract.*

<h3 id="15e7fff97f319d5126c401d29745ad42-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
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
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "ContractNo": "string",
  "Value": 1.57,
  "Notes": "string",
  "Email": "address@example.com",
  "Archived": true,
  "Expired": true,
  "PricingTier": {
    "ID": 12345,
    "Name": "Tier 1 (Service name)",
    "DefaultMarkup": 10
  },
  "Markup": 0,
  "Rates": {
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    }
  },
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
  ],
  "ServiceLevels": [
    {
      "ServiceLevel": {
        "ID": 0,
        "Name": "string",
        "Prebuild": {
          "ID": 0,
          "Name": "string"
        },
        "Time": 1.57,
        "ChargeRate": 1.57
      },
      "AssetType": {
        "ID": 0,
        "Name": "string"
      }
    }
  ]
}
```

<h3 id="15e7fff97f319d5126c401d29745ad42-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer contract details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contract not found.|None|

<h3 id="15e7fff97f319d5126c401d29745ad42-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractNo|string|true|none|none|
|» Value|number|true|none|none|
|» Notes|string|true|none|none|
|» Email|string|true|none|Standard email address format eg. address@example.com|
|» Archived|boolean|true|none|none|
|» Expired|boolean|true|none|none|
|» PricingTier|object|true|none|Pricing tier of the customer contract materials.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|» Markup|number|true|none|Markup for material rates, pricing tier default will be used when empty.|
|» Rates|object|true|none|none|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this customer contract. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» ServiceLevels|[object]|true|none|none|
|»» ServiceLevel|object|true|none|none|
|»»» ID|number|true|none|none|
|»»» Name|string|true|none|none|
|»»» Prebuild|object|true|none|none|
|»»»» ID|number|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Time|number|true|none|none|
|»»» ChargeRate|number|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|number|true|none|none|
|»»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 8e2251d10fbfd9174318b473d2aee312

<a id="opId8e2251d10fbfd9174318b473d2aee312"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "ContractNo": "string",
  "Value": 1.57,
  "Notes": "string",
  "Email": "address@example.com",
  "Expired": true,
  "PricingTier": 0,
  "Markup": 0,
  "Rates": {
    "ServiceFee": 0
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}`

*Update a customer contract.*

> Body parameter

```json
{
  "Name": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "ContractNo": "string",
  "Value": 1.57,
  "Notes": "string",
  "Email": "address@example.com",
  "Expired": true,
  "PricingTier": 0,
  "Markup": 0,
  "Rates": {
    "ServiceFee": 0
  }
}
```

<h3 id="8e2251d10fbfd9174318b473d2aee312-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|body|body|object|true|Customer contract object|
|» Name|body|string|false|none|
|» StartDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractNo|body|string|false|none|
|» Value|body|number|false|none|
|» Notes|body|string|false|none|
|» Email|body|string|false|Standard email address format eg. address@example.com|
|» Expired|body|boolean|false|none|
|» PricingTier|body|integer|false|ID of a pricing tier|
|» Markup|body|number|false|Markup for material rates, pricing tier default will be used when empty.|
|» Rates|body|object|false|none|
|»» ServiceFee|body|integer|false|ID of a service fee|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8e2251d10fbfd9174318b473d2aee312-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contract updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 0382b482613c2d2a0d7e778a481fab28

<a id="opId0382b482613c2d2a0d7e778a481fab28"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}`

*Delete a customer contract.*

<h3 id="0382b482613c2d2a0d7e778a481fab28-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0382b482613c2d2a0d7e778a481fab28-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contract deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contract does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>