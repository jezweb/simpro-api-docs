# Vendor Receipt Item Allocations

Manage receipt item allocations.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 43b8f6f41daa513a3604d486b4e285d1

<a id="opId43b8f6f41daa513a3604d486b4e285d1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}/allocations/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}/allocations/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}/allocations/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}/allocations/`

*List all vendor receipt item allocations.*

<h3 id="43b8f6f41daa513a3604d486b4e285d1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorReceiptItemID|path|integer|true|A valid vendor receipt item id|
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
    "Quantity": 1.57,
    "ExpenseCostCenter": {
      "ID": 12345,
      "Name": "string"
    }
  }
]
```

<h3 id="43b8f6f41daa513a3604d486b4e285d1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor receipt item allocations.|Inline|

<h3 id="43b8f6f41daa513a3604d486b4e285d1-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
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
|» Quantity|number|true|none|none|
|» ExpenseCostCenter|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>