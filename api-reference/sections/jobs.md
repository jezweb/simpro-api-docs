# Jobs

In a job, keep track of all the details of the work being carried out, including scheduling employees, assigning stock, creating vendor orders, raising contractor work orders, adding customer assets to be tested, sending job forms to the customer, and more.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Jobs.htm">External documentation</a>

## 3da845fa8310570dd756fa4e5727bb59

<a id="opId3da845fa8310570dd756fa4e5727bb59"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/`

*List all jobs.*

<h3 id="3da845fa8310570dd756fa4e5727bb59-parameters">Parameters</h3>

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
    "Description": "Fault/Request See customer's email.",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  }
]
```

<h3 id="3da845fa8310570dd756fa4e5727bb59-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all jobs.|Inline|

<h3 id="3da845fa8310570dd756fa4e5727bb59-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This job's ID|
|» Description|string|true|none|This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## ecf0ab7b96c25ccc28a1f4e6038ec0b1

<a id="opIdecf0ab7b96c25ccc28a1f4e6038ec0b1"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Project",
  "Customer": 0,
  "CustomerContract": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Description": "Fault/Request See customer's email.",
  "Notes": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DueTime": "04:22",
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "Stage": "Pending",
  "Status": 0,
  "ResponseTime": 0,
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  },
  "CompletedDate": "2021-04-22"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/`

*Create a new job.*

> Body parameter

```json
{
  "Type": "Project",
  "Customer": 0,
  "CustomerContract": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Description": "Fault/Request See customer's email.",
  "Notes": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DueTime": "04:22",
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "Stage": "Pending",
  "Status": 0,
  "ResponseTime": 0,
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  },
  "CompletedDate": "2021-04-22"
}
```

<h3 id="ecf0ab7b96c25ccc28a1f4e6038ec0b1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Job object|
|» Type|body|string|true|none|
|» Customer|body|integer|false|ID of a customer|
|» CustomerContract|body|integer|false|ID of a customer contract|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» Site|body|integer|true|ID of a site|
|» SiteContact|body|integer|false|ID of a contact|
|» OrderNo|body|string|false|none|
|» RequestNo|body|string|false|This column refers to job name and it is deprecated.|
|» Name|body|string|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|body|string(date)¦null|false|This field becomes mandatory when Mandatory Due Date setting for jobs is turned on in system setup defaults.|
|» DueTime|body|string¦null|false|Time in HH:MM format eg. 23:59|
|» Tags|body|[integer]|false|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Technicians|body|integer|false|ID of a staff|
|» Technician|body|integer|false|ID of a staff|
|» Stage|body|string|false|Jobs progress through stages: from pending, to in progress, to complete, to invoiced. Once a completed job has been fully invoiced, its status will be set to invoiced.|
|» Status|body|integer|false|ID of a project status code|
|» ResponseTime|body|integer|false|ID of a customer response time|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» STC|body|object|false|none|
|»» STCsEligible|body|boolean|false|Eligibility is determined when a job site is assigned with a STC zone. Make sure to assign STC zone to site in order to make job eligible for STCs.|
|»» VEECsEligible|body|boolean|false|Eligibility is determined when a job site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make job eligible for VEECs.|
|»» STCValue|body|number|false|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|body|number|false|When not provided, financial defaults VEECs Value is used.|
|» CompletedDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

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
|» Stage|Pending|
|» Stage|Progress|
|» Stage|Complete|
|» Stage|Archived|

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
  "CustomerContract": {
    "ID": 0,
    "Name": "string",
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22",
    "ContractNo": "string"
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
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Description": "Fault/Request See customer's email.",
  "Notes": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DueTime": "04:22",
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
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
  "Stage": "Pending",
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress",
    "Color": "#0000FF"
  },
  "ResponseTime": {
    "ID": 0,
    "Name": "string",
    "Days": 0,
    "Hours": 0,
    "Minutes": 0
  },
  "IsVariation": true,
  "LinkedVariations": [
    {
      "ID": 12345,
      "Description": "Fault/Request See customer's email.",
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "ConvertedFromQuote": {
    "ID": 0,
    "Description": "string",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  },
  "ConvertedFrom": {
    "ID": 12345,
    "Type": "Quote",
    "Date": "2019-09-19T19:53:39+10:00"
  },
  "DateModified": "2018-05-21T19:53:39+10:00",
  "AutoAdjustStatus": true,
  "IsRetentionEnabled": true,
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
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
        "Revised": 1.57,
        "Revized": 1.57
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
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettProfitLoss": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "InvoicedValue": 1.57,
    "InvoicePercentage": 1.57
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
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  },
  "CompletedDate": "2021-04-22"
}
```

