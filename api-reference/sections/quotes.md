# Quotes

Create quotes to estimate parts and labor and present the estimate to a customer for their approval. Accepted quotes can then be converted into jobs, with all of the information entered in the quote carried over to the new job.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Quotes.htm">External documentation</a>

## 6c393f6610c1797663113694b73fde2d

<a id="opId6c393f6610c1797663113694b73fde2d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/`

*List all quotes.*

<h3 id="6c393f6610c1797663113694b73fde2d-parameters">Parameters</h3>

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
    "Description": "string",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  }
]
```

<h3 id="6c393f6610c1797663113694b73fde2d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all quotes.|Inline|

<h3 id="6c393f6610c1797663113694b73fde2d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a1a58d95b7365d6a2792ec56676b215b

<a id="opIda1a58d95b7365d6a2792ec56676b215b"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/quotes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Description": "string",
  "Notes": "string",
  "Type": "Project",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ValidityDays": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Stage": "InProgress",
  "Forecast": {
    "Year": 1900,
    "Month": 1,
    "Percent": 100
  },
  "Status": 0,
  "Tags": [
    0
  ],
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/quotes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/quotes/`

*Create a new quote.*

> Body parameter

```json
{
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Description": "string",
  "Notes": "string",
  "Type": "Project",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ValidityDays": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Stage": "InProgress",
  "Forecast": {
    "Year": 1900,
    "Month": 1,
    "Percent": 100
  },
  "Status": 0,
  "Tags": [
    0
  ],
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  }
}
```

<h3 id="a1a58d95b7365d6a2792ec56676b215b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Quote object|
|» Customer|body|integer|true|ID of a customer|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» Site|body|integer|true|ID of a site|
|» SiteContact|body|integer|false|ID of a contact|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» Type|body|string|true|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Technicians|body|integer|false|ID of a staff|
|» Technician|body|integer|false|ID of a staff|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|body|string(date)¦null|false|This field becomes mandatory when Mandatory Due Date setting for quotes is turned on in system setup defaults.|
|» ValidityDays|body|integer|false|none|
|» OrderNo|body|string|false|none|
|» RequestNo|body|string|false|This column refers to job name and it is deprecated.|
|» Name|body|string|false|none|
|» Stage|body|string|false|none|
|» Forecast|body|object|false|none|
|»» Year|body|integer¦null|false|A year between 1900 and 2999|
|»» Month|body|integer¦null|false|A month between 1 and 12|
|»» Percent|body|integer¦null|false|An integer between 0 and 100|
|» Status|body|integer|false|ID of a project status code|
|» Tags|body|[integer]|false|none|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» STC|body|object|false|none|
|»» STCsEligible|body|boolean|false|Eligibility is determined when a quote site is assigned with a STC zone. Make sure to assign STC zone to site in order to make quote eligible for STCs.|
|»» VEECsEligible|body|boolean|false|Eligibility is determined when a quote site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make quote eligible for VEECs.|
|»» STCValue|body|number|false|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|body|number|false|When not provided, financial defaults VEECs Value is used.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Project|
|» Type|Service|
|» Type|Prepaid|
|» Stage|InProgress|
|» Stage|Complete|
|» Stage|Approved|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "AdditionalCustomers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
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
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "ConvertedFromLead": {
    "ID": 0,
    "LeadName": "string",
    "DateCreated": "2021-04-22"
  },
  "Description": "string",
  "Notes": "string",
  "Type": "Project",
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
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Technician": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "DateIssued": "2021-04-22",
  "DateApproved": "2021-04-22",
  "DueDate": "2021-04-22",
  "ValidityDays": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "IsClosed": true,
  "ArchiveReason": {
    "ID": 0,
    "ArchiveReason": "string"
  },
  "Stage": "InProgress",
  "CustomerStage": "New",
  "JobNo": "string",
  "IsVariation": true,
  "LinkedJobID": 0,
  "Forecast": {
    "Year": 1900,
    "Month": 1,
    "Percent": 100
  },
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
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
        "Revised": 1.57,
        "Revized": 1.57
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
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    }
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress",
    "Color": "#0000FF"
  },
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00",
  "AutoAdjustStatus": true,
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
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  }
}
```

<h3 id="a1a58d95b7365d6a2792ec56676b215b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="a1a58d95b7365d6a2792ec56676b215b-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» AdditionalCustomers|[object]|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» CustomerContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» AdditionalContacts|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» SiteContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» ConvertedFromLead|object|true|none|none|
|»» ID|integer|true|none|none|
|»» LeadName|string|true|none|none|
|»» DateCreated|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Type|string|true|none|none|
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
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Technician|object¦null|false|none|Deprecated: Revised field is technicians, please use Revised field|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateApproved|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)¦null|false|none|This field becomes mandatory when Mandatory Due Date setting for quotes is turned on in system setup defaults.|
|» ValidityDays|integer|true|none|none|
|» OrderNo|string|true|none|none|
|» RequestNo|string|true|none|This column refers to job name and it is deprecated.|
|» Name|string|true|none|none|
|» IsClosed|boolean|true|none|none|
|» ArchiveReason|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» ArchiveReason|string|false|none|none|
|» Stage|string|true|none|none|
|» CustomerStage|string¦null|false|none|none|
|» JobNo|string¦null|false|none|none|
|» IsVariation|boolean|true|none|none|
|» LinkedJobID|integer¦null|false|none|none|
|» Forecast|object|true|none|none|
|»» Year|integer¦null|false|none|A year between 1900 and 2999|
|»» Month|integer¦null|false|none|A month between 1 and 12|
|»» Percent|integer¦null|false|none|An integer between 0 and 100|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
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
|»»»» Revized|number|true|none|none|
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
|» Status|object|true|none|Set the current status of this quote in your workflow. Please set AutoAdjustStatus to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|»» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» CustomFields|[object]|true|none|All of the custom fields for this quote. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STC|object|true|none|none|
|»» STCsEligible|boolean|true|none|Eligibility is determined when a quote site is assigned with a STC zone. Make sure to assign STC zone to site in order to make quote eligible for STCs.|
|»» VEECsEligible|boolean|true|none|Eligibility is determined when a quote site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make quote eligible for VEECs.|
|»» STCValue|number|true|none|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|number|true|none|When not provided, financial defaults VEECs Value is used.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Project|
|Type|Service|
|Type|Prepaid|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Stage|InProgress|
|Stage|Complete|
|Stage|Approved|
|CustomerStage|New|
|CustomerStage|Pending|
|CustomerStage|Declined|
|CustomerStage|Accepted|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 37fa4cae624109c06c69590fd8652e53

<a id="opId37fa4cae624109c06c69590fd8652e53"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}`

