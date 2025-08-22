# Customer Assets

In Simpro, a customer asset is a piece of equipment installed at a customer site that you maintain on behalf of the customer.

Assets are always directly associated with the site where they are located. If a site is transferred to another customer, any assets on the site will also be transferred.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Customer-Assets-Overview.htm">External documentation</a>

## 53f0ccdc10c88b8f76ff612a707c475d

<a id="opId53f0ccdc10c88b8f76ff612a707c475d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customerAssets/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerAssets/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customerAssets/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customerAssets/`

*List all customer assets with sites.*

<h3 id="53f0ccdc10c88b8f76ff612a707c475d-parameters">Parameters</h3>

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
    "AssetType": {
      "ID": 12345,
      "Name": "Fire Extinguisher"
    },
    "Site": {
      "ID": 12345,
      "Name": "string"
    }
  }
]
```

<h3 id="53f0ccdc10c88b8f76ff612a707c475d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer assets with sites.|Inline|

<h3 id="53f0ccdc10c88b8f76ff612a707c475d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 1653584cf3ca97ffca9501980f26aa37

<a id="opId1653584cf3ca97ffca9501980f26aa37"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customerAssets/{customerAssetID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerAssets/{customerAssetID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customerAssets/{customerAssetID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customerAssets/{customerAssetID}`

*Retrieve details for a specific customer asset with site.*

<h3 id="1653584cf3ca97ffca9501980f26aa37-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerAssetID|path|integer|true|A valid customer asset id|
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
  "AssetType": {
    "ID": 12345,
    "Name": "Fire Extinguisher"
  },
  "DisplayOrder": 0,
  "CustomerContract": {
    "ID": 0,
    "Name": "string",
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22",
    "ContractNo": "string",
    "Expired": true
  },
  "StartDate": "2018-01-27",
  "LastTest": {
    "Result": "Pass",
    "Date": "2018-02-01",
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    }
  },
  "Archived": true,
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "Access Control Lock",
        "Type": "List",
        "ListItems": [
          "string"
        ]
      },
      "Value": "string"
    }
  ],
  "ParentID": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Site": {
    "ID": 12345,
    "Name": "string"
  }
}
```

<h3 id="1653584cf3ca97ffca9501980f26aa37-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer asset with site details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer asset with site not found.|None|

<h3 id="1653584cf3ca97ffca9501980f26aa37-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» CustomerContract|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|false|none|none|
|»» Expired|boolean|false|none|none|
|» StartDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» LastTest|object|true|none|none|
|»» Result|string¦null|false|none|Last test result.|
|»» Date|string(date)¦null|false|none|Last test date.|
|»» ServiceLevel|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Archived|boolean|true|none|Archive this customer asset.|
|» CustomFields|[object]|true|none|All of the custom fields for this customer asset with site. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» Value|string¦null|true|none|none|
|» ParentID|integer¦null|false|none|The ID of the parent asset.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Barcode|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 7b8d23d03848151ad0b6a757cebd001d

<a id="opId7b8d23d03848151ad0b6a757cebd001d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/`

*List all customer assets.*

<h3 id="7b8d23d03848151ad0b6a757cebd001d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
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
    "AssetType": {
      "ID": 12345,
      "Name": "Fire Extinguisher"
    }
  }
]
```

<h3 id="7b8d23d03848151ad0b6a757cebd001d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer assets.|Inline|

<h3 id="7b8d23d03848151ad0b6a757cebd001d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 9b05cf3a49752833ea76384270e205f2

<a id="opId9b05cf3a49752833ea76384270e205f2"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/{siteID}/assets/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "AssetType": 0,
  "DisplayOrder": 0,
  "CustomerContract": 0,
  "StartDate": "2018-01-27",
  "Archived": true,
  "ParentID": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/',
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

r = requests.post('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/{siteID}/assets/`

*Create a new customer asset.*

> Body parameter

```json
{
  "AssetType": 0,
  "DisplayOrder": 0,
  "CustomerContract": 0,
  "StartDate": "2018-01-27",
  "Archived": true,
  "ParentID": 0
}
```

