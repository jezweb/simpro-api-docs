# Vendor Receipt Items

Manage receipt items.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 1fc17701ea32aec4079f58238366d921

<a id="opId1fc17701ea32aec4079f58238366d921"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/`

*List all vendor receipt items.*

<h3 id="1fc17701ea32aec4079f58238366d921-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
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
    }
  }
]
```

<h3 id="1fc17701ea32aec4079f58238366d921-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor receipt items.|Inline|

<h3 id="1fc17701ea32aec4079f58238366d921-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|

<aside class="success">
This operation does not require authentication
</aside>

## f116117f28b572812926ed44ff4ed6c3

<a id="opIdf116117f28b572812926ed44ff4ed6c3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}`

*Retrieve details for a specific vendor receipt item.*

<h3 id="f116117f28b572812926ed44ff4ed6c3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorReceiptItemID|path|integer|true|A valid vendor receipt item id|
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
  "Qty": 0,
  "UnitPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Rate": 10
  },
  "Allocations": [
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
}
```

<h3 id="f116117f28b572812926ed44ff4ed6c3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor receipt item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor receipt item not found.|None|

<h3 id="f116117f28b572812926ed44ff4ed6c3-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» Qty|number|true|none|none|
|» UnitPrice|object|true|none|Please specify either UnitPrice or Total. The other will be calculated.|
|»» ExTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»» IncTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|» Total|object|true|none|Please specify either UnitPrice or Total. The other will be calculated.|
|»» ExTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»» IncTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Rate|number|true|none|Tax rate|
|» Allocations|[object]|true|none|none|
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
|»» Quantity|number|true|none|none|
|»» ExpenseCostCenter|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 58e07773f4acba9137f91f4fa0c352c2

<a id="opId58e07773f4acba9137f91f4fa0c352c2"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "UnitPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/catalogs/{vendorReceiptItemID}`

*Update a vendor receipt item.*

> Body parameter

```json
{
  "UnitPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="58e07773f4acba9137f91f4fa0c352c2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorReceiptItemID|path|integer|true|A valid vendor receipt item id|
|body|body|object|true|Vendor receipt item object|
|» UnitPrice|body|object|false|Please specify either UnitPrice or Total. The other will be calculated.|
|»» ExTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|
|»» IncTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|
|» Total|body|object|false|Please specify either UnitPrice or Total. The other will be calculated.|
|»» ExTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|
|»» IncTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="58e07773f4acba9137f91f4fa0c352c2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor receipt item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>