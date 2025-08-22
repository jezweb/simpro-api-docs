# Recurring Job Cost Center One-Offs

## bc6f19acb665949a3062e841f347ec7e

<a id="opIdbc6f19acb665949a3062e841f347ec7e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/`

*List all recurring job cost center one-offs.*

<h3 id="bc6f19acb665949a3062e841f347ec7e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
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
      "Tax": 1.57,
      "IncTax": 1.57,
      "ExDiscountExTax": 1.57,
      "ExDiscountIncTax": 1.57
    },
    "Total": {
      "Qty": 0,
      "EstimatedTime": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  }
]
```

<h3 id="bc6f19acb665949a3062e841f347ec7e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recurring job cost center one-offs.|Inline|

<h3 id="bc6f19acb665949a3062e841f347ec7e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be <br>                                                billable or non-billable. Non-billable item's cost can be included.|
|» Description|string|true|none|none|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» EstimatedTime|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
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

## c6f492045cb11be5f60e95c24097dd36

<a id="opIdc6f492045cb11be5f60e95c24097dd36"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Material",
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/`

*Create a new recurring job cost center one-off.*

> Body parameter

```json
{
  "Type": "Material",
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="c6f492045cb11be5f60e95c24097dd36-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Recurring Job Cost Center One-Off object|
|» Type|body|string|true|none|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be |
|» PartNo|body|string|false|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|body|integer|false|ID of a vendor|
|» Description|body|string|false|none|
|» EstimatedCost|body|number|false|The estimated cost of this item, before markup is applied.|
|» Markup|body|number|false|Specifying the Markup and EstimatedCost for this item will |
|» EstimatedTime|body|number|false|none|
|» ActualCost|body|number|false|none|
|» ActualCostDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Discount|body|number|false|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPriceExDiscount|body|number|false|Specify the sell price excluding discount of this item. If you specify this, the markup will automatically be calculated.|
|» SellPriceIncDiscount|body|number|false|Specify the sell price including discount of this item. If you specify this, the discount will automatically be calculated.|
|» SellPrice|body|number|false|Deprecated - Specify the sell price of this item. If you specify this, the markup will automatically be calculated.|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Total|body|object|true|none|
|»» Qty|body|number|true|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

**» BillableStatus**: Indicates a billable status of an item. An item can be 
                                                billable or non-billable. Non-billable item's cost can be included.

**» Markup**: Specifying the Markup and EstimatedCost for this item will 
                                                            generate a calculated sell price (ex discount) automatically.

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
  "EstimatedTime": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Discount": 0,
  "SellPrice": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57,
    "ExDiscountExTax": 1.57,
    "ExDiscountIncTax": 1.57
  },
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Total": {
    "Qty": 0,
    "EstimatedTime": 1.57,
    "Amount": {
      "ExTax": 1.57,
      "Tax": 1.57,
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

<h3 id="c6f492045cb11be5f60e95c24097dd36-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recurring Job Cost Center One-Off created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="c6f492045cb11be5f60e95c24097dd36-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be <br>                                                billable or non-billable. Non-billable item's cost can be included.|
|» InventoryItem|integer|true|none|none|
|» PartNo|string|true|none|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|object|true|none|This field is valid only when one off item is Material type and is Inventory.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Description|string|true|none|none|
|» EstimatedCost|number|true|none|The estimated cost of this item, before markup is applied.|
|» Markup|number|true|none|Specifying the Markup and EstimatedCost for this item will <br>                                                            generate a calculated sell price (ex discount) automatically.|
|» EstimatedTime|number|true|none|none|
|» ActualCost|number|true|none|none|
|» ActualCostDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DisplayOrder|integer|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» EstimatedTime|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
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

## edc48d70bb88f7b2202ea68a9205bb2a

<a id="opIdedc48d70bb88f7b2202ea68a9205bb2a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}`

*Retrieve details for a specific recurring job cost center one-off.*

