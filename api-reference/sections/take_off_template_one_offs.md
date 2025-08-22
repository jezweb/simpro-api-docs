# Take Off Template One-Offs

## 07fe841327c36b4412d6bf0ad296dcb5

<a id="opId07fe841327c36b4412d6bf0ad296dcb5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/`

*List all take off template one-offs.*

<h3 id="07fe841327c36b4412d6bf0ad296dcb5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
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
    "Description": "string",
    "SellPrice": {
      "ExTax": 1.57,
      "IncTax": 1.57
    },
    "Total": {
      "Qty": 0,
      "Amount": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  }
]
```

<h3 id="07fe841327c36b4412d6bf0ad296dcb5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all take off template one-offs.|Inline|

<h3 id="07fe841327c36b4412d6bf0ad296dcb5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» Description|string|true|none|none|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|

<aside class="success">
This operation does not require authentication
</aside>

## 54817e60bb6edafab62135b65b400ad7

<a id="opId54817e60bb6edafab62135b65b400ad7"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Material",
  "BillableStatus": "Billable",
  "DisplayOrder": 0,
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedTime": 0,
  "EstimatedCost": 0,
  "Markup": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
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

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/`

*Create a new take off template one-off.*

> Body parameter

```json
{
  "Type": "Material",
  "BillableStatus": "Billable",
  "DisplayOrder": 0,
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedTime": 0,
  "EstimatedCost": 0,
  "Markup": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="54817e60bb6edafab62135b65b400ad7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|body|body|object|true|Take Off Template One-Off object|
|» Type|body|string|true|none|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» DisplayOrder|body|integer|false|Sets the position of this one-off item relative to the others within this take off template. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» PartNo|body|string|false|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|body|integer|false|ID of a vendor|
|» Description|body|string|false|none|
|» EstimatedTime|body|number|false|none|
|» EstimatedCost|body|number|false|The estimated cost of this item, before markup is applied.|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
|» ActualCost|body|number|false|none|
|» ActualCostDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» SellPrice|body|number|false|Specify the sell price of this item. If you specify this, the markup |
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Total|body|object|true|none|
|»» Qty|body|number|true|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

**» SellPrice**: Specify the sell price of this item. If you specify this, the markup 
                                                will automatically be calculated.

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
  "InventoryItem": 0,
  "BillableStatus": "Billable",
  "DisplayOrder": 0,
  "PartNo": "string",
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "Description": "string",
  "EstimatedTime": 0,
  "EstimatedCost": 0,
  "Markup": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "SellPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Total": {
    "Qty": 0,
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

<h3 id="54817e60bb6edafab62135b65b400ad7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take Off Template One-Off created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="54817e60bb6edafab62135b65b400ad7-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» InventoryItem|integer|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» DisplayOrder|integer|true|none|Sets the position of this one-off item relative to the others within this take off template. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» PartNo|string|true|none|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|object|true|none|This field is valid only when one off item is Material type and is Inventory.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Description|string|true|none|none|
|» EstimatedTime|number|true|none|none|
|» EstimatedCost|number|true|none|The estimated cost of this item, before markup is applied.|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
|» ActualCost|number|true|none|none|
|» ActualCostDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
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

## a5b2fdff69a69695141ef57fd0ce999b

<a id="opIda5b2fdff69a69695141ef57fd0ce999b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}`

*Retrieve details for a specific take off template one-off.*

<h3 id="a5b2fdff69a69695141ef57fd0ce999b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|oneOffsID|path|integer|true|A valid one offs id|
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
  "InventoryItem": 0,
  "BillableStatus": "Billable",
  "DisplayOrder": 0,
  "PartNo": "string",
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "Description": "string",
  "EstimatedTime": 0,
  "EstimatedCost": 0,
  "Markup": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "SellPrice": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Total": {
    "Qty": 0,
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

<h3 id="a5b2fdff69a69695141ef57fd0ce999b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Take Off Template One-Off details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template One-Off not found.|None|

<h3 id="a5b2fdff69a69695141ef57fd0ce999b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» InventoryItem|integer|true|none|none|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» DisplayOrder|integer|true|none|Sets the position of this one-off item relative to the others within this take off template. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» PartNo|string|true|none|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|object|true|none|This field is valid only when one off item is Material type and is Inventory.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Description|string|true|none|none|
|» EstimatedTime|number|true|none|none|
|» EstimatedCost|number|true|none|The estimated cost of this item, before markup is applied.|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
|» ActualCost|number|true|none|none|
|» ActualCostDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
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

## e0142413052c6397378c275fc143fb12

<a id="opIde0142413052c6397378c275fc143fb12"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "BillableStatus": "Billable",
  "DisplayOrder": 0,
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedTime": 0,
  "EstimatedCost": 0,
  "Markup": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
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

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}`

*Update a take off template one-off.*

> Body parameter

```json
{
  "BillableStatus": "Billable",
  "DisplayOrder": 0,
  "PartNo": "string",
  "Vendor": 0,
  "Description": "string",
  "EstimatedTime": 0,
  "EstimatedCost": 0,
  "Markup": 0,
  "ActualCost": 0,
  "ActualCostDate": "2021-04-22",
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="e0142413052c6397378c275fc143fb12-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|oneOffsID|path|integer|true|A valid one offs id|
|body|body|object|true|Take Off Template One-Off object|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» DisplayOrder|body|integer|false|Sets the position of this one-off item relative to the others within this take off template. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» PartNo|body|string|false|This field is valid only when one off item is Material type and is Inventory.|
|» Vendor|body|integer|false|ID of a vendor|
|» Description|body|string|false|none|
|» EstimatedTime|body|number|false|none|
|» EstimatedCost|body|number|false|The estimated cost of this item, before markup is applied.|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
|» ActualCost|body|number|false|none|
|» ActualCostDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» SellPrice|body|number|false|Specify the sell price of this item. If you specify this, the markup |
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Total|body|object|false|none|
|»» Qty|body|number|false|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

**» SellPrice**: Specify the sell price of this item. If you specify this, the markup 
                                                will automatically be calculated.

#### Enumerated Values

|Parameter|Value|
|---|---|
|» BillableStatus|Billable|
|» BillableStatus|NonBillable|
|» BillableStatus|NonBillableIncludeCosts|

<h3 id="e0142413052c6397378c275fc143fb12-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template One-Off updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## f80e9a989b6396d8d4e70212d1a44704

<a id="opIdf80e9a989b6396d8d4e70212d1a44704"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/oneOffs/{oneOffsID}`

*Delete a take off template one-off.*

<h3 id="f80e9a989b6396d8d4e70212d1a44704-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|oneOffsID|path|integer|true|A valid one offs id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f80e9a989b6396d8d4e70212d1a44704-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template One-Off deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template One-Off does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>