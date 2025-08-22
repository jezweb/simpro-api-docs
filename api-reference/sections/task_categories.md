# Task Categories

Task categories can be used to easily group, filter and bulk-manage tasks. Create task categories to assign them to tasks.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Task-Templates-and-Categories.htm">External documentation</a>

## 09f10557405e1d6cf1d9de0f90932ee2

<a id="opId09f10557405e1d6cf1d9de0f90932ee2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/tasks/categories/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/tasks/categories/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/tasks/categories/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/tasks/categories/`

*List all task categories.*

<h3 id="09f10557405e1d6cf1d9de0f90932ee2-parameters">Parameters</h3>

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

<h3 id="09f10557405e1d6cf1d9de0f90932ee2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all task categories.|Inline|

<h3 id="09f10557405e1d6cf1d9de0f90932ee2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## ec56683be6648b7a112cd9ebf829fa21

<a id="opIdec56683be6648b7a112cd9ebf829fa21"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/tasks/categories/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/tasks/categories/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/tasks/categories/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/tasks/categories/`

*Create a new task category.*

> Body parameter

```json
{
  "Name": "string",
  "Archived": true
}
```

<h3 id="ec56683be6648b7a112cd9ebf829fa21-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Task category object|
|» Name|body|string|true|none|
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
  "Name": "string",
  "Archived": true
}
```

<h3 id="ec56683be6648b7a112cd9ebf829fa21-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Task category created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="ec56683be6648b7a112cd9ebf829fa21-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a03a39a06818dcad5f34ea665e244909

<a id="opIda03a39a06818dcad5f34ea665e244909"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}`

*Retrieve details for a specific task category.*

<h3 id="a03a39a06818dcad5f34ea665e244909-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|taskCategoryID|path|integer|true|A valid task category id|
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
  "Archived": true
}
```

<h3 id="a03a39a06818dcad5f34ea665e244909-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Task category details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Task category not found.|None|

<h3 id="a03a39a06818dcad5f34ea665e244909-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 67dc16a5cb775f0c66b44bf34f71427e

<a id="opId67dc16a5cb775f0c66b44bf34f71427e"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}`

*Update a task category.*

> Body parameter

```json
{
  "Name": "string",
  "Archived": true
}
```

<h3 id="67dc16a5cb775f0c66b44bf34f71427e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|taskCategoryID|path|integer|true|A valid task category id|
|body|body|object|true|Task category object|
|» Name|body|string|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="67dc16a5cb775f0c66b44bf34f71427e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Task category updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2ffdb52665f3e83e3714c362b9fc92c1

<a id="opId2ffdb52665f3e83e3714c362b9fc92c1"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/tasks/categories/{taskCategoryID}`

*Delete a task category.*

<h3 id="2ffdb52665f3e83e3714c362b9fc92c1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|taskCategoryID|path|integer|true|A valid task category id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2ffdb52665f3e83e3714c362b9fc92c1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Task category deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Task category does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>