<h3 id="ecf0ab7b96c25ccc28a1f4e6038ec0b1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="ecf0ab7b96c25ccc28a1f4e6038ec0b1-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This job's ID|
|» Type|string|true|none|none|
|» Customer|object|true|none|Provide Customer ID or CustomerContract ID to create a new record|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» CustomerContract|object|true|none|Provide Customer ID or CustomerContract ID to create a new record|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|true|none|none|
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
|» OrderNo|string|true|none|none|
|» RequestNo|string|true|none|This column refers to job name and it is deprecated.|
|» Name|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)¦null|false|none|This field becomes mandatory when Mandatory Due Date setting for jobs is turned on in system setup defaults.|
|» DueTime|string¦null|false|none|Time in HH:MM format eg. 23:59|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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
|» Stage|string|true|none|Jobs progress through stages: from pending, to in progress, to complete, to invoiced. Once a completed job has been fully invoiced, its status will be set to invoiced.|
|» Status|object|true|none|Set the current status of this job in your workflow. Please set AutoAdjustStatus to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|»» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» ResponseTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Days|integer|false|none|none|
|»» Hours|integer|false|none|none|
|»» Minutes|integer|false|none|none|
|» IsVariation|boolean|true|none|none|
|» LinkedVariations|[object]|true|none|none|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» ConvertedFromQuote|object|true|none|Deprecated: Please use `ConvertedFrom` field.|
|»» ID|integer|true|none|none|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» ConvertedFrom|object|true|none|Converted from quote or recurring job information, null otherwise.|
|»» ID|integer|false|none|ID of a quote or recurring job.|
|»» Type|string|false|none|none|
|»» Date|string(date-time)|false|none|RFC3339 date-time format eg. 2019-09-19T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» IsRetentionEnabled|boolean|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
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
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
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
|» CustomFields|[object]|true|none|All of the custom fields for this job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STC|object|true|none|none|
|»» STCsEligible|boolean|true|none|Eligibility is determined when a job site is assigned with a STC zone. Make sure to assign STC zone to site in order to make job eligible for STCs.|
|»» VEECsEligible|boolean|true|none|Eligibility is determined when a job site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make job eligible for VEECs.|
|»» STCValue|number|true|none|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|number|true|none|When not provided, financial defaults VEECs Value is used.|
|» CompletedDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

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
|Stage|Pending|
|Stage|Progress|
|Stage|Complete|
|Stage|Invoiced|
|Stage|Archived|
|Type|Quote|
|Type|Recurring|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 9ca8d728df9f031d2828e79cbb093702

<a id="opId9ca8d728df9f031d2828e79cbb093702"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}`

*Retrieve details for a specific job.*

<h3 id="9ca8d728df9f031d2828e79cbb093702-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
  "CustomerContract": {
    "ID": 0,
    "Name": "string",
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22",
    "ContractNo": "string"
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
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Description": "Fault/Request See customer's email.",
  "Notes": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DueTime": "04:22",
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
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
  "Stage": "Pending",
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress",
    "Color": "#0000FF"
  },
  "ResponseTime": {
    "ID": 0,
    "Name": "string",
    "Days": 0,
    "Hours": 0,
    "Minutes": 0
  },
  "IsVariation": true,
  "LinkedVariations": [
    {
      "ID": 12345,
      "Description": "Fault/Request See customer's email.",
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "ConvertedFromQuote": {
    "ID": 0,
    "Description": "string",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  },
  "ConvertedFrom": {
    "ID": 12345,
    "Type": "Quote",
    "Date": "2019-09-19T19:53:39+10:00"
  },
  "DateModified": "2018-05-21T19:53:39+10:00",
  "AutoAdjustStatus": true,
  "IsRetentionEnabled": true,
  "Total": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
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
        "Revised": 1.57,
        "Revized": 1.57
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
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettProfitLoss": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "NettMargin": {
      "Actual": 1.57,
      "Estimate": 1.57,
      "Revised": 1.57,
      "Revized": 1.57
    },
    "InvoicedValue": 1.57,
    "InvoicePercentage": 1.57
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
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  },
  "CompletedDate": "2021-04-22"
}
```

<h3 id="9ca8d728df9f031d2828e79cbb093702-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job not found.|None|

