# Customer Groups

Use customer groups to categorise your customers by what type of customer they are, such as domestic, industrial, commercial, etc. This is useful for searching and reporting on specific customers.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Customer-Groups.htm">External documentation</a>

## 6b1bee2598f07649782ceba97a4b252a

<a id="opId6b1bee2598f07649782ceba97a4b252a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customerGroups/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customerGroups/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customerGroups/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customerGroups/`

*List all customer groups.*

<h3 id="6b1bee2598f07649782ceba97a4b252a-parameters">Parameters</h3>

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

<h3 id="6b1bee2598f07649782ceba97a4b252a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer groups.|Inline|

<h3 id="6b1bee2598f07649782ceba97a4b252a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 6f1ed8e18dacb913b89a6a7985abb9d9

<a id="opId6f1ed8e18dacb913b89a6a7985abb9d9"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/customerGroups/ \
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

fetch('/api/v1.0/companies/{companyID}/setup/customerGroups/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/customerGroups/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/customerGroups/`

*Create a new customer group.*

> Body parameter

```json
{
  "Name": "string"
}
```

<h3 id="6f1ed8e18dacb913b89a6a7985abb9d9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Customer group object|
|» Name|body|string|true|none|

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

<h3 id="6f1ed8e18dacb913b89a6a7985abb9d9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer group created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="6f1ed8e18dacb913b89a6a7985abb9d9-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## accfaf71041ddaea1a52af4c96ca490d

<a id="opIdaccfaf71041ddaea1a52af4c96ca490d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}`

*Retrieve details for a specific customer group.*

<h3 id="accfaf71041ddaea1a52af4c96ca490d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerGroupID|path|integer|true|A valid customer group id|
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

<h3 id="accfaf71041ddaea1a52af4c96ca490d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer group details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer group not found.|None|

<h3 id="accfaf71041ddaea1a52af4c96ca490d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## f05701798d5ae28a7a6ef7a2047b6c04

<a id="opIdf05701798d5ae28a7a6ef7a2047b6c04"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}`

*Update a customer group.*

> Body parameter

```json
{
  "Name": "string"
}
```

<h3 id="f05701798d5ae28a7a6ef7a2047b6c04-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerGroupID|path|integer|true|A valid customer group id|
|body|body|object|true|Customer group object|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f05701798d5ae28a7a6ef7a2047b6c04-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer group updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 59d4ab97a101f0b446071104da88f718

<a id="opId59d4ab97a101f0b446071104da88f718"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/customerGroups/{customerGroupID}`

*Delete a customer group.*

<h3 id="59d4ab97a101f0b446071104da88f718-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerGroupID|path|integer|true|A valid customer group id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="59d4ab97a101f0b446071104da88f718-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer group deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer group does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>