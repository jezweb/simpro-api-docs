# Customer Tags

Tags are labels that can be applied to projects (leads, quotes and jobs) and customers. You can add as many tags to a project or customer as you like and the tags you've created are available to filter in most reports.

Customer tags are added to customer cards. You can use these to keep track of any customers with special needs, how they were recommended to your business, if they have are subscribed to your newsletter, etc.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Tags.htm#Create">External documentation</a>

## 4279f47c362920f200649f34a5964c4c

<a id="opId4279f47c362920f200649f34a5964c4c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/tags/customers/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/tags/customers/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/tags/customers/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/tags/customers/`

*List all customer tags.*

<h3 id="4279f47c362920f200649f34a5964c4c-parameters">Parameters</h3>

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

<h3 id="4279f47c362920f200649f34a5964c4c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer tags.|Inline|

<h3 id="4279f47c362920f200649f34a5964c4c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 61d3c4ea62dd40c6efb1b213da1e0419

<a id="opId61d3c4ea62dd40c6efb1b213da1e0419"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/tags/customers/ \
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

fetch('/api/v1.0/companies/{companyID}/setup/tags/customers/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/tags/customers/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/tags/customers/`

*Create a new customer tag.*

> Body parameter

```json
{
  "Name": "string",
  "Archived": true
}
```

<h3 id="61d3c4ea62dd40c6efb1b213da1e0419-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Customer tag object|
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

<h3 id="61d3c4ea62dd40c6efb1b213da1e0419-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer tag created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="61d3c4ea62dd40c6efb1b213da1e0419-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 8a249fa52694953b5c860371162e3c17

<a id="opId8a249fa52694953b5c860371162e3c17"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}`

*Retrieve details for a specific customer tag.*

<h3 id="8a249fa52694953b5c860371162e3c17-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerTagID|path|integer|true|A valid customer tag id|
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

<h3 id="8a249fa52694953b5c860371162e3c17-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer tag details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer tag not found.|None|

<h3 id="8a249fa52694953b5c860371162e3c17-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e8e4814e29c6c2ae868b07d82f38743c

<a id="opIde8e4814e29c6c2ae868b07d82f38743c"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID} \
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

fetch('/api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}`

*Update a customer tag.*

> Body parameter

```json
{
  "Name": "string",
  "Archived": true
}
```

<h3 id="e8e4814e29c6c2ae868b07d82f38743c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerTagID|path|integer|true|A valid customer tag id|
|body|body|object|true|Customer tag object|
|» Name|body|string|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e8e4814e29c6c2ae868b07d82f38743c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer tag updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 8394c2de9db06eacd4bdaea43eb0779b

<a id="opId8394c2de9db06eacd4bdaea43eb0779b"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/tags/customers/{customerTagID}`

*Delete a customer tag.*

<h3 id="8394c2de9db06eacd4bdaea43eb0779b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerTagID|path|integer|true|A valid customer tag id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8394c2de9db06eacd4bdaea43eb0779b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer tag deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer tag does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>