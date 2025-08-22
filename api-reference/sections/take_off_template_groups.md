# Take Off Template Groups

## e6095ab90a18552047cb3556ee0ecb0c

<a id="opIde6095ab90a18552047cb3556ee0ecb0c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplateGroups/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplateGroups/`

*List all take off template groups.*

<h3 id="e6095ab90a18552047cb3556ee0ecb0c-parameters">Parameters</h3>

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
    "ID": 0,
    "Name": "string"
  }
]
```

<h3 id="e6095ab90a18552047cb3556ee0ecb0c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all take off template groups.|Inline|

<h3 id="e6095ab90a18552047cb3556ee0ecb0c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## d0201815be7f87f3d62b6436160b5d24

<a id="opIdd0201815be7f87f3d62b6436160b5d24"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplateGroups/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/',
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

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplateGroups/`

*Create a new take off template group.*

> Body parameter

```json
{
  "Name": "string"
}
```

<h3 id="d0201815be7f87f3d62b6436160b5d24-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Take Off Template Group object|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="d0201815be7f87f3d62b6436160b5d24-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take Off Template Group created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="d0201815be7f87f3d62b6436160b5d24-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## b728f08be2865d8954f7591a0201307c

<a id="opIdb728f08be2865d8954f7591a0201307c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}`

*Retrieve details for a specific take off template group.*

<h3 id="b728f08be2865d8954f7591a0201307c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|groupID|path|integer|true|A valid group id|
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
  "Name": "string",
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="b728f08be2865d8954f7591a0201307c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Take Off Template Group details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template Group not found.|None|

<h3 id="b728f08be2865d8954f7591a0201307c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## f5c097414b55bdf304f540fc14e7e397

<a id="opIdf5c097414b55bdf304f540fc14e7e397"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}`

*Update a take off template group.*

> Body parameter

```json
{
  "Name": "string",
  "DisplayOrder": 0
}
```

<h3 id="f5c097414b55bdf304f540fc14e7e397-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|groupID|path|integer|true|A valid group id|
|body|body|object|true|Take Off Template Group object|
|» Name|body|string|false|none|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f5c097414b55bdf304f540fc14e7e397-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template Group updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 92c0e486f65689eaabd8d2a582a4128a

<a id="opId92c0e486f65689eaabd8d2a582a4128a"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/takeOffTemplateGroups/{groupID}`

*Delete a take off template group.*

<h3 id="92c0e486f65689eaabd8d2a582a4128a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|groupID|path|integer|true|A valid group id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="92c0e486f65689eaabd8d2a582a4128a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template Group deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template Group does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>