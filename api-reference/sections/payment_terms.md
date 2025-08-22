# Payment Terms

## a27973d6b7135de96047954b240f5b8d

<a id="opIda27973d6b7135de96047954b240f5b8d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/`

*List all payment terms.*

<h3 id="a27973d6b7135de96047954b240f5b8d-parameters">Parameters</h3>

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
    "PaymentTermID": 12345,
    "PaymentTermName": "string",
    "Days": 0,
    "Type": "Month",
    "IsDefault": true
  }
]
```

<h3 id="a27973d6b7135de96047954b240f5b8d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all payment terms.|Inline|

<h3 id="a27973d6b7135de96047954b240f5b8d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» PaymentTermID|integer|true|none|none|
|» PaymentTermName|string|true|none|none|
|» Days|integer|true|none|none|
|» Type|string|true|none|none|
|» IsDefault|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Month|
|Type|Invoice|

<aside class="success">
This operation does not require authentication
</aside>

## 01a2920801f598ba2c9f85a8482bcb17

<a id="opId01a2920801f598ba2c9f85a8482bcb17"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Days": 0,
  "Type": "Month",
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/`

*Create a new payment term.*

> Body parameter

```json
{
  "Days": 0,
  "Type": "Month",
  "IsDefault": true
}
```

<h3 id="01a2920801f598ba2c9f85a8482bcb17-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Payment term object|
|» Days|body|integer|true|none|
|» Type|body|string|true|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Month|
|» Type|Invoice|

> Example responses

> 201 Response

```json
{
  "PaymentTermID": 12345,
  "PaymentTermName": "string",
  "Days": 0,
  "Type": "Month",
  "IsDefault": true
}
```

<h3 id="01a2920801f598ba2c9f85a8482bcb17-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Payment term created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="01a2920801f598ba2c9f85a8482bcb17-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» PaymentTermID|integer|true|none|none|
|» PaymentTermName|string|true|none|none|
|» Days|integer|true|none|none|
|» Type|string|true|none|none|
|» IsDefault|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Month|
|Type|Invoice|

<aside class="success">
This operation does not require authentication
</aside>

## f69a35dfdf508b3213bfb86ba50fbed3

<a id="opIdf69a35dfdf508b3213bfb86ba50fbed3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}`

*Retrieve details for a specific payment term.*

<h3 id="f69a35dfdf508b3213bfb86ba50fbed3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentTermID|path|integer|true|A valid payment term id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "PaymentTermID": 12345,
  "PaymentTermName": "string",
  "Days": 0,
  "Type": "Month",
  "IsDefault": true
}
```

<h3 id="f69a35dfdf508b3213bfb86ba50fbed3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Payment term details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Payment term not found.|None|

<h3 id="f69a35dfdf508b3213bfb86ba50fbed3-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» PaymentTermID|integer|true|none|none|
|» PaymentTermName|string|true|none|none|
|» Days|integer|true|none|none|
|» Type|string|true|none|none|
|» IsDefault|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Month|
|Type|Invoice|

<aside class="success">
This operation does not require authentication
</aside>

## c3459544f8a85d6e1db100ea081f5e65

<a id="opIdc3459544f8a85d6e1db100ea081f5e65"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Days": 0,
  "Type": "Month",
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}`

*Update a payment term.*

> Body parameter

```json
{
  "Days": 0,
  "Type": "Month",
  "IsDefault": true
}
```

<h3 id="c3459544f8a85d6e1db100ea081f5e65-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentTermID|path|integer|true|A valid payment term id|
|body|body|object|true|Payment term object|
|» Days|body|integer|false|none|
|» Type|body|string|false|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Month|
|» Type|Invoice|

<h3 id="c3459544f8a85d6e1db100ea081f5e65-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Payment term updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 8b1de03053f02c0f977c9a199eb3e827

<a id="opId8b1de03053f02c0f977c9a199eb3e827"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/paymentTerms/{paymentTermID}`

*Delete a payment term.*

<h3 id="8b1de03053f02c0f977c9a199eb3e827-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentTermID|path|integer|true|A valid payment term id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8b1de03053f02c0f977c9a199eb3e827-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Payment term deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Payment term does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>