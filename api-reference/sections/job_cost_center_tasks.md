# Job Cost Center Tasks

## d3582a4aaf0967a9d55d1bf027117820

<a id="opIdd3582a4aaf0967a9d55d1bf027117820"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/`

*List all job cost center tasks.*

<h3 id="d3582a4aaf0967a9d55d1bf027117820-parameters">Parameters</h3>

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
    "Subject": "string",
    "AssignedTo": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Assignees": [
      {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      }
    ],
    "CompletedBy": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "DueDate": "2021-04-22",
    "PercentComplete": 0
  }
]
```

<h3 id="d3582a4aaf0967a9d55d1bf027117820-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center tasks.|Inline|

<h3 id="d3582a4aaf0967a9d55d1bf027117820-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Subject|string|true|none|none|
|» AssignedTo|object¦null|true|none|Deprecated: AssignedTo field is deprecated. Please specify either AssignedTo (Deprecated) or Assignees (Preferred). When both provided AssignedTo will be ignored.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Assignees|[object]¦null|true|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»» Assigning Staff|object|false|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»»» ID|integer|true|none|Employee ID of the staff member|
|»»» Name|string|true|none|Name of the staff member|
|»»» Type|string|true|none|Staff type|
|»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» CompletedBy|object¦null|true|none|Set the staff member which the task will be completed by. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» DueDate|string(date)¦null|true|none|When the task becomes overdue, you will receive an alert in simPRO.|
|» PercentComplete|integer|true|none|Displays task progress percentage.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## cdd8341a5b28530d2fe8eba3b3b7d027

