# Recurring Job Cost Centers

## b0563e22dae28bbfc5f9422b65977e69

<a id="opIdb0563e22dae28bbfc5f9422b65977e69"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobCostCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobCostCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobCostCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobCostCenters/`

*List all cost centers.*

<h3 id="b0563e22dae28bbfc5f9422b65977e69-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Name": "string",
    "RecurringJob": {
      "ID": 0,
      "Type": "string",
      "Name": "string"
    },
    "Section": {
      "ID": 0,
      "Name": "string"
    },
    "DateModified": "2018-05-21T19:53:39+10:00",
    "_href": "/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}"
  }
]
```

<h3 id="b0563e22dae28bbfc5f9422b65977e69-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all cost centers.|Inline|

<h3 id="b0563e22dae28bbfc5f9422b65977e69-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» RecurringJob|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Type|string|true|none|none|
|»» Name|string|true|none|none|
|» Section|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» _href|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 49e1ba9cd6c4ec8b64600af4d12bc859

<a id="opId49e1ba9cd6c4ec8b64600af4d12bc859"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/`

*List all recurring job cost centers.*

<h3 id="49e1ba9cd6c4ec8b64600af4d12bc859-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
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
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Name": "string",
    "DisplayOrder": 0,
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57,
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Type": "Single",
        "Rate": 10
      }
    }
  }
]
```

<h3 id="49e1ba9cd6c4ec8b64600af4d12bc859-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recurring job cost centers.|Inline|

<h3 id="49e1ba9cd6c4ec8b64600af4d12bc859-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 1da3aa149440b87854bb97f48474c245

<a id="opId1da3aa149440b87854bb97f48474c245"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "CostCenter": 0,
  "Name": "string",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/',
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

r = requests.post('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/`

*Create a new recurring job cost center.*

> Body parameter

```json
{
  "CostCenter": 0,
  "Name": "string",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  }
}
```

<h3 id="1da3aa149440b87854bb97f48474c245-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|body|body|object|true|Recurring job cost center object|
|» CostCenter|body|integer|true|ID of a cost center|
|» Name|body|string|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» OrderNo|body|string|false|none|
|» DisplayOrder|body|integer|false|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "Name": "string",
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "ItemsLocked": true,
  "RevizedLocked": true,
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    }
  },
  "Totals": {
    "MaterialsCost": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "LaborHours": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "Overhead": {
        "Estimate": 1.57,
        "Revized": 1.57
      }
    },
    "MaterialsMarkup": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revized": 1.57
      }
    },
    "Adjusted": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "Discount": 1.57,
    "GrossProfitLoss": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "GrossMargin": {
      "Estimate": 0,
      "Revized": 0
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 0,
      "Revized": 0
    }
  },
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="1da3aa149440b87854bb97f48474c245-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recurring job cost center created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="1da3aa149440b87854bb97f48474c245-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» OrderNo|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» ItemsLocked|boolean|true|none|none|
|» RevizedLocked|boolean|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» Totals|object|true|none|none|
|»» MaterialsCost|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» Overhead|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»» Adjusted|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» Discount|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 0b33feba73e5f61e358c3ee9ab4e70de

<a id="opId0b33feba73e5f61e358c3ee9ab4e70de"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}`

*Retrieve details for a specific recurring job cost center.*

<h3 id="0b33feba73e5f61e358c3ee9ab4e70de-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
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
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "Name": "string",
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "ItemsLocked": true,
  "RevizedLocked": true,
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    }
  },
  "Totals": {
    "MaterialsCost": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "LaborHours": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "Overhead": {
        "Estimate": 1.57,
        "Revized": 1.57
      }
    },
    "MaterialsMarkup": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revized": 1.57
      }
    },
    "Adjusted": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "Discount": 1.57,
    "GrossProfitLoss": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "GrossMargin": {
      "Estimate": 0,
      "Revized": 0
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 0,
      "Revized": 0
    }
  },
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="0b33feba73e5f61e358c3ee9ab4e70de-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recurring job cost center details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring job cost center not found.|None|

<h3 id="0b33feba73e5f61e358c3ee9ab4e70de-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» OrderNo|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» ItemsLocked|boolean|true|none|none|
|» RevizedLocked|boolean|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» Totals|object|true|none|none|
|»» MaterialsCost|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» Overhead|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»» Adjusted|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» Discount|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revized|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 9c7e2184d5dad46ff943db9707c56c1a

<a id="opId9c7e2184d5dad46ff943db9707c56c1a"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "CostCenter": 0,
  "Name": "string",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "ItemsLocked": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}`

*Update a recurring job cost center.*

> Body parameter

```json
{
  "CostCenter": 0,
  "Name": "string",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "ItemsLocked": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  }
}
```

<h3 id="9c7e2184d5dad46ff943db9707c56c1a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Recurring job cost center object|
|» CostCenter|body|integer|false|ID of a cost center|
|» Name|body|string|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» OrderNo|body|string|false|none|
|» DisplayOrder|body|integer|false|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» ItemsLocked|body|boolean|false|none|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9c7e2184d5dad46ff943db9707c56c1a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring job cost center updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## f2d45d570ce1b9d2b26dde709656cd68

<a id="opIdf2d45d570ce1b9d2b26dde709656cd68"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}/sections/{sectionID}/costCenters/{costCenterID}`

*Delete a recurring job cost center.*

<h3 id="f2d45d570ce1b9d2b26dde709656cd68-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f2d45d570ce1b9d2b26dde709656cd68-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring job cost center deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring job cost center does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>