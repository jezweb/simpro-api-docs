# Units Of Measurement

Use units of measurement to manage quantities of items.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Units-of-Measurement.htm">External documentation</a>

## d48d761979cd43b56191a90a97661453

<a id="opIdd48d761979cd43b56191a90a97661453"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/materials/uoms/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/uoms/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/materials/uoms/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/materials/uoms/`

*List all units of measurement.*

<h3 id="d48d761979cd43b56191a90a97661453-parameters">Parameters</h3>

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
    "Name": "kg"
  }
]
```

<h3 id="d48d761979cd43b56191a90a97661453-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all units of measurement.|Inline|

<h3 id="d48d761979cd43b56191a90a97661453-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 45d2198af2d0d3a1d642fd243ee87d1a

<a id="opId45d2198af2d0d3a1d642fd243ee87d1a"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/materials/uoms/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "kg",
  "WholeNoOnly": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/uoms/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/materials/uoms/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/materials/uoms/`

*Create a new unit of measurement.*

> Body parameter

```json
{
  "Name": "kg",
  "WholeNoOnly": true
}
```

<h3 id="45d2198af2d0d3a1d642fd243ee87d1a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Unit of measurement object|
|» Name|body|string|true|none|
|» WholeNoOnly|body|boolean|false|Set this to true to prevent this item from being allocated in fractions of a unit, for example, 1.5 units|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "kg",
  "WholeNoOnly": true
}
```

<h3 id="45d2198af2d0d3a1d642fd243ee87d1a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Unit of measurement created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="45d2198af2d0d3a1d642fd243ee87d1a-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» WholeNoOnly|boolean|true|none|Set this to true to prevent this item from being allocated in fractions of a unit, for example, 1.5 units|

<aside class="success">
This operation does not require authentication
</aside>

## 2358ea38002c4ff5db9f4f4b521b2707

<a id="opId2358ea38002c4ff5db9f4f4b521b2707"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}`

*Retrieve details for a specific unit of measurement.*

<h3 id="2358ea38002c4ff5db9f4f4b521b2707-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|uomID|path|integer|true|A valid uom id|
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
  "Name": "kg",
  "WholeNoOnly": true
}
```

<h3 id="2358ea38002c4ff5db9f4f4b521b2707-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Unit of measurement details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Unit of measurement not found.|None|

<h3 id="2358ea38002c4ff5db9f4f4b521b2707-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» WholeNoOnly|boolean|true|none|Set this to true to prevent this item from being allocated in fractions of a unit, for example, 1.5 units|

<aside class="success">
This operation does not require authentication
</aside>

## 64f6a1df95a47f8d0ee5d0efd6555278

<a id="opId64f6a1df95a47f8d0ee5d0efd6555278"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "kg",
  "WholeNoOnly": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}`

*Update a unit of measurement.*

> Body parameter

```json
{
  "Name": "kg",
  "WholeNoOnly": true
}
```

<h3 id="64f6a1df95a47f8d0ee5d0efd6555278-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|uomID|path|integer|true|A valid uom id|
|body|body|object|true|Unit of measurement object|
|» Name|body|string|false|none|
|» WholeNoOnly|body|boolean|false|Set this to true to prevent this item from being allocated in fractions of a unit, for example, 1.5 units|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="64f6a1df95a47f8d0ee5d0efd6555278-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Unit of measurement updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## a563dec67f393038dfd9017296f72814

<a id="opIda563dec67f393038dfd9017296f72814"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/materials/uoms/{uomID}`

*Delete a unit of measurement.*

<h3 id="a563dec67f393038dfd9017296f72814-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|uomID|path|integer|true|A valid uom id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a563dec67f393038dfd9017296f72814-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Unit of measurement deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Unit of measurement does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>