# Vendor Order Status Codes

Leads , quotes, jobs, invoices, and vendor orders have status codes according to their position in your workflow. The system has predefined trigger points, and as you perform certain actions - such as emailing a quote - you pass one of these trigger points, triggering a change in the quote's status code and color.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Status-Codes-and-Automatic-Triggers.htm">External documentation</a>

## 6ee212fb1a7455252ff11510ff1812b9

<a id="opId6ee212fb1a7455252ff11510ff1812b9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/`

*List all vendor order status codes.*

<h3 id="6ee212fb1a7455252ff11510ff1812b9-parameters">Parameters</h3>

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
    "Name": "Sales: In-Progress"
  }
]
```

<h3 id="6ee212fb1a7455252ff11510ff1812b9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor order status codes.|Inline|

<h3 id="6ee212fb1a7455252ff11510ff1812b9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Status name|

<aside class="success">
This operation does not require authentication
</aside>

## 0c3763714d2d300e2ef42535098d4845

<a id="opId0c3763714d2d300e2ef42535098d4845"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/`

*Create a new vendor order status code.*

> Body parameter

```json
{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="0c3763714d2d300e2ef42535098d4845-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Vendor order status code object|
|» Name|body|string|true|Status name|
|» Color|body|string¦null|false|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="0c3763714d2d300e2ef42535098d4845-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor order status code created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="0c3763714d2d300e2ef42535098d4845-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Status name|
|» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 41d04b84219e358e0405f33531980f02

<a id="opId41d04b84219e358e0405f33531980f02"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}`

*Retrieve details for a specific vendor order status code.*

<h3 id="41d04b84219e358e0405f33531980f02-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|statusCodeID|path|integer|true|A valid status code id|
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
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="41d04b84219e358e0405f33531980f02-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor order status code details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order status code not found.|None|

<h3 id="41d04b84219e358e0405f33531980f02-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Status name|
|» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 39d61db10701c4e52ca492e454f7da41

<a id="opId39d61db10701c4e52ca492e454f7da41"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}`

*Update a vendor order status code.*

> Body parameter

```json
{
  "Name": "Sales: In-Progress",
  "Color": "#0000FF",
  "Priority": 0
}
```

<h3 id="39d61db10701c4e52ca492e454f7da41-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|statusCodeID|path|integer|true|A valid status code id|
|body|body|object|true|Vendor order status code object|
|» Name|body|string|false|Status name|
|» Color|body|string¦null|false|Color code in hex decimal format eg. #0000FF or #00F|
|» Priority|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="39d61db10701c4e52ca492e454f7da41-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order status code updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e0f1cf80ffa074b2ef9519a4116fe9d1

<a id="opIde0f1cf80ffa074b2ef9519a4116fe9d1"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/statusCodes/vendorOrders/{statusCodeID}`

*Delete a vendor order status code.*

<h3 id="e0f1cf80ffa074b2ef9519a4116fe9d1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|statusCodeID|path|integer|true|A valid status code id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e0f1cf80ffa074b2ef9519a4116fe9d1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order status code deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order status code does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>