<h3 id="edc48d70bb88f7b2202ea68a9205bb2a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
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
  "EstimatedTime": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Discount": 0,
  "SellPrice": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57,
    "ExDiscountExTax": 1.57,
    "ExDiscountIncTax": 1.57
  },
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Total": {
    "Qty": 0,
    "EstimatedTime": 1.57,
    "Amount": {
      "ExTax": 1.57,
      "Tax": 1.57,
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

<h3 id="edc48d70bb88f7b2202ea68a9205bb2a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recurring Job Cost Center One-Off details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring Job Cost Center One-Off not found.|None|

<h3 id="edc48d70bb88f7b2202ea68a9205bb2a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be <br>                                                billable or non-billable. Non-billable item's cost can be included.|
|» InventoryItem|integer|true|none|none|
|» PartNo|string|true|none|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|object|true|none|This field is valid only when one off item is Material type and is Inventory.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Description|string|true|none|none|
|» EstimatedCost|number|true|none|The estimated cost of this item, before markup is applied.|
|» Markup|number|true|none|Specifying the Markup and EstimatedCost for this item will <br>                                                            generate a calculated sell price (ex discount) automatically.|
|» EstimatedTime|number|true|none|none|
|» ActualCost|number|true|none|none|
|» ActualCostDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DisplayOrder|integer|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ExDiscountExTax|number|true|none|none|
|»» ExDiscountIncTax|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» EstimatedTime|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
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

## f09cdb1086edee4c9b8b242814d39296

<a id="opIdf09cdb1086edee4c9b8b242814d39296"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}`

*Update a recurring job cost center one-off.*

> Body parameter

```json
{
  "BillableStatus": "Billable",
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedCost": 0,
  "Markup": 0,
  "EstimatedTime": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="f09cdb1086edee4c9b8b242814d39296-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|oneOffID|path|integer|true|A valid one off id|
|body|body|object|true|Recurring Job Cost Center One-Off object|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be |
|» PartNo|body|string|false|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|body|integer|false|ID of a vendor|
|» Description|body|string|false|none|
|» EstimatedCost|body|number|false|The estimated cost of this item, before markup is applied.|
|» Markup|body|number|false|Specifying the Markup and EstimatedCost for this item will |
|» EstimatedTime|body|number|false|none|
|» ActualCost|body|number|false|none|
|» ActualCostDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Discount|body|number|false|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPriceExDiscount|body|number|false|Specify the sell price excluding discount of this item. If you specify this, the markup will automatically be calculated.|
|» SellPriceIncDiscount|body|number|false|Specify the sell price including discount of this item. If you specify this, the discount will automatically be calculated.|
|» SellPrice|body|number|false|Deprecated - Specify the sell price of this item. If you specify this, the markup will automatically be calculated.|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Total|body|object|false|none|
|»» Qty|body|number|false|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

**» BillableStatus**: Indicates a billable status of an item. An item can be 
                                                billable or non-billable. Non-billable item's cost can be included.

**» Markup**: Specifying the Markup and EstimatedCost for this item will 
                                                            generate a calculated sell price (ex discount) automatically.

#### Enumerated Values

|Parameter|Value|
|---|---|
|» BillableStatus|Billable|
|» BillableStatus|NonBillable|
|» BillableStatus|NonBillableIncludeCosts|

<h3 id="f09cdb1086edee4c9b8b242814d39296-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring Job Cost Center One-Off updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## dcd73fb30e0aadb216f095cc565d8d00

<a id="opIddcd73fb30e0aadb216f095cc565d8d00"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}/oneOffs/{oneOffID}`

*Delete a recurring job cost center one-off.*

<h3 id="dcd73fb30e0aadb216f095cc565d8d00-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|oneOffID|path|integer|true|A valid one off id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="dcd73fb30e0aadb216f095cc565d8d00-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring Job Cost Center One-Off deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring Job Cost Center One-Off does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>