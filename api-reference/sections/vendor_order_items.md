# Vendor Order Items

Manage catalog order items.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 011e5e91d16d17ec4386a10bc761a8a3

<a id="opId011e5e91d16d17ec4386a10bc761a8a3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/`

*List all vendor order items.*

<h3 id="011e5e91d16d17ec4386a10bc761a8a3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
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
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "DueDate": "2021-04-22",
    "Notes": "string",
    "Price": 1.57,
    "DisplayOrder": 0
  }
]
```

<h3 id="011e5e91d16d17ec4386a10bc761a8a3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor order items.|Inline|

<h3 id="011e5e91d16d17ec4386a10bc761a8a3-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» DueDate|string(date)|true|none|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Notes|string|true|none|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Price|number|true|none|Price cannot be negative|
|» DisplayOrder|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 2e1507bd14bbc3e40d309c4a5920696a

<a id="opId2e1507bd14bbc3e40d309c4a5920696a"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Catalog": 0,
  "DueDate": "2021-04-22",
  "Notes": "string",
  "Price": 1.57,
  "Allocations": [
    {
      "DueDate": "2021-04-22",
      "Notes": "string",
      "StorageDevice": 0,
      "AssignedTo": 0,
      "Quantity": 1.57
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/`

*Create a new vendor order item.*

> Body parameter

```json
{
  "Catalog": 0,
  "DueDate": "2021-04-22",
  "Notes": "string",
  "Price": 1.57,
  "Allocations": [
    {
      "DueDate": "2021-04-22",
      "Notes": "string",
      "StorageDevice": 0,
      "AssignedTo": 0,
      "Quantity": 1.57
    }
  ]
}
```

<h3 id="2e1507bd14bbc3e40d309c4a5920696a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|body|body|object|true|Vendor order item object|
|» Catalog|body|integer|true|ID of a catalog item|
|» DueDate|body|string(date)|false|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Notes|body|string|false|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Price|body|number|false|Price cannot be negative|
|» Allocations|body|[object]|true|none|
|»» DueDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» Notes|body|string|false|none|
|»» StorageDevice|body|integer|false|ID of a storage device|
|»» AssignedTo|body|integer|false|ID of a job cost center|
|»» Quantity|body|number|true|Quantity is rounded to two decimal places|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "DueDate": "2021-04-22",
  "Notes": "string",
  "Price": 1.57,
  "DisplayOrder": 0,
  "Allocations": [
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
}
```

<h3 id="2e1507bd14bbc3e40d309c4a5920696a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor order item created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="2e1507bd14bbc3e40d309c4a5920696a-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» DueDate|string(date)|true|none|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Notes|string|true|none|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Price|number|true|none|Price cannot be negative|
|» DisplayOrder|integer|true|none|none|
|» Allocations|[object]|true|none|none|
|»» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» Notes|string|true|none|none|
|»» StorageDevice|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» AssignedTo|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» CostCenter|object|false|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Name|string|false|none|none|
|»»» Job|integer|false|none|none|
|»»» Section|integer|false|none|none|
|»» Quantity|object|true|none|none|
|»»» Received|number|true|none|none|
|»»» Total|number|true|none|none|
|»» Total|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## b98f4109833e94df1fcfe9f7f145202b

<a id="opIdb98f4109833e94df1fcfe9f7f145202b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}`

*Retrieve details for a specific vendor order item.*

<h3 id="b98f4109833e94df1fcfe9f7f145202b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "DueDate": "2021-04-22",
  "Notes": "string",
  "Price": 1.57,
  "DisplayOrder": 0,
  "Allocations": [
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
}
```

<h3 id="b98f4109833e94df1fcfe9f7f145202b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor order item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order item not found.|None|

<h3 id="b98f4109833e94df1fcfe9f7f145202b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» DueDate|string(date)|true|none|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Notes|string|true|none|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Price|number|true|none|Price cannot be negative|
|» DisplayOrder|integer|true|none|none|
|» Allocations|[object]|true|none|none|
|»» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» Notes|string|true|none|none|
|»» StorageDevice|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» AssignedTo|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» CostCenter|object|false|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Name|string|false|none|none|
|»»» Job|integer|false|none|none|
|»»» Section|integer|false|none|none|
|»» Quantity|object|true|none|none|
|»»» Received|number|true|none|none|
|»»» Total|number|true|none|none|
|»» Total|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a5677a4b5368ac71ab8dd9bb2f3f1245

<a id="opIda5677a4b5368ac71ab8dd9bb2f3f1245"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DueDate": "2021-04-22",
  "Notes": "string",
  "Price": 1.57
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}`

*Update a vendor order item.*

> Body parameter

```json
{
  "DueDate": "2021-04-22",
  "Notes": "string",
  "Price": 1.57
}
```

<h3 id="a5677a4b5368ac71ab8dd9bb2f3f1245-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|
|body|body|object|true|Vendor order item object|
|» DueDate|body|string(date)|false|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Notes|body|string|false|Deprecated:: Please use <a href="https://developer.simprogroup.com/apidoc/?page=1ce5d9607216ee37fb61fe793d38e2c3#tag/Vendor-Order-Item-Allocations">item allocations</a> endpoint to read and modify this field.|
|» Price|body|number|false|Price cannot be negative|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a5677a4b5368ac71ab8dd9bb2f3f1245-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 645c27ae4b5a3e97f26558e9f13d6dde

<a id="opId645c27ae4b5a3e97f26558e9f13d6dde"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/catalogs/{vendorOrderItemID}`

*Delete a vendor order item.*

<h3 id="645c27ae4b5a3e97f26558e9f13d6dde-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorOrderItemID|path|integer|true|A valid vendor order item id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="645c27ae4b5a3e97f26558e9f13d6dde-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order item deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order item does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>