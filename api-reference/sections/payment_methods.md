# Payment Methods

Payment methods are the various ways in which your customers pay for the goods and services you provide, such as credit cards, cash, direct deposits, cheques, and even vouchers. A number of default payment methods are preset in Simpro and can be edited or deleted as required.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Payment-Methods.htm">External documentation</a>

## 51cee69f343fcafa20cd5cb1e8432763

<a id="opId51cee69f343fcafa20cd5cb1e8432763"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/`

*List all payment methods.*

<h3 id="51cee69f343fcafa20cd5cb1e8432763-parameters">Parameters</h3>

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

<h3 id="51cee69f343fcafa20cd5cb1e8432763-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all payment methods.|Inline|

<h3 id="51cee69f343fcafa20cd5cb1e8432763-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0430c693f8ff4376831cd54b1177178d

<a id="opId0430c693f8ff4376831cd54b1177178d"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "AccountNo": "string",
  "Type": "Bank",
  "FinanceCharge": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/`

*Create a new payment method.*

> Body parameter

```json
{
  "Name": "string",
  "AccountNo": "string",
  "Type": "Bank",
  "FinanceCharge": 0
}
```

<h3 id="0430c693f8ff4376831cd54b1177178d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Payment method object|
|» Name|body|string|true|none|
|» AccountNo|body|string|false|none|
|» Type|body|string|true|none|
|» FinanceCharge|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Bank|
|» Type|Card|
|» Type|Other|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "AccountNo": "string",
  "Type": "Bank",
  "FinanceCharge": 0
}
```

<h3 id="0430c693f8ff4376831cd54b1177178d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Payment method created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="0430c693f8ff4376831cd54b1177178d-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» AccountNo|string|true|none|none|
|» Type|string|true|none|none|
|» FinanceCharge|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Bank|
|Type|Card|
|Type|Other|

<aside class="success">
This operation does not require authentication
</aside>

## 67a27f14d73a5b2f3c835c6b1505685a

<a id="opId67a27f14d73a5b2f3c835c6b1505685a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}`

*Retrieve details for a specific payment method.*

<h3 id="67a27f14d73a5b2f3c835c6b1505685a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentMethodID|path|integer|true|A valid payment method id|
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
  "AccountNo": "string",
  "Type": "Bank",
  "FinanceCharge": 0
}
```

<h3 id="67a27f14d73a5b2f3c835c6b1505685a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Payment method details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Payment method not found.|None|

<h3 id="67a27f14d73a5b2f3c835c6b1505685a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» AccountNo|string|true|none|none|
|» Type|string|true|none|none|
|» FinanceCharge|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Bank|
|Type|Card|
|Type|Other|

<aside class="success">
This operation does not require authentication
</aside>

## 8b5d275d1548e4a2fb8592ba9bfa58b4

<a id="opId8b5d275d1548e4a2fb8592ba9bfa58b4"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "AccountNo": "string",
  "Type": "Bank",
  "FinanceCharge": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}`

*Update a payment method.*

> Body parameter

```json
{
  "Name": "string",
  "AccountNo": "string",
  "Type": "Bank",
  "FinanceCharge": 0
}
```

<h3 id="8b5d275d1548e4a2fb8592ba9bfa58b4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentMethodID|path|integer|true|A valid payment method id|
|body|body|object|true|Payment method object|
|» Name|body|string|false|none|
|» AccountNo|body|string|false|none|
|» Type|body|string|false|none|
|» FinanceCharge|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Bank|
|» Type|Card|
|» Type|Other|

<h3 id="8b5d275d1548e4a2fb8592ba9bfa58b4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Payment method updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## f7fbb29b79c413d534289cabe850bfa8

<a id="opIdf7fbb29b79c413d534289cabe850bfa8"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/paymentMethods/{paymentMethodID}`

*Delete a payment method.*

<h3 id="f7fbb29b79c413d534289cabe850bfa8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentMethodID|path|integer|true|A valid payment method id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f7fbb29b79c413d534289cabe850bfa8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Payment method deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Payment method does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>