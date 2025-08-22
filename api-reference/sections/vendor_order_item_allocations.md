# Vendor Order Item Allocations

Manage catalog order item allocations.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 2f93943b8a49a7049b3a8f3b1e10cc9d

<a id="opId2f93943b8a49a7049b3a8f3b1e10cc9d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/`

*List all vendor order item allocations.*

<h3 id="2f93943b8a49a7049b3a8f3b1e10cc9d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

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
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "AssignedTo": {
      "ID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "Name": "string",
      "Job": 0,
      "Section": 0
    },
    "Quantity": {
      "Received": 1.57,
      "Total": 1.57
    },
    "Total": 1.57
  }
]
```

<h3 id="2f93943b8a49a7049b3a8f3b1e10cc9d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor order item allocations.|Inline|

<h3 id="2f93943b8a49a7049b3a8f3b1e10cc9d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|string|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssignedTo|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» CostCenter|object|false|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Name|string|false|none|none|
|»» Job|integer|false|none|none|
|»» Section|integer|false|none|none|
|» Quantity|object|true|none|none|
|»» Received|number|true|none|none|
|»» Total|number|true|none|none|
|» Total|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## cf6b6c1aa7dd16199cf3da2622778c94

<a id="opIdcf6b6c1aa7dd16199cf3da2622778c94"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": 0,
    "AssignedTo": 0,
    "Quantity": 1.57
  }
]';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/`

*Update multiple vendor order item allocations.*

> Body parameter

```json
[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": 0,
    "AssignedTo": 0,
    "Quantity": 1.57
  }
]
```

<h3 id="cf6b6c1aa7dd16199cf3da2622778c94-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|
|body|body|array[object]|true|Array of vendor order item allocations|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="cf6b6c1aa7dd16199cf3da2622778c94-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor order item allocations updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## ae3614f000ecc305ecd726926a9776fd

<a id="opIdae3614f000ecc305ecd726926a9776fd"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": 0,
    "AssignedTo": 0,
    "Quantity": 1.57
  }
]';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/',
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
  'Content-Type': 'application/json'
}

r = requests.post('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/`

*Create multiple new vendor order item allocations.*

> Body parameter

```json
[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": 0,
    "AssignedTo": 0,
    "Quantity": 1.57
  }
]
```

<h3 id="ae3614f000ecc305ecd726926a9776fd-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|
|body|body|array[object]|true|Array of vendor order item allocations|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ae3614f000ecc305ecd726926a9776fd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor order item allocations created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e0c78f9e0f2f27292ca1d61b1ccd766a

<a id="opIde0c78f9e0f2f27292ca1d61b1ccd766a"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": 0,
    "AssignedTo": 0,
    "Quantity": 1.57
  }
]';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/',
{
  method: 'PUT',
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

r = requests.put('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/', headers = headers)

print(r.json())

```

`PUT /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}/allocations/`

*Replace vendor order item allocations.*

> Body parameter

```json
[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": 0,
    "AssignedTo": 0,
    "Quantity": 1.57
  }
]
```

<h3 id="e0c78f9e0f2f27292ca1d61b1ccd766a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|
|body|body|array[object]|true|Array of vendor order item allocations|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
[
  {
    "DueDate": "2021-04-22",
    "Notes": "string",
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "AssignedTo": {
      "ID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "Name": "string",
      "Job": 0,
      "Section": 0
    },
    "Quantity": {
      "Received": 1.57,
      "Total": 1.57
    },
    "Total": 1.57
  }
]
```

<h3 id="e0c78f9e0f2f27292ca1d61b1ccd766a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor order item allocations replaced successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="e0c78f9e0f2f27292ca1d61b1ccd766a-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|string|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssignedTo|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» CostCenter|object|false|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Name|string|false|none|none|
|»» Job|integer|false|none|none|
|»» Section|integer|false|none|none|
|» Quantity|object|true|none|none|
|»» Received|number|true|none|none|
|»» Total|number|true|none|none|
|» Total|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>