*Retrieve details for a specific quote.*

<h3 id="37fa4cae624109c06c69590fd8652e53-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
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
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "AdditionalCustomers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
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
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "ConvertedFromLead": {
    "ID": 0,
    "LeadName": "string",
    "DateCreated": "2021-04-22"
  },
  "Description": "string",
  "Notes": "string",
  "Type": "Project",
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
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Technician": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "DateIssued": "2021-04-22",
  "DateApproved": "2021-04-22",
  "DueDate": "2021-04-22",
  "ValidityDays": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "IsClosed": true,
  "ArchiveReason": {
    "ID": 0,
    "ArchiveReason": "string"
  },
  "Stage": "InProgress",
  "CustomerStage": "New",
  "JobNo": "string",
  "IsVariation": true,
  "LinkedJobID": 0,
  "Forecast": {
    "Year": 1900,
    "Month": 1,
    "Percent": 100
  },
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
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
        "Revised": 1.57,
        "Revized": 1.57
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
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettProfitLoss": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    }
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress",
    "Color": "#0000FF"
  },
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00",
  "AutoAdjustStatus": true,
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
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  }
}
```

<h3 id="37fa4cae624109c06c69590fd8652e53-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Quote details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote not found.|None|

<h3 id="37fa4cae624109c06c69590fd8652e53-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» AdditionalCustomers|[object]|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» CustomerContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» AdditionalContacts|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» SiteContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» ConvertedFromLead|object|true|none|none|
|»» ID|integer|true|none|none|
|»» LeadName|string|true|none|none|
|»» DateCreated|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Type|string|true|none|none|
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
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Technician|object¦null|false|none|Deprecated: Revised field is technicians, please use Revised field|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateApproved|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)¦null|false|none|This field becomes mandatory when Mandatory Due Date setting for quotes is turned on in system setup defaults.|
|» ValidityDays|integer|true|none|none|
|» OrderNo|string|true|none|none|
|» RequestNo|string|true|none|This column refers to job name and it is deprecated.|
|» Name|string|true|none|none|
|» IsClosed|boolean|true|none|none|
|» ArchiveReason|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» ArchiveReason|string|false|none|none|
|» Stage|string|true|none|none|
|» CustomerStage|string¦null|false|none|none|
|» JobNo|string¦null|false|none|none|
|» IsVariation|boolean|true|none|none|
|» LinkedJobID|integer¦null|false|none|none|
|» Forecast|object|true|none|none|
|»» Year|integer¦null|false|none|A year between 1900 and 2999|
|»» Month|integer¦null|false|none|A month between 1 and 12|
|»» Percent|integer¦null|false|none|An integer between 0 and 100|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
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
|»»»» Revized|number|true|none|none|
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
|» Status|object|true|none|Set the current status of this quote in your workflow. Please set AutoAdjustStatus to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|»» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» CustomFields|[object]|true|none|All of the custom fields for this quote. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STC|object|true|none|none|
|»» STCsEligible|boolean|true|none|Eligibility is determined when a quote site is assigned with a STC zone. Make sure to assign STC zone to site in order to make quote eligible for STCs.|
|»» VEECsEligible|boolean|true|none|Eligibility is determined when a quote site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make quote eligible for VEECs.|
|»» STCValue|number|true|none|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|number|true|none|When not provided, financial defaults VEECs Value is used.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Project|
|Type|Service|
|Type|Prepaid|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Stage|InProgress|
|Stage|Complete|
|Stage|Approved|
|CustomerStage|New|
|CustomerStage|Pending|
|CustomerStage|Declined|
|CustomerStage|Accepted|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## b0fdab924fa9f3079a94b77ab889e11b

<a id="opIdb0fdab924fa9f3079a94b77ab889e11b"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Description": "string",
  "Notes": "string",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ValidityDays": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "IsClosed": true,
  "ArchiveReason": 0,
  "Stage": "InProgress",
  "Forecast": {
    "Year": 1900,
    "Month": 1,
    "Percent": 100
  },
  "Status": 0,
  "Tags": [
    0
  ],
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/quotes/{quoteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}`