<h3 id="9b05cf3a49752833ea76384270e205f2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|body|body|object|true|Customer asset object|
|» AssetType|body|integer|true|ID of a asset type|
|» DisplayOrder|body|integer|false|none|
|» CustomerContract|body|integer|false|ID of a customer contract|
|» StartDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Archived|body|boolean|false|Archive this customer asset.|
|» ParentID|body|integer¦null|false|The ID of the parent asset.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "AssetType": {
    "ID": 12345,
    "Name": "Fire Extinguisher"
  },
  "DisplayOrder": 0,
  "CustomerContract": {
    "ID": 0,
    "Name": "string",
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22",
    "ContractNo": "string",
    "Expired": true
  },
  "StartDate": "2018-01-27",
  "LastTest": {
    "Result": "Pass",
    "Date": "2018-02-01",
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    }
  },
  "Archived": true,
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "Access Control Lock",
        "Type": "List",
        "ListItems": [
          "string"
        ]
      },
      "Value": "string"
    }
  ],
  "ParentID": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="9b05cf3a49752833ea76384270e205f2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer asset created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="9b05cf3a49752833ea76384270e205f2-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» CustomerContract|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|false|none|none|
|»» Expired|boolean|false|none|none|
|» StartDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» LastTest|object|true|none|none|
|»» Result|string¦null|false|none|Last test result.|
|»» Date|string(date)¦null|false|none|Last test date.|
|»» ServiceLevel|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Archived|boolean|true|none|Archive this customer asset.|
|» CustomFields|[object]|true|none|All of the custom fields for this customer asset. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» Value|string¦null|true|none|none|
|» ParentID|integer¦null|false|none|The ID of the parent asset.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Barcode|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 96739268d6e4020031a0cb9f5064207c

<a id="opId96739268d6e4020031a0cb9f5064207c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}`

*Retrieve details for a specific customer asset.*

<h3 id="96739268d6e4020031a0cb9f5064207c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
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
  "AssetType": {
    "ID": 12345,
    "Name": "Fire Extinguisher"
  },
  "DisplayOrder": 0,
  "CustomerContract": {
    "ID": 0,
    "Name": "string",
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22",
    "ContractNo": "string",
    "Expired": true
  },
  "StartDate": "2018-01-27",
  "LastTest": {
    "Result": "Pass",
    "Date": "2018-02-01",
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    }
  },
  "Archived": true,
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "Access Control Lock",
        "Type": "List",
        "ListItems": [
          "string"
        ]
      },
      "Value": "string"
    }
  ],
  "ParentID": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="96739268d6e4020031a0cb9f5064207c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer asset details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer asset not found.|None|

<h3 id="96739268d6e4020031a0cb9f5064207c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» CustomerContract|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|false|none|none|
|»» Expired|boolean|false|none|none|
|» StartDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» LastTest|object|true|none|none|
|»» Result|string¦null|false|none|Last test result.|
|»» Date|string(date)¦null|false|none|Last test date.|
|»» ServiceLevel|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Archived|boolean|true|none|Archive this customer asset.|
|» CustomFields|[object]|true|none|All of the custom fields for this customer asset. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» Value|string¦null|true|none|none|
|» ParentID|integer¦null|false|none|The ID of the parent asset.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Barcode|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 18bccbeae027a89ab0dc032a5b62f764

<a id="opId18bccbeae027a89ab0dc032a5b62f764"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DisplayOrder": 0,
  "CustomerContract": 0,
  "StartDate": "2018-01-27",
  "Archived": true,
  "ParentID": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}`

*Update a customer asset.*

> Body parameter

```json
{
  "DisplayOrder": 0,
  "CustomerContract": 0,
  "StartDate": "2018-01-27",
  "Archived": true,
  "ParentID": 0
}
```

<h3 id="18bccbeae027a89ab0dc032a5b62f764-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|body|body|object|true|Customer asset object|
|» DisplayOrder|body|integer|false|none|
|» CustomerContract|body|integer|false|ID of a customer contract|
|» StartDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Archived|body|boolean|false|Archive this customer asset.|
|» ParentID|body|integer¦null|false|The ID of the parent asset.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="18bccbeae027a89ab0dc032a5b62f764-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer asset updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 8c643e4b87dcad34ce78d2ee4ba777b6

<a id="opId8c643e4b87dcad34ce78d2ee4ba777b6"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}`

*Delete a customer asset.*

<h3 id="8c643e4b87dcad34ce78d2ee4ba777b6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8c643e4b87dcad34ce78d2ee4ba777b6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer asset deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer asset does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>