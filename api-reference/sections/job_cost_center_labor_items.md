# Job Cost Center Labor Items

## ae064b531634909350664a7ac9b8407e

<a id="opIdae064b531634909350664a7ac9b8407e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/`

*List all job cost center labor items.*

<h3 id="ae064b531634909350664a7ac9b8407e-parameters">Parameters</h3>

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
    "LaborType": {
      "ID": 12345,
      "Name": "string"
    },
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

<h3 id="ae064b531634909350664a7ac9b8407e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center labor items.|Inline|

<h3 id="ae064b531634909350664a7ac9b8407e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» LaborType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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

<aside class="success">
This operation does not require authentication
</aside>

## 450c2bf72624e6d49890dfe9c4ce8183

<a id="opId450c2bf72624e6d49890dfe9c4ce8183"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "LaborType": 0,
  "LaborRate": 0,
  "LaborMarkup": 0,
  "SalesTaxCode": 0,
  "ProjectedTime": 1.57,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/`

*Create a new job cost center labor item.*

> Body parameter

```json
{
  "LaborType": 0,
  "LaborRate": 0,
  "LaborMarkup": 0,
  "SalesTaxCode": 0,
  "ProjectedTime": 1.57,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="450c2bf72624e6d49890dfe9c4ce8183-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job cost center labor item object|
|» LaborType|body|integer|true|ID of a plant rate|
|» LaborRate|body|number|false|none|
|» LaborMarkup|body|number|false|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» ProjectedTime|body|number|false|none|
|» Discount|body|number|false|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPriceExDiscount|body|number|false|Specify the sell price excluding discount of this item. If you specify this, the markup will automatically be calculated.|
|» SellPriceIncDiscount|body|number|false|Specify the sell price including discount of this item. If you specify this, the discount will automatically be calculated.|
|» Total|body|object|true|none|
|»» Qty|body|number|true|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "LaborType": {
    "ID": 12345,
    "Name": "string"
  },
  "LaborRate": 0,
  "LaborMarkup": 0,
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "ProjectedTime": 1.57,
  "Ticked": true,
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

<h3 id="450c2bf72624e6d49890dfe9c4ce8183-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center labor item created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="450c2bf72624e6d49890dfe9c4ce8183-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» LaborType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» LaborRate|number|true|none|none|
|» LaborMarkup|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» ProjectedTime|number|true|none|none|
|» Ticked|boolean|true|none|none|
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
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 3e15975d3e5b58dda14b1c2313dc79a8

<a id="opId3e15975d3e5b58dda14b1c2313dc79a8"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '[
  {
    "LaborType": 0,
    "LaborRate": 0,
    "LaborMarkup": 0,
    "SalesTaxCode": 0,
    "ProjectedTime": 1.57,
    "Discount": 0,
    "SellPriceExDiscount": 0,
    "SellPriceIncDiscount": 0,
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

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/',
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

r = requests.put('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/', headers = headers)

print(r.json())

```

`PUT /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/`

*Replace job cost center labor items.*

> Body parameter

```json
[
  {
    "LaborType": 0,
    "LaborRate": 0,
    "LaborMarkup": 0,
    "SalesTaxCode": 0,
    "ProjectedTime": 1.57,
    "Discount": 0,
    "SellPriceExDiscount": 0,
    "SellPriceIncDiscount": 0,
    "Total": {
      "Qty": 0
    },
    "IncomeAccount": 0
  }
]
```

<h3 id="3e15975d3e5b58dda14b1c2313dc79a8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|array[object]|true|Array of job cost center labor items|

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
    "LaborType": {
      "ID": 12345,
      "Name": "string"
    },
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

<h3 id="3e15975d3e5b58dda14b1c2313dc79a8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center labor items replaced successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="3e15975d3e5b58dda14b1c2313dc79a8-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» LaborType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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

<aside class="success">
This operation does not require authentication
</aside>

## 328b347b2c7fd4ebc21c9838fd2a76dd

<a id="opId328b347b2c7fd4ebc21c9838fd2a76dd"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}`

*Retrieve details for a specific job cost center labor item.*

<h3 id="328b347b2c7fd4ebc21c9838fd2a76dd-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|laborID|path|integer|true|A valid labor id|
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
  "LaborType": {
    "ID": 12345,
    "Name": "string"
  },
  "LaborRate": 0,
  "LaborMarkup": 0,
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "ProjectedTime": 1.57,
  "Ticked": true,
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

<h3 id="328b347b2c7fd4ebc21c9838fd2a76dd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center labor item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center labor item not found.|None|

<h3 id="328b347b2c7fd4ebc21c9838fd2a76dd-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» LaborType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» LaborRate|number|true|none|none|
|» LaborMarkup|number|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» ProjectedTime|number|true|none|none|
|» Ticked|boolean|true|none|none|
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
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 23a02277e29d1928f28ede7b804f13a5

<a id="opId23a02277e29d1928f28ede7b804f13a5"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "LaborRate": 0,
  "LaborMarkup": 0,
  "SalesTaxCode": 0,
  "ProjectedTime": 1.57,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}`

*Update a job cost center labor item.*

> Body parameter

```json
{
  "LaborRate": 0,
  "LaborMarkup": 0,
  "SalesTaxCode": 0,
  "ProjectedTime": 1.57,
  "Discount": 0,
  "SellPriceExDiscount": 0,
  "SellPriceIncDiscount": 0,
  "Total": {
    "Qty": 0
  },
  "IncomeAccount": 0
}
```

<h3 id="23a02277e29d1928f28ede7b804f13a5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|laborID|path|integer|true|A valid labor id|
|body|body|object|true|Job cost center labor item object|
|» LaborRate|body|number|false|none|
|» LaborMarkup|body|number|false|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» ProjectedTime|body|number|false|none|
|» Discount|body|number|false|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|» SellPriceExDiscount|body|number|false|Specify the sell price excluding discount of this item. If you specify this, the markup will automatically be calculated.|
|» SellPriceIncDiscount|body|number|false|Specify the sell price including discount of this item. If you specify this, the discount will automatically be calculated.|
|» Total|body|object|false|none|
|»» Qty|body|number|false|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="23a02277e29d1928f28ede7b804f13a5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center labor item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## ba76b99daf27ffddf06d1667d1fabfc5

<a id="opIdba76b99daf27ffddf06d1667d1fabfc5"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/labor/{laborID}`

*Delete a job cost center labor item.*

<h3 id="ba76b99daf27ffddf06d1667d1fabfc5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|laborID|path|integer|true|A valid labor id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ba76b99daf27ffddf06d1667d1fabfc5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center labor item deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center labor item does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>