<a id="opIdcdd8341a5b28530d2fe8eba3b3b7d027"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/{taskID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/{taskID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/{taskID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/tasks/{taskID}`

*Retrieve details for a specific job cost center task.*

<h3 id="cdd8341a5b28530d2fe8eba3b3b7d027-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|taskID|path|integer|true|A valid task id|
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
  "Subject": "string",
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "AssignedTo": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Assignees": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "AssignedToCustomer": true,
  "CompletedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Associated": {
    "Job": {
      "ID": 12345,
      "CostCenter": {
        "ID": 0,
        "CostCenter": {
          "ID": 12345,
          "Name": "string"
        },
        "Section": 0
      }
    },
    "Quote": {
      "ID": 0,
      "CostCenter": {
        "ID": 0,
        "CostCenter": {
          "ID": 12345,
          "Name": "string"
        },
        "Section": 0
      }
    },
    "Customer": {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    },
    "Contact": {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    },
    "Site": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "IsBillable": true,
  "ShowOnWorkOrder": true,
  "EmailNotifications": true,
  "Description": "string",
  "StartDate": "2021-04-22",
  "DueDate": "2021-04-22",
  "CompletedDate": "2021-04-22",
  "Notes": "string",
  "Status": "Pending",
  "Priority": "Medium",
  "Category": {
    "ID": 12345,
    "Name": "string"
  },
  "Estimated": {
    "Hours": 100000,
    "Minutes": 59,
    "Seconds": 59
  },
  "Actual": {
    "Hours": 100000,
    "Minutes": 59,
    "Seconds": 59
  },
  "ParentTask": {
    "ID": 0,
    "Subject": "string",
    "AssignedTo": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Assignees": [
      {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      }
    ],
    "CompletedBy": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "DueDate": "2021-04-22",
    "PercentComplete": 0
  },
  "SubTasks": [
    {
      "ID": 0,
      "Subject": "string",
      "AssignedTo": {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      },
      "Assignees": [
        {
          "ID": 123,
          "Name": "John Smith",
          "Type": "employee",
          "TypeId": 0
        }
      ],
      "CompletedBy": {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      },
      "DueDate": "2021-04-22",
      "PercentComplete": 0
    }
  ],
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
  "PercentComplete": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="cdd8341a5b28530d2fe8eba3b3b7d027-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center task details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center task not found.|None|

<h3 id="cdd8341a5b28530d2fe8eba3b3b7d027-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Subject|string|true|none|none|
|» CreatedBy|object|true|none|Employee who created the task.|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» AssignedTo|object¦null|false|none|Deprecated: AssignedTo field is deprecated. Please specify either AssignedTo (Deprecated) or Assignees (Preferred). When both provided AssignedTo will be ignored.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Assignees|[object]¦null|false|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»» Assigning Staff|object|false|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»»» ID|integer|true|none|Employee ID of the staff member|
|»»» Name|string|true|none|Name of the staff member|
|»»» Type|string|true|none|Staff type|
|»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» AssignedToCustomer|boolean|true|none|Task assigned to customer.|
|» CompletedBy|object¦null|false|none|Set the staff member which the task will be completed by. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Associated|object|true|none|none|
|»» Job|object¦null|false|none|none|
|»»» ID|integer|false|none|This job's ID|
|»»» CostCenter|object|false|none|none|
|»»»» ID|integer|false|none|none|
|»»»» CostCenter|object|false|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» Section|integer|false|none|none|
|»» Quote|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» CostCenter|object|false|none|none|
|»»»» ID|integer|false|none|none|
|»»»» CostCenter|object|false|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» Section|integer|false|none|none|
|»» Customer|object¦null|false|none|none|
|»»» ID|integer|true|none|This customer's ID|
|»»» CompanyName|string|true|none|Company name (Company customers)|
|»»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|»» Contact|object¦null|false|none|none|
|»»» ID|integer|true|none|none|
|»»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»»» FamilyName|string|true|none|Family name / Last name|
|»» Site|object¦null|false|none|none|
|»»» ID|integer|true|none|ID of the site|
|»»» Name|string|true|none|none|
|» IsBillable|boolean|true|none|Set this column to true if the actual time taken is billable to a job.|
|» ShowOnWorkOrder|boolean|true|none|Make the task visible within the project's work order.|
|» EmailNotifications|boolean|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» StartDate|string(date)¦null|false|none|Start Date is when the person assigned will first receive an alert; if no date is selected, no alerts will be sent.|
|» DueDate|string(date)¦null|false|none|When the task becomes overdue, you will receive an alert in simPRO.|
|» CompletedDate|string(date)¦null|false|none|When the task becomes overdue, you will receive an alert in simPRO.|
|» Notes|string|true|none|Set task notes. (Internal use only) This column supports HTML formatting.|
|» Status|string|true|none|Set the task status, once you have completed a task, you need to set the status to 'Closed'.|
|» Priority|string|true|none|none|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Estimated|object|true|none|none|
|»» Hours|integer|true|none|none|
|»» Minutes|integer|true|none|The number of minutes you specify may be slightly different than what is displayed.|
|»» Seconds|integer|true|none|The number of seconds you specify may be slightly different than what is displayed.|
|» Actual|object|true|none|none|
|»» Hours|integer|true|none|none|
|»» Minutes|integer|true|none|The number of minutes you specify may be slightly different than what is displayed.|
|»» Seconds|integer|true|none|The number of seconds you specify may be slightly different than what is displayed.|
|» ParentTask|object¦null|false|none|Set the current task as a child of another task. A parent task must belong to this customer, and must not be closed.|
|»» ID|integer|false|none|none|
|»» Subject|string|false|none|none|
|»» AssignedTo|object¦null|false|none|Deprecated: AssignedTo field is deprecated. Please specify either AssignedTo (Deprecated) or Assignees (Preferred). When both provided AssignedTo will be ignored.|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» Assignees|[object]¦null|false|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»»» Assigning Staff|object|false|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»»»» ID|integer|true|none|Employee ID of the staff member|
|»»»» Name|string|true|none|Name of the staff member|
|»»»» Type|string|true|none|Staff type|
|»»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|»» CompletedBy|object¦null|false|none|Set the staff member which the task will be completed by. Must be an employee or contractor; it cannot be a plant item.|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» DueDate|string(date)¦null|false|none|When the task becomes overdue, you will receive an alert in simPRO.|
|»» PercentComplete|integer|false|none|Displays task progress percentage.|
|» SubTasks|[object]|true|none|Displays the child tasks that linked to the current task.|
|»» ID|integer|true|none|none|
|»» Subject|string|true|none|none|
|»» AssignedTo|object¦null|true|none|Deprecated: AssignedTo field is deprecated. Please specify either AssignedTo (Deprecated) or Assignees (Preferred). When both provided AssignedTo will be ignored.|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» Assignees|[object]¦null|true|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»»» Assigning Staff|object|false|none|Set the staff members which the task will be assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»»»» ID|integer|true|none|Employee ID of the staff member|
|»»»» Name|string|true|none|Name of the staff member|
|»»»» Type|string|true|none|Staff type|
|»»»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|»» CompletedBy|object¦null|true|none|Set the staff member which the task will be completed by. Must be an employee or contractor; it cannot be a plant item.|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» DueDate|string(date)¦null|true|none|When the task becomes overdue, you will receive an alert in simPRO.|
|»» PercentComplete|integer|true|none|Displays task progress percentage.|
|» CustomFields|[object]|true|none|All of the custom fields for this job cost center task. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» PercentComplete|integer|true|none|Displays task progress percentage.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
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
|Status|None|
|Status|PendingBehind|
|Status|Pending|
|Status|PendingAhead|
|Status|ActiveBehind|
|Status|Active|
|Status|ActiveAhead|
|Status|ClosedBehind|
|Status|Closed|
|Status|ClosedAhead|
|Priority|VeryLow|
|Priority|Low|
|Priority|MediumLow|
|Priority|Medium|
|Priority|MediumHigh|
|Priority|High|
|Priority|VeryHigh|
|Priority|Urgent|
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
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>