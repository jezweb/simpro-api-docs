# Quote Contractor Jobs

## a72484022ec1ac339c84258eacc95275

<a id="opIda72484022ec1ac339c84258eacc95275"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/`

*List all quote contractor jobs.*

<h3 id="a72484022ec1ac339c84258eacc95275-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
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
    "ProjectType": "string",
    "Contractor": {
      "ID": 0,
      "Name": "string",
      "ContactName": "string"
    },
    "CreatedBy": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "ReverseChargeTax": 1.57
    }
  }
]
```

<h3 id="a72484022ec1ac339c84258eacc95275-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all quote contractor jobs.|Inline|

<h3 id="a72484022ec1ac339c84258eacc95275-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ProjectType|string|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 32d277efe6560f3eb04392dcd0246029

<a id="opId32d277efe6560f3eb04392dcd0246029"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Contractor": 0,
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": 0,
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ],
    "Prebuilds": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ]
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/`

*Create a new quote contractor job.*

> Body parameter

```json
{
  "Contractor": 0,
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": 0,
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ],
    "Prebuilds": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ]
  }
}
```

<h3 id="32d277efe6560f3eb04392dcd0246029-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Quote contractor job object|
|» Contractor|body|integer|true|ID of a contractor|
|» Description|body|string|false|This column supports HTML formatting.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractorSupplyMaterials|body|boolean|false|Set this to true if the contractor will supply the materials themselves.|
|» Materials|body|number|false|none|
|» ExchangeRate|body|number|false|none|
|» Labor|body|number¦null|false|none|
|» TaxCode|body|integer|false|ID of a tax code|
|» Retention|body|object|false|none|
|»» Amount|body|number|false|none|
|»» PerClaim|body|number|false|none|
|»» PeriodMonths|body|integer|false|none|
|» Items|body|object|false|none|
|»» Catalogs|body|[object]|false|none|
|»»» ID|body|integer|false|none|
|»»» Qty|body|number|false|none|
|»» Prebuilds|body|[object]|false|none|
|»»» ID|body|integer|false|none|
|»»» Qty|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "ProjectType": "string",
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "ContactName": "string"
  },
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Status": "Pending",
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "Currency": "string",
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "ReverseChargeTax": 1.57
  },
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Catalog": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string"
        },
        "Price": {
          "Labor": 1.57,
          "Material": 1.57
        },
        "Qty": {
          "Assigned": 1.57,
          "Remaining": 1.57
        }
      }
    ],
    "Prebuilds": [
      {
        "ID": 0,
        "Prebuild": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string"
        },
        "Price": {
          "Labor": 1.57,
          "Material": 1.57
        },
        "Qty": {
          "Assigned": 1.57,
          "Remaining": 1.57
        }
      }
    ]
  },
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ],
        "IsMandatory": true
      },
      "Value": "string"
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="32d277efe6560f3eb04392dcd0246029-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote contractor job created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="32d277efe6560f3eb04392dcd0246029-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ProjectType|string|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Status|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractorSupplyMaterials|boolean|true|none|Set this to true if the contractor will supply the materials themselves.|
|» Materials|number|true|none|none|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Labor|number¦null|false|none|none|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Retention|object|true|none|none|
|»» Amount|number|true|none|none|
|»» PerClaim|number|true|none|none|
|»» PeriodMonths|integer|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|» Items|object|true|none|none|
|»» Catalogs|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Catalog|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Price|object|true|none|none|
|»»»» Labor|number|true|none|none|
|»»»» Material|number|true|none|none|
|»»» Qty|object|true|none|none|
|»»»» Assigned|number|true|none|none|
|»»»» Remaining|number|true|none|none|
|»» Prebuilds|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Prebuild|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Price|object|true|none|none|
|»»»» Labor|number|true|none|none|
|»»»» Material|number|true|none|none|
|»»» Qty|object|true|none|none|
|»»»» Assigned|number|true|none|none|
|»»»» Remaining|number|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this quote contractor job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Status|Pending|
|Status|Complete|
|Status|For Review|
|Status|Invoiced|
|Status|Archived|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 3e6ee7b4dc858307428707f8d33ace90

<a id="opId3e6ee7b4dc858307428707f8d33ace90"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}`

