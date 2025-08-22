# Take Off Template Prebuilds

## 359a54ba0d2b05f9292546a803435499

<a id="opId359a54ba0d2b05f9292546a803435499"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/`

*List all take off template prebuilds.*

<h3 id="359a54ba0d2b05f9292546a803435499-parameters">Parameters</h3>

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
    "Prebuild": {
      "ID": 0,
      "PartNo": "string",
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

<h3 id="359a54ba0d2b05f9292546a803435499-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all take off template prebuilds.|Inline|

<h3 id="359a54ba0d2b05f9292546a803435499-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Prebuild|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|none|
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

## f186c20be4e4a3704ea0523c64fafa57

<a id="opIdf186c20be4e4a3704ea0523c64fafa57"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Prebuild": 0,
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
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

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/',
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

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/`

*Create a new take off template prebuild.*

> Body parameter

```json
{
  "Prebuild": 0,
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
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

<h3 id="f186c20be4e4a3704ea0523c64fafa57-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|body|body|object|true|Take Off Template Prebuild object|
|» Prebuild|body|integer|true|ID of a prebuild|
|» DisplayOrder|body|integer|false|Sets the position of this prebuild item relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
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
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
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

<h3 id="f186c20be4e4a3704ea0523c64fafa57-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take Off Template Prebuild created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="f186c20be4e4a3704ea0523c64fafa57-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Prebuild|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this prebuild item relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
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

## 87a29bd9ad6c3118889011a0466a1852

<a id="opId87a29bd9ad6c3118889011a0466a1852"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}`

*Retrieve details for a specific take off template prebuild.*

<h3 id="87a29bd9ad6c3118889011a0466a1852-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|prebuildsID|path|integer|true|A valid prebuilds id|
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
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
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

<h3 id="87a29bd9ad6c3118889011a0466a1852-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Take Off Template Prebuild details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template Prebuild not found.|None|

<h3 id="87a29bd9ad6c3118889011a0466a1852-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Prebuild|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this prebuild item relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
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

## 08b4e903b614df8a8f8de67a2611a07d

<a id="opId08b4e903b614df8a8f8de67a2611a07d"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
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

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}`

*Update a take off template prebuild.*

> Body parameter

```json
{
  "DisplayOrder": 0,
  "BillableStatus": "Billable",
  "EstimatedTime": 0,
  "FitTime": 0,
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

<h3 id="08b4e903b614df8a8f8de67a2611a07d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|prebuildsID|path|integer|true|A valid prebuilds id|
|body|body|object|true|Take Off Template Prebuild object|
|» DisplayOrder|body|integer|false|Sets the position of this prebuild item relative to the others within this take off template. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» BillableStatus|body|string|false|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|» EstimatedTime|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
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

<h3 id="08b4e903b614df8a8f8de67a2611a07d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template Prebuild updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 5b192f79849a53b0e43aba990c1e1313

<a id="opId5b192f79849a53b0e43aba990c1e1313"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/prebuilds/{prebuildsID}`

*Delete a take off template prebuild.*

<h3 id="5b192f79849a53b0e43aba990c1e1313-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|prebuildsID|path|integer|true|A valid prebuilds id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5b192f79849a53b0e43aba990c1e1313-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template Prebuild deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template Prebuild does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>