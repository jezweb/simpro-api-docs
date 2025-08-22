# Vendor Receipt Credits

Create a credit for a partially or fully receipted vendor order if, for example, there has been a shipping error or faulty goods supplied. You can create credits based on quantity, if you are returning goods, or based on price, if you are asking for a discount.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Credit-a-Purchase-Order.htm">External documentation</a>

## 51a8f76be22b2a79d60f86674628492b

<a id="opId51a8f76be22b2a79d60f86674628492b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/`

*List all vendor receipt credits.*

<h3 id="51a8f76be22b2a79d60f86674628492b-parameters">Parameters</h3>

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
    "ID": 0,
    "VendorCreditNo": "string",
    "DateIssued": "2021-04-22"
  }
]
```

<h3 id="51a8f76be22b2a79d60f86674628492b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor receipt credits.|Inline|

<h3 id="51a8f76be22b2a79d60f86674628492b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorCreditNo|string|true|none|none|
|» DateIssued|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## 4961b234a6159fd73f5471906d9e1774

<a id="opId4961b234a6159fd73f5471906d9e1774"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Price",
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "TaxRounding": 1.57,
  "Category": 0,
  "Freight": {
    "ExTax": 1.57
  },
  "RestockingFee": {
    "ExTax": 1.57
  },
  "Catalogs": [
    {
      "Catalog": 0,
      "CreditAmount": 1.57,
      "Total": 1.57
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/`

*Create a new vendor receipt credit.*

> Body parameter

```json
{
  "Type": "Price",
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "TaxRounding": 1.57,
  "Category": 0,
  "Freight": {
    "ExTax": 1.57
  },
  "RestockingFee": {
    "ExTax": 1.57
  },
  "Catalogs": [
    {
      "Catalog": 0,
      "CreditAmount": 1.57,
      "Total": 1.57
    }
  ]
}
```

<h3 id="4961b234a6159fd73f5471906d9e1774-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|body|body|object|true|Vendor receipt credit object|
|» Type|body|string|true|none|
|» VendorCreditNo|body|string|false|none|
|» DateIssued|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|body|string|false|This column supports HTML formatting.|
|» TaxRounding|body|number|false|none|
|» Category|body|integer|false|ID of a accounting category|
|» Freight|body|object|false|none|
|»» ExTax|body|number|false|none|
|» RestockingFee|body|object|false|none|
|»» ExTax|body|number|false|none|
|» Catalogs|body|[object]|true|none|
|»» Catalog|body|integer|false|ID of a catalog item|
|»» CreditAmount|body|number|false|Credit amount value depends on the credit type defined. Quantity, when type is Quantity, Credit price, when type is Price, either use CreditAmount or Total to set item credit price.|
|»» Total|body|number|false|Applicable when credit type is set to Price, either use CreditAmount or Total to set item credit price.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Price|
|» Type|Quantity|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Type": "Price",
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "Currency": "string",
  "ExchangeRate": 1.57,
  "TaxRounding": 1.57,
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Rate": 10
    }
  },
  "RestockingFee": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Rate": 10
    }
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="4961b234a6159fd73f5471906d9e1774-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor receipt credit created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="4961b234a6159fd73f5471906d9e1774-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» VendorCreditNo|string|true|none|none|
|» DateIssued|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» TaxRounding|number|true|none|none|
|» Category|object|true|none|Accounting Category. Must be provided when category tracking is on within company's financial defaults.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» RestockingFee|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Price|
|Type|Quantity|

<aside class="success">
This operation does not require authentication
</aside>

## fb59cfea934a3a3320525daf55287eaa

<a id="opIdfb59cfea934a3a3320525daf55287eaa"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}`

*Retrieve details for a specific vendor receipt credit.*

<h3 id="fb59cfea934a3a3320525daf55287eaa-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorCreditID|path|integer|true|A valid vendor credit id|
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
  "Type": "Price",
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "Currency": "string",
  "ExchangeRate": 1.57,
  "TaxRounding": 1.57,
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Rate": 10
    }
  },
  "RestockingFee": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Rate": 10
    }
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="fb59cfea934a3a3320525daf55287eaa-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor receipt credit details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor receipt credit not found.|None|

<h3 id="fb59cfea934a3a3320525daf55287eaa-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» VendorCreditNo|string|true|none|none|
|» DateIssued|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» TaxRounding|number|true|none|none|
|» Category|object|true|none|Accounting Category. Must be provided when category tracking is on within company's financial defaults.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» RestockingFee|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Price|
|Type|Quantity|

<aside class="success">
This operation does not require authentication
</aside>

## 0a65324cfa599c4fd5ee81a77c651348

<a id="opId0a65324cfa599c4fd5ee81a77c651348"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "TaxRounding": 1.57,
  "Category": 0,
  "Freight": {
    "ExTax": 1.57
  },
  "RestockingFee": {
    "ExTax": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}`

*Update a vendor receipt credit.*

> Body parameter

```json
{
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "TaxRounding": 1.57,
  "Category": 0,
  "Freight": {
    "ExTax": 1.57
  },
  "RestockingFee": {
    "ExTax": 1.57
  }
}
```

<h3 id="0a65324cfa599c4fd5ee81a77c651348-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorCreditID|path|integer|true|A valid vendor credit id|
|body|body|object|true|Vendor receipt credit object|
|» VendorCreditNo|body|string|false|none|
|» DateIssued|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|body|string|false|This column supports HTML formatting.|
|» TaxRounding|body|number|false|none|
|» Category|body|integer|false|ID of a accounting category|
|» Freight|body|object|false|none|
|»» ExTax|body|number|false|none|
|» RestockingFee|body|object|false|none|
|»» ExTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0a65324cfa599c4fd5ee81a77c651348-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor receipt credit updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 43a1684422ac3d3171027ba239836224

<a id="opId43a1684422ac3d3171027ba239836224"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}/credits/{vendorCreditID}`

*Delete a vendor receipt credit.*

<h3 id="43a1684422ac3d3171027ba239836224-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|vendorCreditID|path|integer|true|A valid vendor credit id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="43a1684422ac3d3171027ba239836224-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor receipt credit deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor receipt credit does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>