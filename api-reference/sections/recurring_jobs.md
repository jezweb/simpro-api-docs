# Recurring Jobs

If you have a job that is performed at regular intervals, create a recurring job template. Simply add the relevant job details, materials and labour to the template, and you receive an alert whenever the job is due to be created.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Recurring-Jobs.htm">External documentation</a>

## a6f9b203694baadbf5d4b2cc4fb03bdc

<a id="opIda6f9b203694baadbf5d4b2cc4fb03bdc"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobs/`

*List all recurring jobs.*

<h3 id="a6f9b203694baadbf5d4b2cc4fb03bdc-parameters">Parameters</h3>

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
    "ID": 12345,
    "Description": "string",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  }
]
```

<h3 id="a6f9b203694baadbf5d4b2cc4fb03bdc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recurring jobs.|Inline|

<h3 id="a6f9b203694baadbf5d4b2cc4fb03bdc-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Recurring Job ID|
|» Description|string|true|none|This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 1420274dc4036ffecd823b431eb4f871

<a id="opId1420274dc4036ffecd823b431eb4f871"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/recurringJobs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Project",
  "Customer": 0,
  "Site": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "SiteContact": 0,
  "Name": "string",
  "OrderNo": "string",
  "Description": "string",
  "Notes": "string",
  "Tags": [
    0
  ],
  "RecurringStartDate": "2021-04-22",
  "RecurringQuantity": 0,
  "RecurringFrequency": "week",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": [
    0
  ],
  "PricingTier": 0,
  "LaborOverhead": 1.57,
  "LaborType": 0,
  "LaborFitTime": 0,
  "LabourTaxCode": 0,
  "MaterialMarkup": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/recurringJobs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/recurringJobs/`

*Create a new recurring job.*

> Body parameter

```json
{
  "Type": "Project",
  "Customer": 0,
  "Site": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "SiteContact": 0,
  "Name": "string",
  "OrderNo": "string",
  "Description": "string",
  "Notes": "string",
  "Tags": [
    0
  ],
  "RecurringStartDate": "2021-04-22",
  "RecurringQuantity": 0,
  "RecurringFrequency": "week",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": [
    0
  ],
  "PricingTier": 0,
  "LaborOverhead": 1.57,
  "LaborType": 0,
  "LaborFitTime": 0,
  "LabourTaxCode": 0,
  "MaterialMarkup": 0
}
```

<h3 id="1420274dc4036ffecd823b431eb4f871-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Recurring Job object|
|» Type|body|string|true|none|
|» Customer|body|integer|true|ID of a customer|
|» Site|body|integer|true|ID of a site|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» SiteContact|body|integer|false|ID of a contact|
|» Name|body|string|false|none|
|» OrderNo|body|string|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» Tags|body|[integer]|false|none|
|» RecurringStartDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» RecurringQuantity|body|integer|false|none|
|» RecurringFrequency|body|string|false|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Technicians|body|[integer]|false|none|
|» PricingTier|body|integer|false|ID of a pricing tier|
|» LaborOverhead|body|number|false|Labor overhead of the recurring job, set to null to use system default value.|
|» LaborType|body|integer|false|ID of a labor rate|
|» LaborFitTime|body|integer|false|ID of a fit time|
|» LabourTaxCode|body|integer|false|ID of a tax code|
|» MaterialMarkup|body|number¦null|false|Lookup pricing tier mark up when value is set to null.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Project|
|» Type|Service|
|» RecurringFrequency|week|
|» RecurringFrequency|month|
|» RecurringFrequency|year|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Type": "Project",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "CustomerContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "AdditionalContacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "Name": "string",
  "OrderNo": "string",
  "Description": "string",
  "Notes": "string",
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "RecurringStartDate": "2021-04-22",
  "NextRecurringDate": "2021-04-22",
  "RecurringQuantity": 0,
  "RecurringFrequency": "week",
  "Salesperson": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "ProjectManager": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Technicians": [
    {
      "ID": 123,
      "Name": "John Smith"
    }
  ],
  "PricingTier": {
    "ID": 12345,
    "Name": "Tier 1 (Service name)",
    "DefaultMarkup": 10
  },
  "LaborOverhead": 1.57,
  "LaborType": {
    "ID": 12345,
    "Name": "string"
  },
  "LaborFitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "LabourTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "MaterialMarkup": 0,
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
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
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 1.57,
      "Revized": 1.57
    }
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

<h3 id="1420274dc4036ffecd823b431eb4f871-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recurring Job created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="1420274dc4036ffecd823b431eb4f871-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Recurring Job ID|
|» Type|string|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» CustomerContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» AdditionalContacts|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» SiteContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» Name|string|true|none|none|
|» OrderNo|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» RecurringStartDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» NextRecurringDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» RecurringQuantity|integer|true|none|none|
|» RecurringFrequency|string|true|none|none|
|» Salesperson|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» ProjectManager|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Technicians|[object]|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|» PricingTier|object|true|none|Pricing tier of the recurring job, set to null to use system default value.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|» LaborOverhead|number|true|none|Labor overhead of the recurring job, set to null to use system default value.|
|» LaborType|object|true|none|ID of a labor rate, set to null to use system default value.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» LaborFitTime|object¦null|false|none|ID of a fit time, set to null to use system default value.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» LabourTaxCode|object¦null|false|none|Set to null to use the default labour tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»» ID|integer|false|none|none|
|»» Code|string|false|none|Tax code|
|»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|false|none|Tax rate|
|» MaterialMarkup|number¦null|false|none|Lookup pricing tier mark up when value is set to null.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
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
|» CustomFields|[object]|true|none|Custom fields for recurring job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Project|
|Type|Service|
|RecurringFrequency|week|
|RecurringFrequency|month|
|RecurringFrequency|year|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
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

## 791c5bb7317ac614399a07b96222087d

<a id="opId791c5bb7317ac614399a07b96222087d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}`