<h3 id="9ca8d728df9f031d2828e79cbb093702-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This job's ID|
|» Type|string|true|none|none|
|» Customer|object|true|none|Provide Customer ID or CustomerContract ID to create a new record|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» CustomerContract|object|true|none|Provide Customer ID or CustomerContract ID to create a new record|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|true|none|none|
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
|» OrderNo|string|true|none|none|
|» RequestNo|string|true|none|This column refers to job name and it is deprecated.|
|» Name|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)¦null|false|none|This field becomes mandatory when Mandatory Due Date setting for jobs is turned on in system setup defaults.|
|» DueTime|string¦null|false|none|Time in HH:MM format eg. 23:59|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
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
|» Stage|string|true|none|Jobs progress through stages: from pending, to in progress, to complete, to invoiced. Once a completed job has been fully invoiced, its status will be set to invoiced.|
|» Status|object|true|none|Set the current status of this job in your workflow. Please set AutoAdjustStatus to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|»» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» ResponseTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Days|integer|false|none|none|
|»» Hours|integer|false|none|none|
|»» Minutes|integer|false|none|none|
|» IsVariation|boolean|true|none|none|
|» LinkedVariations|[object]|true|none|none|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» ConvertedFromQuote|object|true|none|Deprecated: Please use `ConvertedFrom` field.|
|»» ID|integer|true|none|none|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» ConvertedFrom|object|true|none|Converted from quote or recurring job information, null otherwise.|
|»» ID|integer|false|none|ID of a quote or recurring job.|
|»» Type|string|false|none|none|
|»» Date|string(date-time)|false|none|RFC3339 date-time format eg. 2019-09-19T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» IsRetentionEnabled|boolean|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
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
|»»»» Revised|number|true|none|Deprecated: Revised field is deprecated, please use Revized field|
|»»»» Revized|number|true|none|none|
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
|» CustomFields|[object]|true|none|All of the custom fields for this job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STC|object|true|none|none|
|»» STCsEligible|boolean|true|none|Eligibility is determined when a job site is assigned with a STC zone. Make sure to assign STC zone to site in order to make job eligible for STCs.|
|»» VEECsEligible|boolean|true|none|Eligibility is determined when a job site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make job eligible for VEECs.|
|»» STCValue|number|true|none|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|number|true|none|When not provided, financial defaults VEECs Value is used.|
|» CompletedDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

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
|Stage|Pending|
|Stage|Progress|
|Stage|Complete|
|Stage|Invoiced|
|Stage|Archived|
|Type|Quote|
|Type|Recurring|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 9a15ee2ae95549bd84ccb296a90ba592

<a id="opId9a15ee2ae95549bd84ccb296a90ba592"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Customer": 0,
  "CustomerContract": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Description": "Fault/Request See customer's email.",
  "Notes": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DueTime": "04:22",
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "Stage": "Pending",
  "Status": 0,
  "ResponseTime": 0,
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  },
  "CompletedDate": "2021-04-22"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}`

*Update a job.*

> Body parameter

```json
{
  "Customer": 0,
  "CustomerContract": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "OrderNo": "string",
  "RequestNo": "string",
  "Name": "string",
  "Description": "Fault/Request See customer's email.",
  "Notes": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DueTime": "04:22",
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Technicians": 0,
  "Technician": 0,
  "Stage": "Pending",
  "Status": 0,
  "ResponseTime": 0,
  "AutoAdjustStatus": true,
  "STC": {
    "STCsEligible": true,
    "VEECsEligible": true,
    "STCValue": 1.57,
    "VEECValue": 1.57
  },
  "CompletedDate": "2021-04-22"
}
```

<h3 id="9a15ee2ae95549bd84ccb296a90ba592-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|body|body|object|true|Job object|
|» Customer|body|integer|false|ID of a customer|
|» CustomerContract|body|integer|false|ID of a customer contract|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» Site|body|integer|false|ID of a site|
|» SiteContact|body|integer|false|ID of a contact|
|» OrderNo|body|string|false|none|
|» RequestNo|body|string|false|This column refers to job name and it is deprecated.|
|» Name|body|string|false|none|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|body|string(date)¦null|false|This field becomes mandatory when Mandatory Due Date setting for jobs is turned on in system setup defaults.|
|» DueTime|body|string¦null|false|Time in HH:MM format eg. 23:59|
|» Tags|body|[integer]|false|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Technicians|body|integer|false|ID of a staff|
|» Technician|body|integer|false|ID of a staff|
|» Stage|body|string|false|Jobs progress through stages: from pending, to in progress, to complete, to invoiced. Once a completed job has been fully invoiced, its status will be set to invoiced.|
|» Status|body|integer|false|ID of a project status code|
|» ResponseTime|body|integer|false|ID of a customer response time|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» STC|body|object|false|none|
|»» STCsEligible|body|boolean|false|Eligibility is determined when a job site is assigned with a STC zone. Make sure to assign STC zone to site in order to make job eligible for STCs.|
|»» VEECsEligible|body|boolean|false|Eligibility is determined when a job site is assigned with a VEEC zone. Make sure to assign VEEC zone to site in order to make job eligible for VEECs.|
|»» STCValue|body|number|false|When not provided, financial defaults STCs Value is used.|
|»» VEECValue|body|number|false|When not provided, financial defaults VEECs Value is used.|
|» CompletedDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Pending|
|» Stage|Progress|
|» Stage|Complete|
|» Stage|Archived|

<h3 id="9a15ee2ae95549bd84ccb296a90ba592-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 0ff87646e8b83643deb1e9f8b6c0be8f

<a id="opId0ff87646e8b83643deb1e9f8b6c0be8f"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}`

*Delete a job.*

<h3 id="0ff87646e8b83643deb1e9f8b6c0be8f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0ff87646e8b83643deb1e9f8b6c0be8f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>