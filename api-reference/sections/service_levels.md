# Service Levels

**This feature is only available with Maintenance Planner purchased and enabled**

Service levels determine the service and testing frequency for an asset. When you assign service levels to asset types, you can create failure points for the technician to select when testing to explain why the asset failed, and add recommendations to failure points to suggest how to rectify the failure.

When you add a new asset to a site, all service levels assigned to the asset type will be added to the asset. You can add or remove service levels as required by your contracts.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Asset-Service-Levels.htm">External documentation</a>

## 74c8f5ddeccdd4cac3b3c130c6b9e196

<a id="opId74c8f5ddeccdd4cac3b3c130c6b9e196"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/`

*List all service levels.*

<h3 id="74c8f5ddeccdd4cac3b3c130c6b9e196-parameters">Parameters</h3>

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
    "Name": "Annually Service"
  }
]
```

<h3 id="74c8f5ddeccdd4cac3b3c130c6b9e196-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all service levels.|Inline|

<h3 id="74c8f5ddeccdd4cac3b3c130c6b9e196-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 784ddc9f7cb5cd10e4645508447689a5

<a id="opId784ddc9f7cb5cd10e4645508447689a5"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Annually Service",
  "Years": 1,
  "Months": 0,
  "Days": 0,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/`

*Create a new service level.*

> Body parameter

```json
{
  "Name": "Annually Service",
  "Years": 1,
  "Months": 0,
  "Days": 0,
  "Archived": true
}
```

<h3 id="784ddc9f7cb5cd10e4645508447689a5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Service level object|
|» Name|body|string|true|none|
|» Years|body|integer|true|none|
|» Months|body|integer|true|none|
|» Days|body|integer|true|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Annually Service",
  "Years": 1,
  "Months": 0,
  "Days": 0,
  "Archived": true
}
```

<h3 id="784ddc9f7cb5cd10e4645508447689a5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Service level created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="784ddc9f7cb5cd10e4645508447689a5-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Years|integer|true|none|none|
|» Months|integer|true|none|none|
|» Days|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 47d985022efb0a4caaa0ffdce8a5d3a9

<a id="opId47d985022efb0a4caaa0ffdce8a5d3a9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}`

*Retrieve details for a specific service level.*

<h3 id="47d985022efb0a4caaa0ffdce8a5d3a9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
  "ID": 12345,
  "Name": "Annually Service",
  "Years": 1,
  "Months": 0,
  "Days": 0,
  "Archived": true
}
```

<h3 id="47d985022efb0a4caaa0ffdce8a5d3a9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Service level details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Service level not found.|None|

<h3 id="47d985022efb0a4caaa0ffdce8a5d3a9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Years|integer|true|none|none|
|» Months|integer|true|none|none|
|» Days|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 52c965f843ba067a4560a81e2c507c80

<a id="opId52c965f843ba067a4560a81e2c507c80"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Annually Service",
  "Years": 1,
  "Months": 0,
  "Days": 0,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}`

*Update a service level.*

> Body parameter

```json
{
  "Name": "Annually Service",
  "Years": 1,
  "Months": 0,
  "Days": 0,
  "Archived": true
}
```

<h3 id="52c965f843ba067a4560a81e2c507c80-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|serviceLevelID|path|integer|true|A valid service level id|
|body|body|object|true|Service level object|
|» Name|body|string|false|none|
|» Years|body|integer|false|none|
|» Months|body|integer|false|none|
|» Days|body|integer|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="52c965f843ba067a4560a81e2c507c80-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Service level updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e41ae7e59c819f1d8fa99b7706915ebc

<a id="opIde41ae7e59c819f1d8fa99b7706915ebc"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assets/serviceLevels/{serviceLevelID}`

*Delete a service level.*

<h3 id="e41ae7e59c819f1d8fa99b7706915ebc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|serviceLevelID|path|integer|true|A valid service level id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e41ae7e59c819f1d8fa99b7706915ebc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Service level deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Service level does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>