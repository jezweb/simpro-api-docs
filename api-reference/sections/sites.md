# Sites

In Simpro, sites are physical locations where you perform work for a customer.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Sites.htm">External documentation</a>

## 898b336d40a6417da60a80ada959793f

<a id="opId898b336d40a6417da60a80ada959793f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/`

*List all sites.*

<h3 id="898b336d40a6417da60a80ada959793f-parameters">Parameters</h3>

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
    "ID": 12345,
    "Name": "string"
  }
]
```

<h3 id="898b336d40a6417da60a80ada959793f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all sites.|Inline|

<h3 id="898b336d40a6417da60a80ada959793f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of the site|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 2b8e5642e64601211d86716018011a87

<a id="opId2b8e5642e64601211d86716018011a87"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
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
    "PostalCode": "string"
  },
  "BillingContact": "string",
  "PrimaryContact": {
    "Contact": 0,
    "Title": "string",
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "Fax": "string",
    "Position": "string",
    "PreferredNotificationMethod": "string"
  },
  "PublicNotes": "string",
  "PrivateNotes": "string",
  "Zone": 0,
  "PreferredTechs": [
    0
  ],
  "Customers": [
    0
  ],
  "Archived": true,
  "STCZone": 1,
  "VEECZone": "Metropolitan",
  "Rates": {
    "ServiceFee": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/',
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

r = requests.post('/api/v1.0/companies/{companyID}/sites/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/`

*Create a new site.*

> Body parameter

```json
{
  "Name": "string",
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
    "PostalCode": "string"
  },
  "BillingContact": "string",
  "PrimaryContact": {
    "Contact": 0,
    "Title": "string",
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "Fax": "string",
    "Position": "string",
    "PreferredNotificationMethod": "string"
  },
  "PublicNotes": "string",
  "PrivateNotes": "string",
  "Zone": 0,
  "PreferredTechs": [
    0
  ],
  "Customers": [
    0
  ],
  "Archived": true,
  "STCZone": 1,
  "VEECZone": "Metropolitan",
  "Rates": {
    "ServiceFee": 0
  }
}
```

