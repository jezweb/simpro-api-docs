# Job Cost Center Assets

## 525b5e0af25011c7eb50c8a847f4d743

<a id="opId525b5e0af25011c7eb50c8a847f4d743"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/`

*List all job cost center assets.*

<h3 id="525b5e0af25011c7eb50c8a847f4d743-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
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
    "Asset": {
      "ID": 0,
      "AssetType": {
        "ID": 12345,
        "Name": "Fire Extinguisher"
      }
    }
  }
]
```

<h3 id="525b5e0af25011c7eb50c8a847f4d743-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center assets.|Inline|

<h3 id="525b5e0af25011c7eb50c8a847f4d743-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Asset|object|true|none|none|
|»» ID|integer|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 99103358e7f5ce37d91e8178c228926b

<a id="opId99103358e7f5ce37d91e8178c228926b"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Asset": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/`

*Create a new job cost center asset.*

> Body parameter

```json
{
  "Asset": 0
}
```

<h3 id="99103358e7f5ce37d91e8178c228926b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job cost center asset object|
|» Asset|body|integer|true|ID of a customer asset|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "Asset": {
    "ID": 0,
    "AssetType": {
      "ID": 12345,
      "Name": "Fire Extinguisher"
    }
  }
}
```

<h3 id="99103358e7f5ce37d91e8178c228926b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center asset created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="99103358e7f5ce37d91e8178c228926b-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Asset|object|true|none|none|
|»» ID|integer|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 02ff34523dbed8114a607a4cb66b1973

<a id="opId02ff34523dbed8114a607a4cb66b1973"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '[
  {
    "Asset": 0
  }
]';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/',
{
  method: 'PUT',
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

r = requests.put('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/', headers = headers)

print(r.json())

```

`PUT /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/`

*Replace job cost center assets.*

> Body parameter

```json
[
  {
    "Asset": 0
  }
]
```

<h3 id="02ff34523dbed8114a607a4cb66b1973-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|array[object]|true|Array of job cost center assets|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
[
  {
    "Asset": {
      "ID": 0,
      "AssetType": {
        "ID": 12345,
        "Name": "Fire Extinguisher"
      }
    }
  }
]
```

<h3 id="02ff34523dbed8114a607a4cb66b1973-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center assets replaced successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="02ff34523dbed8114a607a4cb66b1973-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Asset|object|true|none|none|
|»» ID|integer|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## b7f594edf639442cbeac7c31218d4ec5

<a id="opIdb7f594edf639442cbeac7c31218d4ec5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}`

*Retrieve details for a specific job cost center asset.*

<h3 id="b7f594edf639442cbeac7c31218d4ec5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
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
  "Asset": {
    "ID": 0,
    "AssetType": {
      "ID": 12345,
      "Name": "Fire Extinguisher"
    }
  }
}
```

<h3 id="b7f594edf639442cbeac7c31218d4ec5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center asset details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center asset not found.|None|

<h3 id="b7f594edf639442cbeac7c31218d4ec5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Asset|object|true|none|none|
|»» ID|integer|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## ddde9808ed3b1e5e10bb7b3272cdae34

<a id="opIdddde9808ed3b1e5e10bb7b3272cdae34"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/assets/{assetID}`

*Delete a job cost center asset.*

<h3 id="ddde9808ed3b1e5e10bb7b3272cdae34-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|assetID|path|integer|true|A valid asset id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ddde9808ed3b1e5e10bb7b3272cdae34-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center asset deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center asset does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>