# Job Cost Center Catalog Items

## 0de92fa44293960fd431df7dd32ca9e2

<a id="opId0de92fa44293960fd431df7dd32ca9e2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/`

*List all job cost center catalog items.*

<h3 id="0de92fa44293960fd431df7dd32ca9e2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "BillableStatus": "Billable",
    "BasePrice": 0,
    "Markup": 0,
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
    "Claimed": {
      "ToDate": {
        "Qty": 1.57,
        "Amount": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      },
      "Remaining": {
        "Qty": 1.57,
        "Amount": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      }
    }
  }
]
```

<h3 id="0de92fa44293960fd431df7dd32ca9e2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center catalog items.|Inline|

<h3 id="0de92fa44293960fd431df7dd32ca9e2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» BasePrice|number|true|none|none|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
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
|» Claimed|object¦null|true|none|none|
|»» ToDate|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|

<aside class="success">
This operation does not require authentication
</aside>

## 63afea58a0e2c26b1c4eaa4e484f7e39

<a id="opId63afea58a0e2c26b1c4eaa4e484f7e39"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Catalog": 0,
  "BillableItem": true,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Markup": 0,
  "SalesTaxCode": 0,
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

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/`

*Create a new job cost center catalog item.*

> Body parameter

```json
{
  "Catalog": 0,
  "BillableItem": true,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Markup": 0,
  "SalesTaxCode": 0,
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

<h3 id="63afea58a0e2c26b1c4eaa4e484f7e39-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job cost center catalog item object|
|» Catalog|body|integer|true|ID of a catalog item|
|» BillableItem|body|boolean|false|Deprecated. Please use BillableStatus field.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
|» BasePrice|body|number|false|none|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» DisplayOrder|body|integer|false|Sets the position of this catalog item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
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
|» BillableStatus|Billable|
|» BillableStatus|NonBillable|
|» BillableStatus|NonBillableIncludeCosts|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "BillableItem": true,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "LaborCost": 1.57,
  "BasePrice": 0,
  "Markup": 0,
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Totals": {
    "PriceEx": 1.57,
    "PriceInc": 1.57,
    "EstimatedTime": 1.57
  },
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
  "Claimed": {
    "ToDate": {
      "Qty": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    },
    "Remaining": {
      "Qty": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  },
  "IncomeAccount": {
    "ID": 12345,
    "Name": "string",
    "Number": "string"
  }
}
```

<h3 id="63afea58a0e2c26b1c4eaa4e484f7e39-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center catalog item created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="63afea58a0e2c26b1c4eaa4e484f7e39-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» BillableItem|boolean|true|none|Deprecated. Please use BillableStatus field.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|number|true|none|none|
|» FitTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» LaborCost|number|true|none|none|
|» BasePrice|number|true|none|none|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Totals|object|true|none|none|
|»» PriceEx|number|true|none|none|
|»» PriceInc|number|true|none|none|
|»» EstimatedTime|number|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this catalog item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
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
|» Claimed|object¦null|false|none|none|
|»» ToDate|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» IncomeAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Number|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 889faca95f7e2d34459cb672a6811081

<a id="opId889faca95f7e2d34459cb672a6811081"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '[
  {
    "Catalog": 0,
    "BillableItem": true,
    "BillableStatus": "Billable",
    "EstimatedTime": 0,
    "FitTime": 0,
    "BasePrice": 0,
    "Markup": 0,
    "SalesTaxCode": 0,
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

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/',
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

r = requests.put('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/', headers = headers)

print(r.json())

```

`PUT /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/`

*Replace job cost center catalog items.*

> Body parameter

```json
[
  {
    "Catalog": 0,
    "BillableItem": true,
    "BillableStatus": "Billable",
    "EstimatedTime": 0,
    "FitTime": 0,
    "BasePrice": 0,
    "Markup": 0,
    "SalesTaxCode": 0,
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

<h3 id="889faca95f7e2d34459cb672a6811081-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|array[object]|true|Array of job cost center catalog items|

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
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "BillableStatus": "Billable",
    "BasePrice": 0,
    "Markup": 0,
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
    "Claimed": {
      "ToDate": {
        "Qty": 1.57,
        "Amount": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      },
      "Remaining": {
        "Qty": 1.57,
        "Amount": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      }
    }
  }
]
```

<h3 id="889faca95f7e2d34459cb672a6811081-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center catalog items replaced successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="889faca95f7e2d34459cb672a6811081-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» BasePrice|number|true|none|none|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
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
|» Claimed|object¦null|true|none|none|
|»» ToDate|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|

<aside class="success">
This operation does not require authentication
</aside>

## 444973bfbe71758e6d9155104383c8f5

<a id="opId444973bfbe71758e6d9155104383c8f5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}`

*Retrieve details for a specific job cost center catalog item.*

<h3 id="444973bfbe71758e6d9155104383c8f5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|catalogID|path|integer|true|A valid catalog id|
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
  "BillableItem": true,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "LaborCost": 1.57,
  "BasePrice": 0,
  "Markup": 0,
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Totals": {
    "PriceEx": 1.57,
    "PriceInc": 1.57,
    "EstimatedTime": 1.57
  },
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
  "Claimed": {
    "ToDate": {
      "Qty": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    },
    "Remaining": {
      "Qty": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  },
  "IncomeAccount": {
    "ID": 12345,
    "Name": "string",
    "Number": "string"
  }
}
```

<h3 id="444973bfbe71758e6d9155104383c8f5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center catalog item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center catalog item not found.|None|

<h3 id="444973bfbe71758e6d9155104383c8f5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» BillableItem|boolean|true|none|Deprecated. Please use BillableStatus field.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|number|true|none|none|
|» FitTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» LaborCost|number|true|none|none|
|» BasePrice|number|true|none|none|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Totals|object|true|none|none|
|»» PriceEx|number|true|none|none|
|»» PriceInc|number|true|none|none|
|»» EstimatedTime|number|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this catalog item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
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
|» Claimed|object¦null|false|none|none|
|»» ToDate|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Qty|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» IncomeAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Number|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## fd89184fab26784f09dff0cf93663445

<a id="opIdfd89184fab26784f09dff0cf93663445"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "BillableItem": true,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Markup": 0,
  "SalesTaxCode": 0,
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

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}`

*Update a job cost center catalog item.*

> Body parameter

```json
{
  "BillableItem": true,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Markup": 0,
  "SalesTaxCode": 0,
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

<h3 id="fd89184fab26784f09dff0cf93663445-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|catalogID|path|integer|true|A valid catalog id|
|body|body|object|true|Job cost center catalog item object|
|» BillableItem|body|boolean|false|Deprecated. Please use BillableStatus field.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
|» BasePrice|body|number|false|none|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» DisplayOrder|body|integer|false|Sets the position of this catalog item relative to the others within this cost center. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
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

<h3 id="fd89184fab26784f09dff0cf93663445-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center catalog item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 3b437040aabf9913ec5ed44751c7bb9b

<a id="opId3b437040aabf9913ec5ed44751c7bb9b"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/catalogs/{catalogID}`

*Delete a job cost center catalog item.*

<h3 id="3b437040aabf9913ec5ed44751c7bb9b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|catalogID|path|integer|true|A valid catalog id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3b437040aabf9913ec5ed44751c7bb9b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center catalog item deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center catalog item does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>