*Update a quote.*

> Body parameter

```json
{
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Description": "string",
  "Notes": "string",
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ValidityDays": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "IsClosed": true,
  "ArchiveReason": 0,
  "Stage": "InProgress",
  "Forecast": {
    "Year": 1900,
    "Month": 1,
    "Percent": 100
  },
  "Status": 0,
  "Tags": [
    0
  ],
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  }
}
```

<h3 id="b0fdab924fa9f3079a94b77ab889e11b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|body|body|object|true|Quote object|
|» Customer|body|integer|false|ID of a customer|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» Site|body|integer|false|ID of a site|
|» SiteContact|body|integer|false|ID of a contact|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Technicians|body|integer|false|ID of a staff|
|» Technician|body|integer|false|ID of a staff|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|body|string(date)¦null|false|This field becomes mandatory when Mandatory Due Date setting for quotes is turned on in system setup defaults.|
|» ValidityDays|body|integer|false|none|
|» OrderNo|body|string|false|none|
|» RequestNo|body|string|false|This column refers to job name and it is deprecated.|
|» Name|body|string|false|none|
|» IsClosed|body|boolean|false|none|
|» ArchiveReason|body|integer|false|ID of a quote archive reason|
|» Stage|body|string|false|none|
|» Forecast|body|object|false|none|
|»» Year|body|integer¦null|false|A year between 1900 and 2999|
|»» Month|body|integer¦null|false|A month between 1 and 12|
|»» Percent|body|integer¦null|false|An integer between 0 and 100|
|» Status|body|integer|false|ID of a project status code|
|» Tags|body|[integer]|false|none|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» STC|body|object|false|none|
|»» STCsEligible|body|boolean|false|Eligibility is determined when a quote site is assigned with a STC zone. Make sure to assign STC zone to site in order to make quote eligible for STCs.|
|»» VEECsEligible|body|boolean|false|Eligibility is determined when a quote site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make quote eligible for VEECs.|
|»» STCValue|body|number|false|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|body|number|false|When not provided, financial defaults VEECs Value is used.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|InProgress|
|» Stage|Complete|
|» Stage|Approved|

<h3 id="b0fdab924fa9f3079a94b77ab889e11b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 81917db5a002921b4fdc1c6b27bf3cb8

<a id="opId81917db5a002921b4fdc1c6b27bf3cb8"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/quotes/{quoteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}`

*Delete a quote.*

<h3 id="81917db5a002921b4fdc1c6b27bf3cb8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="81917db5a002921b4fdc1c6b27bf3cb8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>