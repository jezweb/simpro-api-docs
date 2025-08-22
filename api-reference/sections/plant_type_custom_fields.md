# Plant Type Custom Fields

## 2153e9212f31c6828edd7ceced27de07

<a id="opId2153e9212f31c6828edd7ceced27de07"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/`

*List all plant type custom fields.*

<h3 id="2153e9212f31c6828edd7ceced27de07-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
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
    "Type": "List",
    "Order": 0,
    "Locked": true
  }
]
```

<h3 id="2153e9212f31c6828edd7ceced27de07-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all plant type custom fields.|Inline|

<h3 id="2153e9212f31c6828edd7ceced27de07-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|none|
|» Order|integer|true|none|none|
|» Locked|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|

<aside class="success">
This operation does not require authentication
</aside>

## cd332821cc384d879d1f8014d4e8b632

<a id="opIdcd332821cc384d879d1f8014d4e8b632"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "Order": 0,
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/',
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

r = requests.post('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/`

*Create a new plant type custom field.*

> Body parameter

```json
{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "Order": 0,
  "Locked": true
}
```

<h3 id="cd332821cc384d879d1f8014d4e8b632-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|body|body|object|true|Plant type custom field object|
|» Name|body|string|true|none|
|» Type|body|string|true|none|
|» ListItems|body|[string]¦null|false|none|
|» Order|body|integer|false|none|
|» Locked|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|List|
|» Type|Text|
|» Type|Date|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="cd332821cc384d879d1f8014d4e8b632-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Plant type custom field created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="cd332821cc384d879d1f8014d4e8b632-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|none|
|» ListItems|[string]¦null|false|none|none|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» Locked|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|

<aside class="success">
This operation does not require authentication
</aside>

## 2ffa01387b7e658c6462fbeaf391add9

<a id="opId2ffa01387b7e658c6462fbeaf391add9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}`

*Retrieve details for a specific plant type custom field.*

<h3 id="2ffa01387b7e658c6462fbeaf391add9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantTypeCustomFieldID|path|integer|true|A valid plant type custom field id|
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
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="2ffa01387b7e658c6462fbeaf391add9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Plant type custom field details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant type custom field not found.|None|

<h3 id="2ffa01387b7e658c6462fbeaf391add9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|none|
|» ListItems|[string]¦null|false|none|none|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» Locked|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|

<aside class="success">
This operation does not require authentication
</aside>

## 4607bf8e75ded5eb1fb22bdf3193ced8

<a id="opId4607bf8e75ded5eb1fb22bdf3193ced8"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "Order": 0,
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}`

*Update a plant type custom field.*

> Body parameter

```json
{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "Order": 0,
  "Locked": true
}
```

<h3 id="4607bf8e75ded5eb1fb22bdf3193ced8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantTypeCustomFieldID|path|integer|true|A valid plant type custom field id|
|body|body|object|true|Plant type custom field object|
|» Name|body|string|false|none|
|» Type|body|string|false|none|
|» ListItems|body|[string]¦null|false|none|
|» Order|body|integer|false|none|
|» Locked|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|List|
|» Type|Text|
|» Type|Date|

<h3 id="4607bf8e75ded5eb1fb22bdf3193ced8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant type custom field updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 783d6f087b7e68ca603fdeb15af0af91

<a id="opId783d6f087b7e68ca603fdeb15af0af91"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/customFields/{plantTypeCustomFieldID}`

*Delete a plant type custom field.*

<h3 id="783d6f087b7e68ca603fdeb15af0af91-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantTypeCustomFieldID|path|integer|true|A valid plant type custom field id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="783d6f087b7e68ca603fdeb15af0af91-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant type custom field deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant type custom field does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>