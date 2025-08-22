# Asset Service Levels

## e209522eb8dadead8a8c8d08d69bdfcd

<a id="opIde209522eb8dadead8a8c8d08d69bdfcd"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/`

*List all asset service levels.*

<h3 id="e209522eb8dadead8a8c8d08d69bdfcd-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

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
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    },
    "ServiceDate": "2017-02-24"
  }
]
```

<h3 id="e209522eb8dadead8a8c8d08d69bdfcd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all asset service levels.|Inline|

<h3 id="e209522eb8dadead8a8c8d08d69bdfcd-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» ServiceDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## 2d003d0e165b448abbc6535f5f92b5c3

<a id="opId2d003d0e165b448abbc6535f5f92b5c3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ServiceLevel": 0,
  "ServiceDate": "2017-02-24"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/',
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

r = requests.post('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/`

*Create a new asset service level.*

> Body parameter

```json
{
  "ServiceLevel": 0,
  "ServiceDate": "2017-02-24"
}
```

<h3 id="2d003d0e165b448abbc6535f5f92b5c3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|body|body|object|true|Asset service level object|
|» ServiceLevel|body|integer|true|ID of a service level|
|» ServiceDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "ServiceDate": "2017-02-24"
}
```

<h3 id="2d003d0e165b448abbc6535f5f92b5c3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Asset service level created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="2d003d0e165b448abbc6535f5f92b5c3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» ServiceDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## 3584fea23046c398d3c683c65966da17

<a id="opId3584fea23046c398d3c683c65966da17"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}`

*Retrieve details for a specific asset service level.*

<h3 id="3584fea23046c398d3c683c65966da17-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|serviceLevelID|path|integer|true|A valid service level id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "ServiceDate": "2017-02-24"
}
```

<h3 id="3584fea23046c398d3c683c65966da17-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Asset service level details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset service level not found.|None|

<h3 id="3584fea23046c398d3c683c65966da17-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» ServiceDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## 10df7d0a4373c476ef436515734303dc

<a id="opId10df7d0a4373c476ef436515734303dc"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "ServiceDate": "2017-02-24"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}`

*Update a asset service level.*

> Body parameter

```json
{
  "ServiceDate": "2017-02-24"
}
```

<h3 id="10df7d0a4373c476ef436515734303dc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|serviceLevelID|path|integer|true|A valid service level id|
|body|body|object|true|Asset service level object|
|» ServiceDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="10df7d0a4373c476ef436515734303dc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset service level updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 8db3a0756585863176a650f74122d0f7

<a id="opId8db3a0756585863176a650f74122d0f7"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/serviceLevels/{serviceLevelID}`

*Delete a asset service level.*

<h3 id="8db3a0756585863176a650f74122d0f7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|serviceLevelID|path|integer|true|A valid service level id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8db3a0756585863176a650f74122d0f7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset service level deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset service level does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>