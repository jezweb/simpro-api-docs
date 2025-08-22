# Business Groups

Use business groups to group cost centres together. Cost centres can be included in more than one business group. You can then use security groups to allow employees to use only the cost centres in that business group.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Business-Groups.htm">External documentation</a>

## ba0da70e204345ceb5195d916817642e

<a id="opIdba0da70e204345ceb5195d916817642e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/`

*List all business groups.*

<h3 id="ba0da70e204345ceb5195d916817642e-parameters">Parameters</h3>

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

<h3 id="ba0da70e204345ceb5195d916817642e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all business groups.|Inline|

<h3 id="ba0da70e204345ceb5195d916817642e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 9b8eef427a125e8ebe60fc163215f50f

<a id="opId9b8eef427a125e8ebe60fc163215f50f"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "CostCenters": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/`

*Create a new business group.*

> Body parameter

```json
{
  "Name": "string",
  "CostCenters": [
    0
  ]
}
```

<h3 id="9b8eef427a125e8ebe60fc163215f50f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Business group object|
|» Name|body|string|true|none|
|» CostCenters|body|[integer]|false|none|

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
  "CostCenters": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ]
}
```

<h3 id="9b8eef427a125e8ebe60fc163215f50f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Business group created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="9b8eef427a125e8ebe60fc163215f50f-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a08ffdef6492799060d79ca854d44022

<a id="opIda08ffdef6492799060d79ca854d44022"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}`

*Retrieve details for a specific business group.*

<h3 id="a08ffdef6492799060d79ca854d44022-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|businessGroupID|path|integer|true|A valid business group id|
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
  "CostCenters": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ]
}
```

<h3 id="a08ffdef6492799060d79ca854d44022-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Business group details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Business group not found.|None|

<h3 id="a08ffdef6492799060d79ca854d44022-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 130eb6c78bb446bf0806e6abc05b5aad

<a id="opId130eb6c78bb446bf0806e6abc05b5aad"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "CostCenters": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}`

*Update a business group.*

> Body parameter

```json
{
  "Name": "string",
  "CostCenters": [
    0
  ]
}
```

<h3 id="130eb6c78bb446bf0806e6abc05b5aad-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|businessGroupID|path|integer|true|A valid business group id|
|body|body|object|true|Business group object|
|» Name|body|string|false|none|
|» CostCenters|body|[integer]|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="130eb6c78bb446bf0806e6abc05b5aad-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Business group updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## b4a9f7e03bce6e7a7cfc28ab660d3288

<a id="opIdb4a9f7e03bce6e7a7cfc28ab660d3288"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/businessGroups/{businessGroupID}`

*Delete a business group.*

<h3 id="b4a9f7e03bce6e7a7cfc28ab660d3288-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|businessGroupID|path|integer|true|A valid business group id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b4a9f7e03bce6e7a7cfc28ab660d3288-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Business group deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Business group does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>