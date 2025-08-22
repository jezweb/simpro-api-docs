# Job Cost Centers

## 80e64ec49bee6548601d3560b7982e07

<a id="opId80e64ec49bee6548601d3560b7982e07"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobCostCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobCostCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobCostCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobCostCenters/`

*List all cost centers.*

<h3 id="80e64ec49bee6548601d3560b7982e07-parameters">Parameters</h3>

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
    "Job": {
      "ID": 0,
      "Type": "string",
      "Name": "string",
      "Stage": "string",
      "Status": "string"
    },
    "Section": {
      "ID": 0,
      "Name": "string"
    },
    "DateModified": "2018-05-21T19:53:39+10:00",
    "_href": "/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}"
  }
]
```

<h3 id="80e64ec49bee6548601d3560b7982e07-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all cost centers.|Inline|

<h3 id="80e64ec49bee6548601d3560b7982e07-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» Job|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Type|string|true|none|none|
|»» Name|string|true|none|none|
|»» Stage|string|true|none|none|
|»» Status|string|true|none|none|
|» Section|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» _href|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 868f54093787da9266d1a3e8280ad014

<a id="opId868f54093787da9266d1a3e8280ad014"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/`

*List all job cost centers.*

<h3 id="868f54093787da9266d1a3e8280ad014-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
    "JobID": 0,
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
    },
    "Claimed": {
      "ToDate": {
        "Percent": 1.57,
        "Amount": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      },
      "Remaining": {
        "Percent": 1.57,
        "Amount": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      }
    },
    "PercentComplete": 0
  }
]
```

<h3 id="868f54093787da9266d1a3e8280ad014-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost centers.|Inline|

<h3 id="868f54093787da9266d1a3e8280ad014-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» JobID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» Claimed|object¦null|true|none|none|
|»» ToDate|object|false|none|none|
|»»» Percent|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Percent|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» PercentComplete|integer|true|none|Displays cost center progress percentage.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## f2dd98063aaee97e222c214c4cc60a40

<a id="opIdf2dd98063aaee97e222c214c4cc60a40"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "CostCenter": 0,
  "Name": "string",
  "Stage": "Declined",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "AutoAdjustDates": true,
  "DisplayOrder": 0,
  "VariationApprovalDate": "2021-04-22",
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  },
  "AutoCalculateLabor": true,
  "PercentComplete": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/`

*Create a new job cost center.*

> Body parameter

```json
{
  "CostCenter": 0,
  "Name": "string",
  "Stage": "Declined",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "AutoAdjustDates": true,
  "DisplayOrder": 0,
  "VariationApprovalDate": "2021-04-22",
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  },
  "AutoCalculateLabor": true,
  "PercentComplete": 0
}
```

<h3 id="f2dd98063aaee97e222c214c4cc60a40-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|body|body|object|true|Job cost center object|
|» CostCenter|body|integer|true|ID of a cost center|
|» Name|body|string|false|none|
|» Stage|body|string¦null|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» OrderNo|body|string|false|none|
|» StartDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» AutoAdjustDates|body|boolean|false|When false, start/end dates can be changed manually.|
|» DisplayOrder|body|integer|false|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» VariationApprovalDate|body|string(date)¦null|false|The date which this variation was approved by the customer. This must be null if the stage is declined or awaiting approval. This must not be null if the stage is anything else.|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» IncTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» TaxCode|body|integer|false|ID of a tax code|
|» AutoCalculateLabor|body|boolean|false|A default labor will be added to the cost center based on estimated times of part items.|
|» PercentComplete|body|integer|false|Displays cost center progress percentage.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Declined|
|» Stage|AwaitingApproval|
|» Stage|Pending|
|» Stage|InProgress|
|» Stage|Complete|
|» Stage|Invoiced|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "JobID": 0,
  "Name": "string",
  "Header": "string",
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "Stage": "Declined",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "AutoAdjustDates": true,
  "DisplayOrder": 0,
  "Variation": true,
  "VariationApprovalDate": "2021-04-22",
  "ItemsLocked": true,
  "LockedInfo": {
    "Type": "string",
    "IsLocked": true
  },
  "VendorOrders": [
    {
      "ID": 0,
      "Stage": "Pending",
      "Reference": "string",
      "ShowItemDueDate": true,
      "Totals": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
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
  "Claimed": {
    "ToDate": {
      "Percent": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    },
    "Remaining": {
      "Percent": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  },
  "Totals": {
    "MaterialsCost": {
      "Actual": 1.57,
      "Committed": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "LaborHours": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57
      },
      "Commission": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57
      },
      "Overhead": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      }
    },
    "MaterialsMarkup": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      }
    },
    "Adjusted": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "MembershipDiscount": 1.57,
    "Discount": 1.57,
    "STCs": 1.57,
    "VEECs": 1.57,
    "GrossProfitLoss": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "GrossMargin": {
      "Actual": 0,
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    },
    "NettProfitLoss": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Actual": 0,
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    },
    "InvoicedValue": 1.57,
    "InvoicePercentage": 1.57
  },
  "DateModified": "2018-05-21T19:53:39+10:00",
  "PercentComplete": 0
}
```

