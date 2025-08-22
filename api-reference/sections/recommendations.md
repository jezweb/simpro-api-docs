# Recommendations

Setup recommendations with Failure Points so that you can choose what to do next if an asset fails a test.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Asset-Types-Maintenance-Planner.htm#Add">External documentation</a>

## 2ecf898db4174880dda584faa963236f

<a id="opId2ecf898db4174880dda584faa963236f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/`

*List all recommendations.*

<h3 id="2ecf898db4174880dda584faa963236f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
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
    "Name": "New Pipe"
  }
]
```

<h3 id="2ecf898db4174880dda584faa963236f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recommendations.|Inline|

<h3 id="2ecf898db4174880dda584faa963236f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## b42e681cacc7310622d04f437300e491

<a id="opIdb42e681cacc7310622d04f437300e491"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "New Pipe",
  "Prebuild": 0,
  "ChargeRate": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/`

*Create a new recommendation.*

> Body parameter

```json
{
  "Name": "New Pipe",
  "Prebuild": 0,
  "ChargeRate": 0
}
```

<h3 id="b42e681cacc7310622d04f437300e491-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
|body|body|object|true|Recommendation object|
|» Name|body|string|true|none|
|» Prebuild|body|integer|false|ID of a prebuild|
|» ChargeRate|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "New Pipe",
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
  "ChargeRate": 0
}
```

<h3 id="b42e681cacc7310622d04f437300e491-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recommendation created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="b42e681cacc7310622d04f437300e491-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
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
|» ChargeRate|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## f9e9184055254e19d6d939dc11652fe6

<a id="opIdf9e9184055254e19d6d939dc11652fe6"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}`

*Retrieve details for a specific recommendation.*

<h3 id="f9e9184055254e19d6d939dc11652fe6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
|recommendationID|path|integer|true|A valid recommendation id|
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
  "Name": "New Pipe",
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
  "ChargeRate": 0
}
```

<h3 id="f9e9184055254e19d6d939dc11652fe6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recommendation details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recommendation not found.|None|

<h3 id="f9e9184055254e19d6d939dc11652fe6-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
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
|» ChargeRate|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## b98bf85b9f7b62cb1cedb43450ebadf3

<a id="opIdb98bf85b9f7b62cb1cedb43450ebadf3"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "New Pipe",
  "Prebuild": 0,
  "ChargeRate": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}`

*Update a recommendation.*

> Body parameter

```json
{
  "Name": "New Pipe",
  "Prebuild": 0,
  "ChargeRate": 0
}
```

<h3 id="b98bf85b9f7b62cb1cedb43450ebadf3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
|recommendationID|path|integer|true|A valid recommendation id|
|body|body|object|true|Recommendation object|
|» Name|body|string|false|none|
|» Prebuild|body|integer|false|ID of a prebuild|
|» ChargeRate|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b98bf85b9f7b62cb1cedb43450ebadf3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recommendation updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## b9f79ce20ea3f256cc3afd97fef7f06f

<a id="opIdb9f79ce20ea3f256cc3afd97fef7f06f"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}/failurePoints/{failurePointID}/recommendations/{recommendationID}`

*Delete a recommendation.*

<h3 id="b9f79ce20ea3f256cc3afd97fef7f06f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|failurePointID|path|integer|true|A valid failure point id|
|recommendationID|path|integer|true|A valid recommendation id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b9f79ce20ea3f256cc3afd97fef7f06f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recommendation deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recommendation does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>