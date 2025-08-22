# Failure Points

Use failure points as specific test points for each service level when performing maintenance on customer assets.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Asset-Types-Maintenance-Planner.htm#Add">External documentation</a>

## 7d256e14d6d7e7200fa21725c9f7fe36

<a id="opId7d256e14d6d7e7200fa21725c9f7fe36"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/`

*List all failure points.*

<h3 id="7d256e14d6d7e7200fa21725c9f7fe36-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
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
    "Name": "Broken Pipe",
    "DisplayOrder": 0
  }
]
```

<h3 id="7d256e14d6d7e7200fa21725c9f7fe36-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all failure points.|Inline|

<h3 id="7d256e14d6d7e7200fa21725c9f7fe36-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e2dd562feed7e5c4bfb782074f730cf2

<a id="opIde2dd562feed7e5c4bfb782074f730cf2"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Broken Pipe",
  "DisplayOrder": 0,
  "Standard": "string",
  "Prebuild": 0,
  "IsCritical": true,
  "Severity": "Technician Chooses"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/`

*Create a new failure point.*

> Body parameter

```json
{
  "Name": "Broken Pipe",
  "DisplayOrder": 0,
  "Standard": "string",
  "Prebuild": 0,
  "IsCritical": true,
  "Severity": "Technician Chooses"
}
```

<h3 id="e2dd562feed7e5c4bfb782074f730cf2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|body|body|object|true|Failure point object|
|» Name|body|string|true|none|
|» DisplayOrder|body|integer|false|none|
|» Standard|body|string|false|none|
|» Prebuild|body|integer|false|ID of a prebuild|
|» IsCritical|body|boolean|false|Deprecated. Use Severity field instead|
|» Severity|body|string|false|Define the severity of the failure point.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Severity|Technician Chooses|
|» Severity|Critical|
|» Severity|Non-Critical|
|» Severity|Non-Compliant|
|» Severity|Non-Conformant|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Broken Pipe",
  "DisplayOrder": 0,
  "Standard": "string",
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  },
  "IsCritical": true,
  "Severity": "Technician Chooses"
}
```

<h3 id="e2dd562feed7e5c4bfb782074f730cf2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Failure point created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="e2dd562feed7e5c4bfb782074f730cf2-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Standard|string|true|none|none|
|» Prebuild|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» PartNo|string|false|none|none|
|»» Name|string|false|none|none|
|»» AddOnPrice|object|false|none|Add-on prices will only be available when the add-ons are enabled.|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» DisplayOrder|integer|false|none|none|
|»» Archived|boolean|false|none|none|
|» IsCritical|boolean|true|none|Deprecated. Use Severity field instead|
|» Severity|string|true|none|Define the severity of the failure point.|

#### Enumerated Values

|Property|Value|
|---|---|
|Severity|Technician Chooses|
|Severity|Critical|
|Severity|Non-Critical|
|Severity|Non-Compliant|
|Severity|Non-Conformant|

<aside class="success">
This operation does not require authentication
</aside>

## 542f628c1e68cadec8922074e3b15bf4

<a id="opId542f628c1e68cadec8922074e3b15bf4"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}`

*Retrieve details for a specific failure point.*

<h3 id="542f628c1e68cadec8922074e3b15bf4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
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
  "Name": "Broken Pipe",
  "DisplayOrder": 0,
  "Standard": "string",
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  },
  "IsCritical": true,
  "Severity": "Technician Chooses"
}
```

<h3 id="542f628c1e68cadec8922074e3b15bf4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Failure point details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Failure point not found.|None|

<h3 id="542f628c1e68cadec8922074e3b15bf4-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Standard|string|true|none|none|
|» Prebuild|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» PartNo|string|false|none|none|
|»» Name|string|false|none|none|
|»» AddOnPrice|object|false|none|Add-on prices will only be available when the add-ons are enabled.|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» DisplayOrder|integer|false|none|none|
|»» Archived|boolean|false|none|none|
|» IsCritical|boolean|true|none|Deprecated. Use Severity field instead|
|» Severity|string|true|none|Define the severity of the failure point.|

#### Enumerated Values

|Property|Value|
|---|---|
|Severity|Technician Chooses|
|Severity|Critical|
|Severity|Non-Critical|
|Severity|Non-Compliant|
|Severity|Non-Conformant|

<aside class="success">
This operation does not require authentication
</aside>

## 3e9a9be25864832f1838320f16d4b2b7

<a id="opId3e9a9be25864832f1838320f16d4b2b7"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Broken Pipe",
  "DisplayOrder": 0,
  "Standard": "string",
  "Prebuild": 0,
  "IsCritical": true,
  "Severity": "Technician Chooses"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}`

*Update a failure point.*

> Body parameter

```json
{
  "Name": "Broken Pipe",
  "DisplayOrder": 0,
  "Standard": "string",
  "Prebuild": 0,
  "IsCritical": true,
  "Severity": "Technician Chooses"
}
```

<h3 id="3e9a9be25864832f1838320f16d4b2b7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
|body|body|object|true|Failure point object|
|» Name|body|string|false|none|
|» DisplayOrder|body|integer|false|none|
|» Standard|body|string|false|none|
|» Prebuild|body|integer|false|ID of a prebuild|
|» IsCritical|body|boolean|false|Deprecated. Use Severity field instead|
|» Severity|body|string|false|Define the severity of the failure point.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Severity|Technician Chooses|
|» Severity|Critical|
|» Severity|Non-Critical|
|» Severity|Non-Compliant|
|» Severity|Non-Conformant|

<h3 id="3e9a9be25864832f1838320f16d4b2b7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Failure point updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 6330b6cd63a3d5a6cba140e9752f433d

<a id="opId6330b6cd63a3d5a6cba140e9752f433d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}`

*Delete a failure point.*

<h3 id="6330b6cd63a3d5a6cba140e9752f433d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="6330b6cd63a3d5a6cba140e9752f433d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Failure point deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Failure point does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>