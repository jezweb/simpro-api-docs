# Prebuild Groups

## d4773633afd3da86a9c0d16b45b4b6fb

<a id="opIdd4773633afd3da86a9c0d16b45b4b6fb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuildGroups/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuildGroups/',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuildGroups/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuildGroups/`

*List all prebuild groups.*

<h3 id="d4773633afd3da86a9c0d16b45b4b6fb-parameters">Parameters</h3>

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
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  }
]
```

<h3 id="d4773633afd3da86a9c0d16b45b4b6fb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all prebuild groups.|Inline|

<h3 id="d4773633afd3da86a9c0d16b45b4b6fb-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» ParentGroup|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## f4d3f77cd1472bd7eb5f34b748069148

<a id="opIdf4d3f77cd1472bd7eb5f34b748069148"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/prebuildGroups/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "ParentGroup": 0,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuildGroups/',
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

r = requests.post('/api/v1.0/companies/{companyID}/prebuildGroups/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/prebuildGroups/`

*Create a new prebuild group.*

> Body parameter

```json
{
  "Name": "string",
  "ParentGroup": 0,
  "DisplayOrder": 0
}
```

<h3 id="f4d3f77cd1472bd7eb5f34b748069148-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Prebuild group object|
|» Name|body|string|true|none|
|» ParentGroup|body|integer|false|ID of a prebuild group|
|» DisplayOrder|body|integer|false|none|

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
  "ParentGroup": {
    "ID": 0,
    "Name": "string"
  },
  "DisplayOrder": 0,
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "IsThirdPartyGroup": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true
}
```

<h3 id="f4d3f77cd1472bd7eb5f34b748069148-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Prebuild group created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="f4d3f77cd1472bd7eb5f34b748069148-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» ParentGroup|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» DisplayOrder|integer|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» IsThirdPartyGroup|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0314b6055dabab512794e155af1c25a7

<a id="opId0314b6055dabab512794e155af1c25a7"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuildGroups/{groupID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuildGroups/{groupID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuildGroups/{groupID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuildGroups/{groupID}`

*Retrieve details for a specific prebuild group.*

<h3 id="0314b6055dabab512794e155af1c25a7-parameters">Parameters</h3>

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
  "ParentGroup": {
    "ID": 0,
    "Name": "string"
  },
  "DisplayOrder": 0,
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "IsThirdPartyGroup": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true
}
```

<h3 id="0314b6055dabab512794e155af1c25a7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Prebuild group details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Prebuild group not found.|None|

<h3 id="0314b6055dabab512794e155af1c25a7-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» ParentGroup|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» DisplayOrder|integer|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» IsThirdPartyGroup|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 8eec5a163ef56c0f44bd73b10a98eb5b

<a id="opId8eec5a163ef56c0f44bd73b10a98eb5b"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/prebuildGroups/{groupID} \
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

fetch('/api/v1.0/companies/{companyID}/prebuildGroups/{groupID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/prebuildGroups/{groupID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/prebuildGroups/{groupID}`

*Update a prebuild group.*

> Body parameter

```json
{
  "Name": "string",
  "DisplayOrder": 0
}
```

<h3 id="8eec5a163ef56c0f44bd73b10a98eb5b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|groupID|path|integer|true|A valid group id|
|body|body|object|true|Prebuild group object|
|» Name|body|string|false|none|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8eec5a163ef56c0f44bd73b10a98eb5b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Prebuild group updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## f649fae4f604001c383a319679d224fc

<a id="opIdf649fae4f604001c383a319679d224fc"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/prebuildGroups/{groupID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/prebuildGroups/{groupID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/prebuildGroups/{groupID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/prebuildGroups/{groupID}`

*Delete a prebuild group.*

<h3 id="f649fae4f604001c383a319679d224fc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|groupID|path|integer|true|A valid group id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f649fae4f604001c383a319679d224fc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Prebuild group deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Prebuild group does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>