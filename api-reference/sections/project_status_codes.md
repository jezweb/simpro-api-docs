# Project Status Codes

Leads , quotes, jobs, invoices, and vendor orders have status codes according to their position in your workflow. The system has predefined trigger points, and as you perform certain actions - such as emailing a quote - you pass one of these trigger points, triggering a change in the quote's status code and color.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Status-Codes-and-Automatic-Triggers.htm">External documentation</a>

## 1c4a237b6e4b2ca2d2e82196b6e9c2c3

<a id="opId1c4a237b6e4b2ca2d2e82196b6e9c2c3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/statusCodes/projects/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/statusCodes/projects/`

*List all project status codes.*

<h3 id="1c4a237b6e4b2ca2d2e82196b6e9c2c3-parameters">Parameters</h3>

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
    "Name": "Sales: In-Progress"
  }
]
```

<h3 id="1c4a237b6e4b2ca2d2e82196b6e9c2c3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all project status codes.|Inline|

<h3 id="1c4a237b6e4b2ca2d2e82196b6e9c2c3-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Status name|

<aside class="success">
This operation does not require authentication
</aside>

## 99e0166cb65b6b0e4e717f8cb25587cc

<a id="opId99e0166cb65b6b0e4e717f8cb25587cc"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/statusCodes/projects/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/statusCodes/projects/`

*Create a new project status code.*

> Body parameter

```json
{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="99e0166cb65b6b0e4e717f8cb25587cc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Project status code object|
|» Name|body|string|true|Status name|
|» Color|body|string¦null|false|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="99e0166cb65b6b0e4e717f8cb25587cc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Project status code created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="99e0166cb65b6b0e4e717f8cb25587cc-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Status name|
|» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 903c1a95e46ac760b96bb2007d0815e3

<a id="opId903c1a95e46ac760b96bb2007d0815e3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}`

*Retrieve details for a specific project status code.*

<h3 id="903c1a95e46ac760b96bb2007d0815e3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|statusCodeID|path|integer|true|A valid status code id|
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
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="903c1a95e46ac760b96bb2007d0815e3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Project status code details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project status code not found.|None|

<h3 id="903c1a95e46ac760b96bb2007d0815e3-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Status name|
|» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## fca82f56071a876a50ee91335a7a3ead

<a id="opIdfca82f56071a876a50ee91335a7a3ead"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}`

*Update a project status code.*

> Body parameter

```json
{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="fca82f56071a876a50ee91335a7a3ead-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|statusCodeID|path|integer|true|A valid status code id|
|body|body|object|true|Project status code object|
|» Name|body|string|false|Status name|
|» Color|body|string¦null|false|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="fca82f56071a876a50ee91335a7a3ead-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Project status code updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 838267c378e5899d55626cb1f394b287

<a id="opId838267c378e5899d55626cb1f394b287"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/statusCodes/projects/{statusCodeID}`

*Delete a project status code.*

<h3 id="838267c378e5899d55626cb1f394b287-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|statusCodeID|path|integer|true|A valid status code id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="838267c378e5899d55626cb1f394b287-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Project status code deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project status code does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>