<h3 id="2b8e5642e64601211d86716018011a87-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Site object|
|» Name|body|string|true|none|
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
|» BillingContact|body|string|false|none|
|» PrimaryContact|body|object|false|none|
|»» Contact|body|integer|false|ID of a contact|
|»» Title|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» GivenName|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» FamilyName|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Email|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» WorkPhone|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» CellPhone|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Fax|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Position|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» PreferredNotificationMethod|body|string|false|none|
|» PublicNotes|body|string|false|This column supports HTML formatting.|
|» PrivateNotes|body|string|false|This column supports HTML formatting.|
|» Zone|body|integer|false|ID of a zone|
|» PreferredTechs|body|[integer]|false|Deprecated: Please use PreferredTechnicians(includes AssetType and ServiceLevel) field. Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|» Customers|body|[integer]|false|none|
|» Archived|body|boolean|false|none|
|» STCZone|body|integer¦null|false|Zone number for site location.|
|» VEECZone|body|string¦null|false|VEEC Zone for site location.|
|» Rates|body|object|false|none|
|»» ServiceFee|body|integer|false|ID of a service fee|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» VEECZone|Metropolitan|
|» VEECZone|Regional|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
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
    "PostalCode": "string"
  },
  "BillingContact": "string",
  "PrimaryContact": {
    "Contact": {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string",
      "Email": "string"
    },
    "Title": "string",
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "Fax": "string",
    "Position": "string",
    "PreferredNotificationMethod": "string"
  },
  "PublicNotes": "string",
  "PrivateNotes": "string",
  "Zone": {
    "ID": 12345,
    "Name": "string"
  },
  "PreferredTechs": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "PreferredTechnicians": [
    {
      "Staff": {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      },
      "AssetType": {
        "ID": 12345,
        "Name": "Fire Extinguisher"
      },
      "ServiceLevel": {
        "ID": 12345,
        "Name": "Annually Service"
      }
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Customers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
  "Archived": true,
  "STCZone": 1,
  "VEECZone": "Metropolitan",
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
  "Rates": {
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    }
  }
}
```

<h3 id="2b8e5642e64601211d86716018011a87-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Site created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="2b8e5642e64601211d86716018011a87-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of the site|
|» Name|string|true|none|none|
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
|» BillingContact|string|true|none|none|
|» PrimaryContact|object|true|none|none|
|»» Contact|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» GivenName|string|false|none|Given name / First name|
|»»» FamilyName|string|false|none|Family name / Last name|
|»»» Email|string|false|none|none|
|»» Title|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» GivenName|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» FamilyName|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Email|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» WorkPhone|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» CellPhone|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Fax|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Position|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» PreferredNotificationMethod|string|true|none|none|
|» PublicNotes|string|true|none|This column supports HTML formatting.|
|» PrivateNotes|string|true|none|This column supports HTML formatting.|
|» Zone|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» PreferredTechs|[object]|true|none|Deprecated: Please use PreferredTechnicians(includes AssetType and ServiceLevel) field. Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»» Preferred technicians|object|false|none|Deprecated: Please use PreferredTechnicians(includes AssetType and ServiceLevel) field. Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»»» ID|integer|true|none|Employee ID of the staff member|
|»»» Name|string|true|none|Name of the staff member|
|»»» Type|string|true|none|Staff type|
|»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» PreferredTechnicians|[object]|true|none|Preferred technicians of a site. For modifications please use /preferredTechnicians endpoints|
|»» Staff|object|true|none|none|
|»»» ID|integer|true|none|Employee ID of the staff member|
|»»» Name|string|true|none|Name of the staff member|
|»»» Type|string|true|none|Staff type|
|»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|»» AssetType|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» ServiceLevel|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Customers|[object]|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Archived|boolean|true|none|none|
|» STCZone|integer¦null|false|none|Zone number for site location.|
|» VEECZone|string¦null|false|none|VEEC Zone for site location.|
|» CustomFields|[object]|true|none|All of the custom fields for this site. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Rates|object|true|none|none|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|VEECZone|Metropolitan|
|VEECZone|Regional|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 101d05972386dfa7536b58fe655d382e

<a id="opId101d05972386dfa7536b58fe655d382e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}`

*Retrieve details for a specific site.*

<h3 id="101d05972386dfa7536b58fe655d382e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "Name": "string",
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
    "PostalCode": "string"
  },
  "BillingContact": "string",
  "PrimaryContact": {
    "Contact": {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string",
      "Email": "string"
    },
    "Title": "string",
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "Fax": "string",
    "Position": "string",
    "PreferredNotificationMethod": "string"
  },
  "PublicNotes": "string",
  "PrivateNotes": "string",
  "Zone": {
    "ID": 12345,
    "Name": "string"
  },
  "PreferredTechs": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "PreferredTechnicians": [
    {
      "Staff": {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      },
      "AssetType": {
        "ID": 12345,
        "Name": "Fire Extinguisher"
      },
      "ServiceLevel": {
        "ID": 12345,
        "Name": "Annually Service"
      }
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Customers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
  "Archived": true,
  "STCZone": 1,
  "VEECZone": "Metropolitan",
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
  "Rates": {
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    }
  }
}
```

<h3 id="101d05972386dfa7536b58fe655d382e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Site details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site not found.|None|

<h3 id="101d05972386dfa7536b58fe655d382e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of the site|
|» Name|string|true|none|none|
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
|» BillingContact|string|true|none|none|
|» PrimaryContact|object|true|none|none|
|»» Contact|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» GivenName|string|false|none|Given name / First name|
|»»» FamilyName|string|false|none|Family name / Last name|
|»»» Email|string|false|none|none|
|»» Title|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» GivenName|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» FamilyName|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Email|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» WorkPhone|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» CellPhone|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Fax|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Position|string|true|none|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» PreferredNotificationMethod|string|true|none|none|
|» PublicNotes|string|true|none|This column supports HTML formatting.|
|» PrivateNotes|string|true|none|This column supports HTML formatting.|
|» Zone|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» PreferredTechs|[object]|true|none|Deprecated: Please use PreferredTechnicians(includes AssetType and ServiceLevel) field. Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»» Preferred technicians|object|false|none|Deprecated: Please use PreferredTechnicians(includes AssetType and ServiceLevel) field. Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»»» ID|integer|true|none|Employee ID of the staff member|
|»»» Name|string|true|none|Name of the staff member|
|»»» Type|string|true|none|Staff type|
|»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» PreferredTechnicians|[object]|true|none|Preferred technicians of a site. For modifications please use /preferredTechnicians endpoints|
|»» Staff|object|true|none|none|
|»»» ID|integer|true|none|Employee ID of the staff member|
|»»» Name|string|true|none|Name of the staff member|
|»»» Type|string|true|none|Staff type|
|»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|»» AssetType|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» ServiceLevel|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Customers|[object]|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Archived|boolean|true|none|none|
|» STCZone|integer¦null|false|none|Zone number for site location.|
|» VEECZone|string¦null|false|none|VEEC Zone for site location.|
|» CustomFields|[object]|true|none|All of the custom fields for this site. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Rates|object|true|none|none|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|VEECZone|Metropolitan|
|VEECZone|Regional|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## e76d2081b09c38537a5380a8542334ce

<a id="opIde76d2081b09c38537a5380a8542334ce"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
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
    "PostalCode": "string"
  },
  "BillingContact": "string",
  "PrimaryContact": {
    "Contact": 0,
    "Title": "string",
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "Fax": "string",
    "Position": "string",
    "PreferredNotificationMethod": "string"
  },
  "PublicNotes": "string",
  "PrivateNotes": "string",
  "Zone": 0,
  "PreferredTechs": [
    0
  ],
  "Customers": [
    0
  ],
  "Archived": true,
  "STCZone": 1,
  "VEECZone": "Metropolitan",
  "Rates": {
    "ServiceFee": 0
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}`