*Retrieve details for a specific quote contractor job.*

<h3 id="3e6ee7b4dc858307428707f8d33ace90-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|contractorJobID|path|integer|true|A valid contractor job id|
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
  "ProjectType": "string",
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "ContactName": "string"
  },
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Status": "Pending",
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "Currency": "string",
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "ReverseChargeTax": 1.57
  },
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Catalog": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string"
        },
        "Price": {
          "Labor": 1.57,
          "Material": 1.57
        },
        "Qty": {
          "Assigned": 1.57,
          "Remaining": 1.57
        }
      }
    ],
    "Prebuilds": [
      {
        "ID": 0,
        "Prebuild": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string"
        },
        "Price": {
          "Labor": 1.57,
          "Material": 1.57
        },
        "Qty": {
          "Assigned": 1.57,
          "Remaining": 1.57
        }
      }
    ]
  },
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ],
        "IsMandatory": true
      },
      "Value": "string"
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="3e6ee7b4dc858307428707f8d33ace90-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Quote contractor job details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote contractor job not found.|None|

<h3 id="3e6ee7b4dc858307428707f8d33ace90-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ProjectType|string|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Status|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractorSupplyMaterials|boolean|true|none|Set this to true if the contractor will supply the materials themselves.|
|» Materials|number|true|none|none|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Labor|number¦null|false|none|none|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Retention|object|true|none|none|
|»» Amount|number|true|none|none|
|»» PerClaim|number|true|none|none|
|»» PeriodMonths|integer|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|» Items|object|true|none|none|
|»» Catalogs|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Catalog|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Price|object|true|none|none|
|»»»» Labor|number|true|none|none|
|»»»» Material|number|true|none|none|
|»»» Qty|object|true|none|none|
|»»»» Assigned|number|true|none|none|
|»»»» Remaining|number|true|none|none|
|»» Prebuilds|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Prebuild|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|none|
|»»»» Name|string|true|none|none|
|»»» Price|object|true|none|none|
|»»»» Labor|number|true|none|none|
|»»»» Material|number|true|none|none|
|»»» Qty|object|true|none|none|
|»»»» Assigned|number|true|none|none|
|»»»» Remaining|number|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this quote contractor job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Status|Pending|
|Status|Complete|
|Status|For Review|
|Status|Invoiced|
|Status|Archived|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 7e724b8a6d901026d5520f7181ae2304

<a id="opId7e724b8a6d901026d5520f7181ae2304"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": 0,
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ],
    "Prebuilds": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ]
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}`

*Update a quote contractor job.*

> Body parameter

```json
{
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": 0,
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ],
    "Prebuilds": [
      {
        "ID": 0,
        "Qty": 1.57
      }
    ]
  }
}
```

<h3 id="7e724b8a6d901026d5520f7181ae2304-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|contractorJobID|path|integer|true|A valid contractor job id|
|body|body|object|true|Quote contractor job object|
|» Description|body|string|false|This column supports HTML formatting.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractorSupplyMaterials|body|boolean|false|Set this to true if the contractor will supply the materials themselves.|
|» Materials|body|number|false|none|
|» ExchangeRate|body|number|false|none|
|» Labor|body|number¦null|false|none|
|» TaxCode|body|integer|false|ID of a tax code|
|» Retention|body|object|false|none|
|»» Amount|body|number|false|none|
|»» PerClaim|body|number|false|none|
|»» PeriodMonths|body|integer|false|none|
|» Items|body|object|false|none|
|»» Catalogs|body|[object]|false|none|
|»»» ID|body|integer|false|none|
|»»» Qty|body|number|false|none|
|»» Prebuilds|body|[object]|false|none|
|»»» ID|body|integer|false|none|
|»»» Qty|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="7e724b8a6d901026d5520f7181ae2304-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote contractor job updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 466ad1eccf242463124ae0ae76df3bd7

<a id="opId466ad1eccf242463124ae0ae76df3bd7"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/{contractorJobID}`

*Delete a quote contractor job.*

<h3 id="466ad1eccf242463124ae0ae76df3bd7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|contractorJobID|path|integer|true|A valid contractor job id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="466ad1eccf242463124ae0ae76df3bd7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote contractor job deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote contractor job does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>