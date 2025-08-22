# Plant And Equipment Services

## ce1ed665b6ef2d550c6907d61341df98

<a id="opIdce1ed665b6ef2d550c6907d61341df98"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/`

*List all plant and equipment services.*

<h3 id="ce1ed665b6ef2d550c6907d61341df98-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
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
    "Notes": "string",
    "Date": "2018-01-19",
    "Hours": 0,
    "Cost": 1.57
  }
]
```

<h3 id="ce1ed665b6ef2d550c6907d61341df98-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all plant and equipment services.|Inline|

<h3 id="ce1ed665b6ef2d550c6907d61341df98-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Notes|string|true|none|none|
|» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Hours|integer|true|none|none|
|» Cost|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 13bb9309a1f3c08cd095ae4cb87e04a4

<a id="opId13bb9309a1f3c08cd095ae4cb87e04a4"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Notes": "string",
  "Date": "2018-01-19",
  "Hours": 0,
  "Cost": 1.57,
  "NextService": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/',
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

r = requests.post('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/`

*Create a new plant and equipment service.*

> Body parameter

```json
{
  "Notes": "string",
  "Date": "2018-01-19",
  "Hours": 0,
  "Cost": 1.57,
  "NextService": true
}
```

<h3 id="13bb9309a1f3c08cd095ae4cb87e04a4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|body|body|object|true|Plant And Equipment Service object|
|» Notes|body|string|false|none|
|» Date|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Hours|body|integer|false|none|
|» Cost|body|number|false|none|
|» NextService|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Notes": "string",
  "Date": "2018-01-19",
  "Hours": 0,
  "Cost": 1.57,
  "NextService": true
}
```

<h3 id="13bb9309a1f3c08cd095ae4cb87e04a4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Plant And Equipment Service created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="13bb9309a1f3c08cd095ae4cb87e04a4-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Notes|string|true|none|none|
|» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Hours|integer|true|none|none|
|» Cost|number|true|none|none|
|» NextService|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 518daa48f2a51e486c7cbcffdc420646

<a id="opId518daa48f2a51e486c7cbcffdc420646"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}`

*Retrieve details for a specific plant and equipment service.*

<h3 id="518daa48f2a51e486c7cbcffdc420646-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|serviceID|path|integer|true|A valid service id|
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
  "Notes": "string",
  "Date": "2018-01-19",
  "Hours": 0,
  "Cost": 1.57,
  "NextService": true
}
```

<h3 id="518daa48f2a51e486c7cbcffdc420646-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Plant And Equipment Service details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant And Equipment Service not found.|None|

<h3 id="518daa48f2a51e486c7cbcffdc420646-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Notes|string|true|none|none|
|» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Hours|integer|true|none|none|
|» Cost|number|true|none|none|
|» NextService|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 149944c29ed4e553b8c03cb9b648b19b

<a id="opId149944c29ed4e553b8c03cb9b648b19b"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/services/{serviceID}`

*Delete a plant and equipment service.*

<h3 id="149944c29ed4e553b8c03cb9b648b19b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|serviceID|path|integer|true|A valid service id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="149944c29ed4e553b8c03cb9b648b19b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant And Equipment Service deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant And Equipment Service does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>