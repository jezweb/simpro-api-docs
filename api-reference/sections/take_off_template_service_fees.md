# Take Off Template Service Fees

## 7042964b846289606053fc8f1c87cb43

<a id="opId7042964b846289606053fc8f1c87cb43"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/`

*List all take off template service fees.*

<h3 id="7042964b846289606053fc8f1c87cb43-parameters">Parameters</h3>

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
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
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

<h3 id="7042964b846289606053fc8f1c87cb43-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all take off template service fees.|Inline|

<h3 id="7042964b846289606053fc8f1c87cb43-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ServiceFee|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» SellPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» Qty|number|true|none|none|
|»» Amount|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 023ccc157225fc251d737b620cd8fc46

<a id="opId023ccc157225fc251d737b620cd8fc46"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ServiceFee": 0,
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Ticked": true,
  "Markup": 0,
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

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/',
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

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/`

*Create a new take off template service fee.*

> Body parameter

```json
{
  "ServiceFee": 0,
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Ticked": true,
  "Markup": 0,
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="023ccc157225fc251d737b620cd8fc46-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|body|body|object|true|Take Off Template Service Fee object|
|» ServiceFee|body|integer|true|ID of a service fee|
|» DisplayOrder|body|integer|false|Sets the position of this service fee items relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
|» BasePrice|body|number|false|none|
|» Ticked|body|boolean|false|none|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
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
|» BillableStatus|Billable|
|» BillableStatus|NonBillable|
|» BillableStatus|NonBillableIncludeCosts|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "ServiceFee": {
    "ID": 0,
    "Name": "string"
  },
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "BasePrice": 0,
  "Ticked": true,
  "Markup": 0,
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

<h3 id="023ccc157225fc251d737b620cd8fc46-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take Off Template Service Fee created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="023ccc157225fc251d737b620cd8fc46-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ServiceFee|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this service fee items relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|number|true|none|none|
|» FitTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» BasePrice|number|true|none|none|
|» Ticked|boolean|true|none|none|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
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
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## d4c5090e6e8390a9042ba7221cc6b526

<a id="opIdd4c5090e6e8390a9042ba7221cc6b526"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}`

*Retrieve details for a specific take off template service fee.*

<h3 id="d4c5090e6e8390a9042ba7221cc6b526-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|serviceFeeID|path|integer|true|A valid service fee id|
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
  "ServiceFee": {
    "ID": 0,
    "Name": "string"
  },
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "BasePrice": 0,
  "Ticked": true,
  "Markup": 0,
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

<h3 id="d4c5090e6e8390a9042ba7221cc6b526-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Take Off Template Service Fee details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template Service Fee not found.|None|

<h3 id="d4c5090e6e8390a9042ba7221cc6b526-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ServiceFee|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this service fee items relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|number|true|none|none|
|» FitTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» BasePrice|number|true|none|none|
|» Ticked|boolean|true|none|none|
|» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
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
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 5828a740d59a5e5e4c455621be798294

<a id="opId5828a740d59a5e5e4c455621be798294"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Ticked": true,
  "Markup": 0,
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

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}`

*Update a take off template service fee.*

> Body parameter

```json
{
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
  "BasePrice": 0,
  "Ticked": true,
  "Markup": 0,
  "SellPrice": 0,
  "SalesTaxCode": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="5828a740d59a5e5e4c455621be798294-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|serviceFeeID|path|integer|true|A valid service fee id|
|body|body|object|true|Take Off Template Service Fee object|
|» DisplayOrder|body|integer|false|Sets the position of this service fee items relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
|» BasePrice|body|number|false|none|
|» Ticked|body|boolean|false|none|
|» Markup|body|number|false|Specify the markup of this item. If you specify this, the sell price will automatically be calculated.|
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

<h3 id="5828a740d59a5e5e4c455621be798294-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template Service Fee updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 33e4829d3dcb04d5417a7a0176bdbf98

<a id="opId33e4829d3dcb04d5417a7a0176bdbf98"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/serviceFees/{serviceFeeID}`

*Delete a take off template service fee.*

<h3 id="33e4829d3dcb04d5417a7a0176bdbf98-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|serviceFeeID|path|integer|true|A valid service fee id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="33e4829d3dcb04d5417a7a0176bdbf98-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template Service Fee deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template Service Fee does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>