<h3 id="f2dd98063aaee97e222c214c4cc60a40-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="f2dd98063aaee97e222c214c4cc60a40-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» JobID|integer|true|none|none|
|» Name|string|true|none|none|
|» Header|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Stage|string¦null|false|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» OrderNo|string|true|none|none|
|» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» AutoAdjustDates|boolean|true|none|When false, start/end dates can be changed manually.|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» Variation|boolean|true|none|none|
|» VariationApprovalDate|string(date)¦null|false|none|The date which this variation was approved by the customer. This must be null if the stage is declined or awaiting approval. This must not be null if the stage is anything else.|
|» ItemsLocked|boolean|true|none|Deprecated. Please use /lock/ endpoint.|
|» LockedInfo|object|true|none|none|
|»» Type|string|true|none|none|
|»» IsLocked|boolean|true|none|none|
|» VendorOrders|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Stage|string|true|none|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|»» Reference|string|true|none|none|
|»» ShowItemDueDate|boolean|true|none|none|
|»» Totals|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» Claimed|object¦null|false|none|none|
|»» ToDate|object|false|none|none|
|»»» Percent|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Percent|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» Totals|object|true|none|none|
|»» MaterialsCost|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Committed|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|none|
|»»» Commission|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|none|
|»»» Overhead|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Actual|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»»» Estimate|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»» Labor|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»» Adjusted|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» MembershipDiscount|number|true|none|none|
|»» Discount|number|true|none|none|
|»» STCs|number|true|none|none|
|»» VEECs|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» InvoicedValue|number|true|none|none|
|»» InvoicePercentage|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» PercentComplete|integer|true|none|Displays cost center progress percentage.|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Declined|
|Stage|AwaitingApproval|
|Stage|Pending|
|Stage|InProgress|
|Stage|Complete|
|Stage|Invoiced|
|Stage|Pending|
|Stage|Approved|
|Stage|Archived|
|Stage|Voided|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## aa9a9f3611fb9d4057ee059547d341e2

<a id="opIdaa9a9f3611fb9d4057ee059547d341e2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}`

*Retrieve details for a specific job cost center.*

