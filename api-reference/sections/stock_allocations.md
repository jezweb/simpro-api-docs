# Stock Allocations

Get detailed data on stock allocations.

## 5861373a190a8db42dad35f2cfef72e9

<a id="opId5861373a190a8db42dad35f2cfef72e9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/stockAllocations/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockAllocations/',
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

r = requests.get('/api/v1.0/companies/{companyID}/stockAllocations/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/stockAllocations/`

*List all stock allocations.*

<h3 id="5861373a190a8db42dad35f2cfef72e9-parameters">Parameters</h3>

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
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "AllocationPrice": 1.57,
    "Quantity": 0,
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "Source": {
      "ID": 0,
      "Type": "Receipt"
    },
    "Allocation": {
      "ID": 0,
      "Type": "Cost Centre"
    },
    "DateAllocated": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="5861373a190a8db42dad35f2cfef72e9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all stock allocations.|Inline|

<h3 id="5861373a190a8db42dad35f2cfef72e9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» AllocationPrice|number|true|none|none|
|» Quantity|integer|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Source|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» Type|string|false|none|Source of stock.|
|» Allocation|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» Type|string|false|none|Allocation of stock.|
|» DateAllocated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Receipt|
|Type|Stock Take|
|Type|Cost Centre|
|Type|Stock Take|
|Type|Supplier Credit|

<aside class="success">
This operation does not require authentication
</aside>

## ad48b263abb678b49c180cba6bb2257e

<a id="opIdad48b263abb678b49c180cba6bb2257e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/stockAllocations/{stockAllocationID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockAllocations/{stockAllocationID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/stockAllocations/{stockAllocationID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/stockAllocations/{stockAllocationID}`

*Retrieve details for a specific stock allocation.*

<h3 id="ad48b263abb678b49c180cba6bb2257e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|stockAllocationID|path|integer|true|A valid stock allocation id|
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
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "AllocationPrice": 1.57,
  "Quantity": 0,
  "StorageDevice": {
    "ID": 0,
    "Name": "string"
  },
  "Source": {
    "ID": 0,
    "Type": "Receipt"
  },
  "Allocation": {
    "ID": 0,
    "Type": "Cost Centre"
  },
  "DateAllocated": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="ad48b263abb678b49c180cba6bb2257e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Stock allocation details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Stock allocation not found.|None|

<h3 id="ad48b263abb678b49c180cba6bb2257e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» AllocationPrice|number|true|none|none|
|» Quantity|integer|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Source|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Type|string|false|none|Source of stock.|
|» Allocation|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Type|string|false|none|Allocation of stock.|
|» DateAllocated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Receipt|
|Type|Stock Take|
|Type|Cost Centre|
|Type|Stock Take|
|Type|Supplier Credit|

<aside class="success">
This operation does not require authentication
</aside>