*Update a site.*

> Body parameter

```json
{
  "Name": "string",
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
    "PostalCode": "string"
  },
  "BillingContact": "string",
  "PrimaryContact": {
    "Contact": 0,
    "Title": "string",
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "Fax": "string",
    "Position": "string",
    "PreferredNotificationMethod": "string"
  },
  "PublicNotes": "string",
  "PrivateNotes": "string",
  "Zone": 0,
  "PreferredTechs": [
    0
  ],
  "Customers": [
    0
  ],
  "Archived": true,
  "STCZone": 1,
  "VEECZone": "Metropolitan",
  "Rates": {
    "ServiceFee": 0
  }
}
```

<h3 id="e76d2081b09c38537a5380a8542334ce-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|body|body|object|true|Site object|
|» Name|body|string|false|none|
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
|» BillingContact|body|string|false|none|
|» PrimaryContact|body|object|false|none|
|»» Contact|body|integer|false|ID of a contact|
|»» Title|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» GivenName|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» FamilyName|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Email|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» WorkPhone|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» CellPhone|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Fax|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» Position|body|string|false|Deprecated:: Please use <a href="http://developer.simprogroup.com/apidoc/?page=9aa698f602b1e5694855cee73a683488">contacts</a> endpoint to read and modify contact details.|
|»» PreferredNotificationMethod|body|string|false|none|
|» PublicNotes|body|string|false|This column supports HTML formatting.|
|» PrivateNotes|body|string|false|This column supports HTML formatting.|
|» Zone|body|integer|false|ID of a zone|
|» PreferredTechs|body|[integer]|false|Deprecated: Please use PreferredTechnicians(includes AssetType and ServiceLevel) field. Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|» Customers|body|[integer]|false|none|
|» Archived|body|boolean|false|none|
|» STCZone|body|integer¦null|false|Zone number for site location.|
|» VEECZone|body|string¦null|false|VEEC Zone for site location.|
|» Rates|body|object|false|none|
|»» ServiceFee|body|integer|false|ID of a service fee|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» VEECZone|Metropolitan|
|» VEECZone|Regional|

<h3 id="e76d2081b09c38537a5380a8542334ce-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2d7a51b54c40862ebac67a6cc189e572

<a id="opId2d7a51b54c40862ebac67a6cc189e572"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/sites/{siteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/sites/{siteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/sites/{siteID}`

*Delete a site.*

<h3 id="2d7a51b54c40862ebac67a6cc189e572-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2d7a51b54c40862ebac67a6cc189e572-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>