*Retrieve details for a specific recurring job.*

<h3 id="791c5bb7317ac614399a07b96222087d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "Type": "Project",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "CustomerContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "AdditionalContacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "Name": "string",
  "OrderNo": "string",
  "Description": "string",
  "Notes": "string",
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "RecurringStartDate": "2021-04-22",
  "NextRecurringDate": "2021-04-22",
  "RecurringQuantity": 0,
  "RecurringFrequency": "week",
  "Salesperson": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "ProjectManager": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Technicians": [
    {
      "ID": 123,
      "Name": "John Smith"
    }
  ],
  "PricingTier": {
    "ID": 12345,
    "Name": "Tier 1 (Service name)",
    "DefaultMarkup": 10
  },
  "LaborOverhead": 1.57,
  "LaborType": {
    "ID": 12345,
    "Name": "string"
  },
  "LaborFitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "LabourTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "MaterialMarkup": 0,
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
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
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 1.57,
      "Revized": 1.57
    }
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

<h3 id="791c5bb7317ac614399a07b96222087d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recurring Job details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring Job not found.|None|

<h3 id="791c5bb7317ac614399a07b96222087d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Recurring Job ID|
|» Type|string|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» CustomerContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» AdditionalContacts|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» SiteContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» Name|string|true|none|none|
|» OrderNo|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» RecurringStartDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» NextRecurringDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» RecurringQuantity|integer|true|none|none|
|» RecurringFrequency|string|true|none|none|
|» Salesperson|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» ProjectManager|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Technicians|[object]|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|» PricingTier|object|true|none|Pricing tier of the recurring job, set to null to use system default value.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|» LaborOverhead|number|true|none|Labor overhead of the recurring job, set to null to use system default value.|
|» LaborType|object|true|none|ID of a labor rate, set to null to use system default value.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» LaborFitTime|object¦null|false|none|ID of a fit time, set to null to use system default value.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» LabourTaxCode|object¦null|false|none|Set to null to use the default labour tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»» ID|integer|false|none|none|
|»» Code|string|false|none|Tax code|
|»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|false|none|Tax rate|
|» MaterialMarkup|number¦null|false|none|Lookup pricing tier mark up when value is set to null.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
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
|» CustomFields|[object]|true|none|Custom fields for recurring job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Project|
|Type|Service|
|RecurringFrequency|week|
|RecurringFrequency|month|
|RecurringFrequency|year|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
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

## 650ea9c0292f2ee892d6834aa5a28c5f

<a id="opId650ea9c0292f2ee892d6834aa5a28c5f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Customer": 0,
  "Site": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "SiteContact": 0,
  "Name": "string",
  "OrderNo": "string",
  "Description": "string",
  "Notes": "string",
  "Tags": [
    0
  ],
  "RecurringStartDate": "2021-04-22",
  "NextRecurringDate": "2021-04-22",
  "RecurringQuantity": 0,
  "RecurringFrequency": "week",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}`

*Update a recurring job.*

> Body parameter

```json
{
  "Customer": 0,
  "Site": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "SiteContact": 0,
  "Name": "string",
  "OrderNo": "string",
  "Description": "string",
  "Notes": "string",
  "Tags": [
    0
  ],
  "RecurringStartDate": "2021-04-22",
  "NextRecurringDate": "2021-04-22",
  "RecurringQuantity": 0,
  "RecurringFrequency": "week",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": [
    0
  ]
}
```

<h3 id="650ea9c0292f2ee892d6834aa5a28c5f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|
|body|body|object|true|Recurring Job object|
|» Customer|body|integer|false|ID of a customer|
|» Site|body|integer|false|ID of a site|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» SiteContact|body|integer|false|ID of a contact|
|» Name|body|string|false|none|
|» OrderNo|body|string|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» Tags|body|[integer]|false|none|
|» RecurringStartDate|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» NextRecurringDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» RecurringQuantity|body|integer|false|none|
|» RecurringFrequency|body|string|false|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Technicians|body|[integer]|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» RecurringFrequency|week|
|» RecurringFrequency|month|
|» RecurringFrequency|year|

<h3 id="650ea9c0292f2ee892d6834aa5a28c5f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring Job updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 9d045fd6e9bfb8e8abe47e57360a68c0

<a id="opId9d045fd6e9bfb8e8abe47e57360a68c0"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/recurringJobs/{recurringJobID}`

*Delete a recurring job.*

<h3 id="9d045fd6e9bfb8e8abe47e57360a68c0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringJobID|path|integer|true|A valid recurring job id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9d045fd6e9bfb8e8abe47e57360a68c0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring Job deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring Job does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>