# Recurring Invoice Cost Centers

## 4be2ecd1e7e74fab977d1cca5ac89335

<a id="opId4be2ecd1e7e74fab977d1cca5ac89335"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoiceCostCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoiceCostCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoiceCostCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoiceCostCenters/`

*List all cost centers.*

<h3 id="4be2ecd1e7e74fab977d1cca5ac89335-parameters">Parameters</h3>

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
    "RecurringInvoice": {
      "ID": 0,
      "Type": "string",
      "Name": "string"
    },
    "Section": {
      "ID": 0,
      "Name": "string"
    },
    "DateModified": "2018-05-21T19:53:39+10:00",
    "_href": "/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}"
  }
]
```

<h3 id="4be2ecd1e7e74fab977d1cca5ac89335-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all cost centers.|Inline|

<h3 id="4be2ecd1e7e74fab977d1cca5ac89335-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|
|» RecurringInvoice|object|true|none|none|
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

## 5b06c54bbbd491217196797b05e93b69

<a id="opId5b06c54bbbd491217196797b05e93b69"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/`

*List all recurring invoice cost centers.*

<h3 id="5b06c54bbbd491217196797b05e93b69-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
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
    "RecurringID": 0,
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

<h3 id="5b06c54bbbd491217196797b05e93b69-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recurring invoice cost centers.|Inline|

<h3 id="5b06c54bbbd491217196797b05e93b69-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» RecurringID|integer|true|none|none|
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

## 585cc6bac05cdd8f56fe47195ac1532f

<a id="opId585cc6bac05cdd8f56fe47195ac1532f"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/ \
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

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/',
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

r = requests.post('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/`

*Create a new recurring invoice cost center.*

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

<h3 id="585cc6bac05cdd8f56fe47195ac1532f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|sectionID|path|integer|true|A valid section id|
|body|body|object|true|Recurring invoice cost center object|
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
  "RecurringID": 0,
  "Name": "string",
  "Header": "string",
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "ItemsLocked": true,
  "RevisedLocked": true,
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
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57,
        "Revized": 1.57
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
        "Revized": 1.57
      }
    },
    "Adjusted": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "Discount": 1.57,
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

<h3 id="585cc6bac05cdd8f56fe47195ac1532f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recurring invoice cost center created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="585cc6bac05cdd8f56fe47195ac1532f-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» RecurringID|integer|true|none|none|
|» Name|string|true|none|none|
|» Header|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» OrderNo|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» ItemsLocked|boolean|true|none|none|
|» RevisedLocked|boolean|true|none|Deprecated: RevisedLocked field is deprecated, please use RevizedLocked field|
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
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
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
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»» Adjusted|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» Discount|number|true|none|none|
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
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## e7c32f7b4d5ba6e0e7a3a67d7079b73a

<a id="opIde7c32f7b4d5ba6e0e7a3a67d7079b73a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}`

*Retrieve details for a specific recurring invoice cost center.*

<h3 id="e7c32f7b4d5ba6e0e7a3a67d7079b73a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
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
  "RecurringID": 0,
  "Name": "string",
  "Header": "string",
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "Description": "string",
  "Notes": "string",
  "OrderNo": "string",
  "DisplayOrder": 0,
  "ItemsLocked": true,
  "RevisedLocked": true,
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
        "Revized": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57,
        "Revized": 1.57
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
        "Revized": 1.57
      }
    },
    "Adjusted": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "Discount": 1.57,
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

<h3 id="e7c32f7b4d5ba6e0e7a3a67d7079b73a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recurring invoice cost center details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring invoice cost center not found.|None|

<h3 id="e7c32f7b4d5ba6e0e7a3a67d7079b73a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» RecurringID|integer|true|none|none|
|» Name|string|true|none|none|
|» Header|string|true|none|none|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» OrderNo|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» ItemsLocked|boolean|true|none|none|
|» RevisedLocked|boolean|true|none|Deprecated: RevisedLocked field is deprecated, please use RevizedLocked field|
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
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
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
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»»» Revized|number|true|none|none|
|»» Adjusted|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»» Revized|number|true|none|none|
|»» Discount|number|true|none|none|
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
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## ea8d3ac76964dbde4f82439ecab98b90

<a id="opIdea8d3ac76964dbde4f82439ecab98b90"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID} \
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

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}`

*Update a recurring invoice cost center.*

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

<h3 id="ea8d3ac76964dbde4f82439ecab98b90-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Recurring invoice cost center object|
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

<h3 id="ea8d3ac76964dbde4f82439ecab98b90-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring invoice cost center updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 66827eaadce067057299a9fe4551026d

<a id="opId66827eaadce067057299a9fe4551026d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}/costCenters/{costCenterID}`

*Delete a recurring invoice cost center.*

<h3 id="66827eaadce067057299a9fe4551026d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="66827eaadce067057299a9fe4551026d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring invoice cost center deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring invoice cost center does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>