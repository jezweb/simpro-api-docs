# Quote Cost Centers

## 845d8a32c9a399b425c280bf8a4ea01d

<a id="opId845d8a32c9a399b425c280bf8a4ea01d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quoteCostCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quoteCostCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/quoteCostCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quoteCostCenters/`

*List all cost centers.*

<h3 id="845d8a32c9a399b425c280bf8a4ea01d-parameters">Parameters</h3>

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
    "Quote": {
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
    "_href": "/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}"
  }
]
```

<h3 id="845d8a32c9a399b425c280bf8a4ea01d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all cost centers.|Inline|

<h3 id="845d8a32c9a399b425c280bf8a4ea01d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» Quote|object|true|none|none|
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

## 7d452e9556e404b0b15ebb63cef18543

<a id="opId7d452e9556e404b0b15ebb63cef18543"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/`

*List all quote cost centers.*

<h3 id="7d452e9556e404b0b15ebb63cef18543-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
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

<h3 id="7d452e9556e404b0b15ebb63cef18543-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all quote cost centers.|Inline|

<h3 id="7d452e9556e404b0b15ebb63cef18543-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## c13e4c4822d2e00ead4ff848caf06243

<a id="opIdc13e4c4822d2e00ead4ff848caf06243"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/ \
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
  "Billable": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  },
  "AutoCalculateLabor": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/',
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

r = requests.post('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/`

*Create a new quote cost center.*

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
  "Billable": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  },
  "AutoCalculateLabor": true
}
```

<h3 id="c13e4c4822d2e00ead4ff848caf06243-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|body|body|object|true|Quote cost center object|
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
|» Billable|body|boolean|false|none|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» IncTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» TaxCode|body|integer|false|ID of a tax code|
|» AutoCalculateLabor|body|boolean|false|A default labor will be added to the cost center based on estimated times of part items.|

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
  "OptionalDepartment": true,
  "Billable": true,
  "ItemsLocked": true,
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
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "LaborHours": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Commission": {
        "Estimate": 1.57,
        "Revised": 1.57
      },
      "Overhead": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      }
    },
    "MaterialsMarkup": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revised": 1.57
      }
    },
    "Adjusted": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "MembershipDiscount": 1.57,
    "Discount": 1.57,
    "STCs": 1.57,
    "VEECs": 1.57,
    "GrossProfitLoss": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "GrossMargin": {
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    }
  },
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="c13e4c4822d2e00ead4ff848caf06243-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote cost center created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="c13e4c4822d2e00ead4ff848caf06243-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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
|» OptionalDepartment|boolean|true|none|Deprecated: Please use `Billable` field to check if a cost center is optional or not.|
|» Billable|boolean|true|none|none|
|» ItemsLocked|boolean|true|none|none|
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
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Commission|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|none|
|»»» Overhead|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»» Adjusted|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» MembershipDiscount|number|true|none|none|
|»» Discount|number|true|none|none|
|»» STCs|number|true|none|none|
|»» VEECs|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Declined|
|Stage|AwaitingApproval|
|Stage|Pending|
|Stage|InProgress|
|Stage|Complete|
|Stage|Invoiced|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## ff6faf3bc8cd2633dff7b7a33ad3d61c

<a id="opIdff6faf3bc8cd2633dff7b7a33ad3d61c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}`

*Retrieve details for a specific quote cost center.*

<h3 id="ff6faf3bc8cd2633dff7b7a33ad3d61c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
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
  "OptionalDepartment": true,
  "Billable": true,
  "ItemsLocked": true,
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
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "LaborHours": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Commission": {
        "Estimate": 1.57,
        "Revised": 1.57
      },
      "Overhead": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      }
    },
    "MaterialsMarkup": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "Labor": {
        "Estimate": 1.57,
        "Revised": 1.57,
        "Revized": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57,
        "Revised": 1.57
      }
    },
    "Adjusted": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "MembershipDiscount": 1.57,
    "Discount": 1.57,
    "STCs": 1.57,
    "VEECs": 1.57,
    "GrossProfitLoss": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "GrossMargin": {
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 0,
      "Revised": 0,
      "Revized": 0
    }
  },
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="ff6faf3bc8cd2633dff7b7a33ad3d61c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Quote cost center details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote cost center not found.|None|

<h3 id="ff6faf3bc8cd2633dff7b7a33ad3d61c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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
|» OptionalDepartment|boolean|true|none|Deprecated: Please use `Billable` field to check if a cost center is optional or not.|
|» Billable|boolean|true|none|none|
|» ItemsLocked|boolean|true|none|none|
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
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Commission|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|none|
|»»» Overhead|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|Commission costs are deducted in the Resources Markup totals but not detailed in the breakdown. Details can be seen in the Resources Cost.|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»» Adjusted|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» MembershipDiscount|number|true|none|none|
|»» Discount|number|true|none|none|
|»» STCs|number|true|none|none|
|»» VEECs|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Declined|
|Stage|AwaitingApproval|
|Stage|Pending|
|Stage|InProgress|
|Stage|Complete|
|Stage|Invoiced|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## c8d302f5b0eb0fe7ca92eaf24098b10a

<a id="opIdc8d302f5b0eb0fe7ca92eaf24098b10a"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID} \
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
  "Billable": true,
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

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}`

*Update a quote cost center.*

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
  "Billable": true,
  "ItemsLocked": true,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": 0
  }
}
```

<h3 id="c8d302f5b0eb0fe7ca92eaf24098b10a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Quote cost center object|
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
|» Billable|body|boolean|false|none|
|» ItemsLocked|body|boolean|false|none|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» IncTax|body|number|false|Set the value to null to reset/remove adjusted price.|
|»» TaxCode|body|integer|false|ID of a tax code|

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

<h3 id="c8d302f5b0eb0fe7ca92eaf24098b10a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote cost center updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e0b5fe4e155b1997b5ae7bc118b70cba

<a id="opIde0b5fe4e155b1997b5ae7bc118b70cba"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}`

*Delete a quote cost center.*

<h3 id="e0b5fe4e155b1997b5ae7bc118b70cba-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e0b5fe4e155b1997b5ae7bc118b70cba-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote cost center deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote cost center does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>