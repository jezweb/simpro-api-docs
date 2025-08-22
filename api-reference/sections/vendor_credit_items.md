# Vendor Credit Items

Manage credit items.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 17cf017eb95012e78cabb4c736756a20

<a id="opId17cf017eb95012e78cabb4c736756a20"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/`

*List all vendor credit items.*

<h3 id="17cf017eb95012e78cabb4c736756a20-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorCreditID|path|integer|true|A valid vendor credit id|
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

<h3 id="17cf017eb95012e78cabb4c736756a20-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor credit items.|Inline|

<h3 id="17cf017eb95012e78cabb4c736756a20-responseschema">Response Schema</h3>

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

## b870049a7a9e12ba4597b1099b730f8a

<a id="opIdb870049a7a9e12ba4597b1099b730f8a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/{vendorCreditItemID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/{vendorCreditItemID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/{vendorCreditItemID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}/catalogs/{vendorCreditItemID}`

*Retrieve details for a specific vendor credit item.*

<h3 id="b870049a7a9e12ba4597b1099b730f8a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorCreditID|path|integer|true|A valid vendor credit id|
|vendorCreditItemID|path|integer|true|A valid vendor credit item id|
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
  "VendorPartNo": "string",
  "VendorStockName": "string",
  "Received": 1.57,
  "UnitPrice": 1.57,
  "CreditAmount": 1.57,
  "Total": 1.57
}
```

<h3 id="b870049a7a9e12ba4597b1099b730f8a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor credit item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor credit item not found.|None|

<h3 id="b870049a7a9e12ba4597b1099b730f8a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» VendorPartNo|string|true|none|none|
|» VendorStockName|string|true|none|none|
|» Received|number|true|none|none|
|» UnitPrice|number|true|none|none|
|» CreditAmount|number¦null|false|none|none|
|» Total|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>