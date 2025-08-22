# Fit Times

Create fit time multipliers to assist in estimating the amount of additional labor required for a catalog or pre-build item added to a job.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Labour-Fit-Times.htm">External documentation</a>

## 7f30dec210570da016d9a409f82c0256

<a id="opId7f30dec210570da016d9a409f82c0256"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/fitTimes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/fitTimes/`

*List all fit times.*

<h3 id="7f30dec210570da016d9a409f82c0256-parameters">Parameters</h3>

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

<h3 id="7f30dec210570da016d9a409f82c0256-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all fit times.|Inline|

<h3 id="7f30dec210570da016d9a409f82c0256-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 85f8f60d59295c2d603205a46de9aead

<a id="opId85f8f60d59295c2d603205a46de9aead"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/labor/fitTimes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Multiplier": 1.57,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/labor/fitTimes/`

*Create a new fit time.*

> Body parameter

```json
{
  "Name": "string",
  "Multiplier": 1.57,
  "DisplayOrder": 0
}
```

<h3 id="85f8f60d59295c2d603205a46de9aead-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Fit time object|
|» Name|body|string|true|none|
|» Multiplier|body|number|false|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "Multiplier": 1.57,
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="85f8f60d59295c2d603205a46de9aead-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Fit time created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="85f8f60d59295c2d603205a46de9aead-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Multiplier|number|true|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 7c3a5b01c700f02ed4f6b98839e4d1e7

<a id="opId7c3a5b01c700f02ed4f6b98839e4d1e7"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}`

*Retrieve details for a specific fit time.*

<h3 id="7c3a5b01c700f02ed4f6b98839e4d1e7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|fitTimeID|path|integer|true|A valid fit time id|
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
  "Multiplier": 1.57,
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="7c3a5b01c700f02ed4f6b98839e4d1e7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Fit time details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Fit time not found.|None|

<h3 id="7c3a5b01c700f02ed4f6b98839e4d1e7-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Multiplier|number|true|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## db3bdb75065c136fbcb6a2a6430bac58

<a id="opIddb3bdb75065c136fbcb6a2a6430bac58"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Multiplier": 1.57,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}`

*Update a fit time.*

> Body parameter

```json
{
  "Name": "string",
  "Multiplier": 1.57,
  "DisplayOrder": 0
}
```

<h3 id="db3bdb75065c136fbcb6a2a6430bac58-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|fitTimeID|path|integer|true|A valid fit time id|
|body|body|object|true|Fit time object|
|» Name|body|string|false|none|
|» Multiplier|body|number|false|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="db3bdb75065c136fbcb6a2a6430bac58-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Fit time updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 7b43099366a4d59fc50ebe8f21c5714b

<a id="opId7b43099366a4d59fc50ebe8f21c5714b"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/labor/fitTimes/{fitTimeID}`

*Delete a fit time.*

<h3 id="7b43099366a4d59fc50ebe8f21c5714b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|fitTimeID|path|integer|true|A valid fit time id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="7b43099366a4d59fc50ebe8f21c5714b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Fit time deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Fit time does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>