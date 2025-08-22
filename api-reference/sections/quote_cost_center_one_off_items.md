# Quote Cost Center One-off Items

## d723c36a8fd2aef0b1e400ecece91c5b

<a id="opIdd723c36a8fd2aef0b1e400ecece91c5b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/`

*List all quote cost center one-off items.*

<h3 id="d723c36a8fd2aef0b1e400ecece91c5b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
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
    "Type": "Material",
    "BillableStatus": "Billable",
    "Description": "string",
    "Discount": 0,
    "SellPrice": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "ExDiscountExTax": 1.57,
      "ExDiscountIncTax": 1.57
    },
    "Total": {
      "Qty": 0,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  }
]
```

<h3 id="d723c36a8fd2aef0b1e400ecece91c5b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all quote cost center one-off items.|Inline|

<h3 id="d723c36a8fd2aef0b1e400ecece91c5b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» Description|string|true|none|none|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|

<aside class="success">
This operation does not require authentication
</aside>

## faa37cbb35c5ca3b91700a835af5aac3

<a id="opIdfaa37cbb35c5ca3b91700a835af5aac3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Material",
  "Billable": true,
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "SalesTaxCode": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/`

*Create a new quote cost center one-off item.*

> Body parameter

```json
{
  "Type": "Material",
  "Billable": true,
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "SalesTaxCode": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="faa37cbb35c5ca3b91700a835af5aac3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Quote cost center one-off item object|
|» Type|body|string|true|none|
|» Billable|body|boolean|false|Deprecated. Please use BillableStatus field.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» PartNo|body|string|false|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|body|integer|false|ID of a vendor|
|» Description|body|string|false|none|
|» EstimatedCost|body|number|false|The estimated cost of this item, before markup is applied.|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» EstimatedTime|body|number|false|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» ActualCost|body|number|false|none|
|» ActualCostDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DisplayOrder|body|integer|false|Sets the position of this one-off item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» Discount|body|number|false|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPriceExDiscount|body|number|false|Specify the sell price excluding discount of this item. If you specify this, the markup will automatically be calculated.|
|» SellPriceIncDiscount|body|number|false|Specify the sell price including discount of this item. If you specify this, the discount will automatically be calculated.|
|» SellPrice|body|number|false|Deprecated - Specify the sell price of this item. If you specify this, the markup will automatically be calculated.|
|» Total|body|object|true|none|
|»» Qty|body|number|true|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Material|
|» Type|Labor|
|» BillableStatus|Billable|
|» BillableStatus|NonBillable|
|» BillableStatus|NonBillableIncludeCosts|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Type": "Material",
  "Billable": true,
  "BillableStatus": "Billable",
  "InventoryItem": 0,
  "PartNo": "string",
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "LaborCost": 1.57,
  "EstimatedTime": 0,
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Discount": 0,
  "SellPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "ExDiscountExTax": 1.57,
    "ExDiscountIncTax": 1.57
  },
  "Total": {
    "Qty": 0,
    "Amount": {
      "ExTax": 1.57,
      "IncTax": 1.57
    }
  },
  "IncomeAccount": {
    "ID": 12345,
    "Name": "string",
    "Number": "string"
  }
}
```

<h3 id="faa37cbb35c5ca3b91700a835af5aac3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote cost center one-off item created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="faa37cbb35c5ca3b91700a835af5aac3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» Billable|boolean|true|none|Deprecated. Please use BillableStatus field.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» InventoryItem|integer|true|none|none|
|» PartNo|string|true|none|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|object|true|none|This field is valid only when one off item is Material type and is Inventory.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Description|string|true|none|none|
|» EstimatedCost|number|true|none|The estimated cost of this item, before markup is applied.|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» LaborCost|number|true|none|none|
|» EstimatedTime|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» ActualCost|number|true|none|none|
|» ActualCostDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DisplayOrder|integer|true|none|Sets the position of this one-off item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» IncomeAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Number|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 5675e5007455821f5afb20dad01e641b

<a id="opId5675e5007455821f5afb20dad01e641b"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '[
  {
    "Type": "Material",
    "Billable": true,
    "BillableStatus": "Billable",
    "PartNo": "string",
    "Vendor": 0,
    "Description": "string",
    "EstimatedCost": 0,
    "Markup": 0,
    "EstimatedTime": 0,
    "SalesTaxCode": 0,
    "ActualCost": 0,
    "ActualCostDate": "2021-04-22",
    "DisplayOrder": 0,
    "Discount": 0,
    "SellPriceExDiscount": 0,
    "SellPriceIncDiscount": 0,
    "SellPrice": 0,
    "Total": {
      "Qty": 0
    },
    "IncomeAccount": 0
  }
]';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/',
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

r = requests.put('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/', headers = headers)

print(r.json())