<h3 id="aa9a9f3611fb9d4057ee059547d341e2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
  "JobID": 0,
  "Name": "string",
  "Header": "string",
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "Stage": "Declined",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "AutoAdjustDates": true,
  "DisplayOrder": 0,
  "Variation": true,
  "VariationApprovalDate": "2021-04-22",
  "ItemsLocked": true,
  "LockedInfo": {
    "Type": "string",
    "IsLocked": true
  },
  "VendorOrders": [
    {
      "ID": 0,
      "Stage": "Pending",
      "Reference": "string",
      "ShowItemDueDate": true,
      "Totals": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
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
  "Claimed": {
    "ToDate": {
      "Percent": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    },
    "Remaining": {
      "Percent": 1.57,
      "Amount": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  },
  "Totals": {
    "MaterialsCost": {
      "Actual": 1.57,
      "Committed": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "LaborHours": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57
      },
      "Commission": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57
      },
      "Overhead": {
        "Actual": 1.57,
        "Committed": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      }
    },
    "MaterialsMarkup": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Actual": 1.57,
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      }
    },
    "Adjusted": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "MembershipDiscount": 1.57,
    "Discount": 1.57,
    "STCs": 1.57,
    "VEECs": 1.57,
    "GrossProfitLoss": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "GrossMargin": {
      "Actual": 0,
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    },
    "NettProfitLoss": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Actual": 0,
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    },
    "InvoicedValue": 1.57,
    "InvoicePercentage": 1.57
  },
  "DateModified": "2018-05-21T19:53:39+10:00",
  "PercentComplete": 0
}
```

<h3 id="aa9a9f3611fb9d4057ee059547d341e2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center not found.|None|

<h3 id="aa9a9f3611fb9d4057ee059547d341e2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» JobID|integer|true|none|none|
|» Name|string|true|none|none|
|» Header|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Stage|string¦null|false|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» OrderNo|string|true|none|none|
|» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» AutoAdjustDates|boolean|true|none|When false, start/end dates can be changed manually.|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» Variation|boolean|true|none|none|
|» VariationApprovalDate|string(date)¦null|false|none|The date which this variation was approved by the customer. This must be null if the stage is declined or awaiting approval. This must not be null if the stage is anything else.|
|» ItemsLocked|boolean|true|none|Deprecated. Please use /lock/ endpoint.|
|» LockedInfo|object|true|none|none|
|»» Type|string|true|none|none|
|»» IsLocked|boolean|true|none|none|
|» VendorOrders|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Stage|string|true|none|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|»» Reference|string|true|none|none|
|»» ShowItemDueDate|boolean|true|none|none|
|»» Totals|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» Claimed|object¦null|false|none|none|
|»» ToDate|object|false|none|none|
|»»» Percent|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Remaining|object|false|none|none|
|»»» Percent|number|true|none|none|
|»»» Amount|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» Totals|object|true|none|none|
|»» MaterialsCost|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Committed|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|none|
|»»» Commission|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|none|
|»»» Overhead|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Committed|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Actual|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»»» Estimate|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»» Labor|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Actual|number|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»» Adjusted|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» MembershipDiscount|number|true|none|none|
|»» Discount|number|true|none|none|
|»» STCs|number|true|none|none|
|»» VEECs|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Actual|number|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» InvoicedValue|number|true|none|none|
|»» InvoicePercentage|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» PercentComplete|integer|true|none|Displays cost center progress percentage.|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Declined|
|Stage|AwaitingApproval|
|Stage|Pending|
|Stage|InProgress|
|Stage|Complete|
|Stage|Invoiced|
|Stage|Pending|
|Stage|Approved|
|Stage|Archived|
|Stage|Voided|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 4de4814969e04e08f0c2d49380c5c95c

<a id="opId4de4814969e04e08f0c2d49380c5c95c"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "CostCenter": 0,
  "Name": "string",
  "Stage": "Declined",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "AutoAdjustDates": true,
  "DisplayOrder": 0,
  "VariationApprovalDate": "2021-04-22",
  "ItemsLocked": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  },
  "PercentComplete": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}`

*Update a job cost center.*

> Body parameter

```json
{
  "CostCenter": 0,
  "Name": "string",
  "Stage": "Declined",
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "StartDate": "2021-04-22",
  "EndDate": "2021-04-22",
  "AutoAdjustDates": true,
  "DisplayOrder": 0,
  "VariationApprovalDate": "2021-04-22",
  "ItemsLocked": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  },
  "PercentComplete": 0
}
```

<h3 id="4de4814969e04e08f0c2d49380c5c95c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job cost center object|
|» CostCenter|body|integer|false|ID of a cost center|
|» Name|body|string|false|none|
|» Stage|body|string¦null|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» OrderNo|body|string|false|none|
|» StartDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» EndDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» AutoAdjustDates|body|boolean|false|When false, start/end dates can be changed manually.|
|» DisplayOrder|body|integer|false|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|» VariationApprovalDate|body|string(date)¦null|false|The date which this variation was approved by the customer. This must be null if the stage is declined or awaiting approval. This must not be null if the stage is anything else.|
|» ItemsLocked|body|boolean|false|Deprecated. Please use /lock/ endpoint.|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» IncTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» TaxCode|body|integer|false|ID of a tax code|
|» PercentComplete|body|integer|false|Displays cost center progress percentage.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Declined|
|» Stage|AwaitingApproval|
|» Stage|Pending|
|» Stage|InProgress|
|» Stage|Complete|
|» Stage|Invoiced|

<h3 id="4de4814969e04e08f0c2d49380c5c95c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 50c9c68943878ee49afc5d6be292fcc5

<a id="opId50c9c68943878ee49afc5d6be292fcc5"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}`

*Delete a job cost center.*

<h3 id="50c9c68943878ee49afc5d6be292fcc5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="50c9c68943878ee49afc5d6be292fcc5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>