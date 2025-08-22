# Accounting Categories

## 54a4b9afc64c4f2f71059087c2f00e49

<a id="opId54a4b9afc64c4f2f71059087c2f00e49"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/accCategories/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/accCategories/`

*List all accounting categories.*

<h3 id="54a4b9afc64c4f2f71059087c2f00e49-parameters">Parameters</h3>

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
    "Name": "Job Reporting"
  }
]
```

<h3 id="54a4b9afc64c4f2f71059087c2f00e49-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all accounting categories.|Inline|

<h3 id="54a4b9afc64c4f2f71059087c2f00e49-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e206a92dc68bf8e5f1a2c88dd150c643

<a id="opIde206a92dc68bf8e5f1a2c88dd150c643"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/accCategories/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Job Reporting",
  "Ref": "string",
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/accCategories/`

*Create a new accounting category.*

> Body parameter

```json
{
  "Name": "Job Reporting",
  "Ref": "string",
  "Archived": true
}
```

<h3 id="e206a92dc68bf8e5f1a2c88dd150c643-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Accounting category object|
|» Name|body|string|true|none|
|» Ref|body|string|false|This will be used to link to your accounting package, and will usually match your package's *Name* field.|
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
  "Name": "Job Reporting",
  "Ref": "string",
  "Archived": true
}
```

<h3 id="e206a92dc68bf8e5f1a2c88dd150c643-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Accounting category created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="e206a92dc68bf8e5f1a2c88dd150c643-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Ref|string|true|none|This will be used to link to your accounting package, and will usually match your package's *Name* field.|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## c747eaedb6611467bf3463daaf58d22f

<a id="opIdc747eaedb6611467bf3463daaf58d22f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}`

*Retrieve details for a specific accounting category.*

<h3 id="c747eaedb6611467bf3463daaf58d22f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|accCategoryID|path|integer|true|A valid acc category id|
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
  "Name": "Job Reporting",
  "Ref": "string",
  "Archived": true
}
```

<h3 id="c747eaedb6611467bf3463daaf58d22f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Accounting category details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Accounting category not found.|None|

<h3 id="c747eaedb6611467bf3463daaf58d22f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Ref|string|true|none|This will be used to link to your accounting package, and will usually match your package's *Name* field.|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0bc0e0ea81db0389b10471c6ef3d1d1e

<a id="opId0bc0e0ea81db0389b10471c6ef3d1d1e"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Job Reporting",
  "Ref": "string",
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}`

*Update a accounting category.*

> Body parameter

```json
{
  "Name": "Job Reporting",
  "Ref": "string",
  "Archived": true
}
```

<h3 id="0bc0e0ea81db0389b10471c6ef3d1d1e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|accCategoryID|path|integer|true|A valid acc category id|
|body|body|object|true|Accounting category object|
|» Name|body|string|false|none|
|» Ref|body|string|false|This will be used to link to your accounting package, and will usually match your package's *Name* field.|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0bc0e0ea81db0389b10471c6ef3d1d1e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Accounting category updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## cd6339812096da85bb7341493330e18d

<a id="opIdcd6339812096da85bb7341493330e18d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/accCategories/{accCategoryID}`

*Delete a accounting category.*

<h3 id="cd6339812096da85bb7341493330e18d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|accCategoryID|path|integer|true|A valid acc category id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="cd6339812096da85bb7341493330e18d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Accounting category deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Accounting category does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>