```

`PUT /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/`

*Replace quote cost center one-off items.*

> Body parameter

```json
[
  {
    "Type": "Material",
    "Billable": true,
    "BillableStatus": "Billable",
    "PartNo": "string",
    "Vendor": 0,
    "Description": "string",
    "EstimatedCost": 0,
    "Markup": 0,
    "EstimatedTime": 0,
    "SalesTaxCode": 0,
    "ActualCost": 0,
    "ActualCostDate": "2021-04-22",
    "DisplayOrder": 0,
    "Discount": 0,
    "SellPriceExDiscount": 0,
    "SellPriceIncDiscount": 0,
    "SellPrice": 0,
    "Total": {
      "Qty": 0
    },
    "IncomeAccount": 0
  }
]
```

<h3 id="5675e5007455821f5afb20dad01e641b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|array[object]|true|Array of quote cost center one-off items|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
[
  {
    "ID": 0,
    "Type": "Material",
    "BillableStatus": "Billable",
    "Description": "string",
    "Discount": 0,
    "SellPrice": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "ExDiscountExTax": 1.57,
      "ExDiscountIncTax": 1.57
    },
    "Total": {
      "Qty": 0,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  }
]
```

<h3 id="5675e5007455821f5afb20dad01e641b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote cost center one-off items replaced successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="5675e5007455821f5afb20dad01e641b-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» Description|string|true|none|none|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|

<aside class="success">
This operation does not require authentication
</aside>

## c8b03fc6f3ed4383a3a08b3089be0414

<a id="opIdc8b03fc6f3ed4383a3a08b3089be0414"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}`

*Retrieve details for a specific quote cost center one-off item.*

<h3 id="c8b03fc6f3ed4383a3a08b3089be0414-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|oneOffID|path|integer|true|A valid one off id|
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
  "Type": "Material",
  "Billable": true,
  "BillableStatus": "Billable",
  "InventoryItem": 0,
  "PartNo": "string",
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "LaborCost": 1.57,
  "EstimatedTime": 0,
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Discount": 0,
  "SellPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "ExDiscountExTax": 1.57,
    "ExDiscountIncTax": 1.57
  },
  "Total": {
    "Qty": 0,
    "Amount": {
      "ExTax": 1.57,
      "IncTax": 1.57
    }
  },
  "IncomeAccount": {
    "ID": 12345,
    "Name": "string",
    "Number": "string"
  }
}
```

<h3 id="c8b03fc6f3ed4383a3a08b3089be0414-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Quote cost center one-off item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote cost center one-off item not found.|None|

<h3 id="c8b03fc6f3ed4383a3a08b3089be0414-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» Billable|boolean|true|none|Deprecated. Please use BillableStatus field.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» InventoryItem|integer|true|none|none|
|» PartNo|string|true|none|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|object|true|none|This field is valid only when one off item is Material type and is Inventory.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Description|string|true|none|none|
|» EstimatedCost|number|true|none|The estimated cost of this item, before markup is applied.|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» LaborCost|number|true|none|none|
|» EstimatedTime|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» ActualCost|number|true|none|none|
|» ActualCostDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DisplayOrder|integer|true|none|Sets the position of this one-off item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» IncomeAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Number|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## f2aebc0384ca19ddebb293e975e5e295

<a id="opIdf2aebc0384ca19ddebb293e975e5e295"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Billable": true,
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "SalesTaxCode": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}`

*Update a quote cost center one-off item.*

> Body parameter

```json
{
  "Billable": true,
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "SalesTaxCode": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="f2aebc0384ca19ddebb293e975e5e295-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|oneOffID|path|integer|true|A valid one off id|
|body|body|object|true|Quote cost center one-off item object|
|» Billable|body|boolean|false|Deprecated. Please use BillableStatus field.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» PartNo|body|string|false|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|body|integer|false|ID of a vendor|
|» Description|body|string|false|none|
|» EstimatedCost|body|number|false|The estimated cost of this item, before markup is applied.|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» EstimatedTime|body|number|false|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» ActualCost|body|number|false|none|
|» ActualCostDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DisplayOrder|body|integer|false|Sets the position of this one-off item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» Discount|body|number|false|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPriceExDiscount|body|number|false|Specify the sell price excluding discount of this item. If you specify this, the markup will automatically be calculated.|
|» SellPriceIncDiscount|body|number|false|Specify the sell price including discount of this item. If you specify this, the discount will automatically be calculated.|
|» SellPrice|body|number|false|Deprecated - Specify the sell price of this item. If you specify this, the markup will automatically be calculated.|
|» Total|body|object|false|none|
|»» Qty|body|number|false|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» BillableStatus|Billable|
|» BillableStatus|NonBillable|
|» BillableStatus|NonBillableIncludeCosts|

<h3 id="f2aebc0384ca19ddebb293e975e5e295-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote cost center one-off item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 33c04bd8266604aa7e39c7e34cb38898

<a id="opId33c04bd8266604aa7e39c7e34cb38898"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}`

*Delete a quote cost center one-off item.*

<h3 id="33c04bd8266604aa7e39c7e34cb38898-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|oneOffID|path|integer|true|A valid one off id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="33c04bd8266604aa7e39c7e34cb38898-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote cost center one-off item deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote cost center one-off item does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>