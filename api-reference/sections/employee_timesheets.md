# Employee Timesheets

## f1cab1d030a2b917819482f2b7f806f9

<a id="opIdf1cab1d030a2b917819482f2b7f806f9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/timesheets/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/timesheets/',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/timesheets/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/timesheets/`

*List all employee timesheets.*

<h3 id="f1cab1d030a2b917819482f2b7f806f9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|StartDate|query|date|false|Set the start date of an employee time sheet|
|EndDate|query|date|false|Set the end date of an employee time sheet|
|Includes|query|array[string]|false|Set the type of schedule required.|
|ScheduleType|query|string|false|Set the type of schedule for timesheet|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|search|all|
|search|any|
|ScheduleType|Schedule|
|ScheduleType|WorkOrders|

> Example responses

> 200 Response

```json
[
  {
    "ScheduleType": "Job",
    "Reference": "23491-233",
    "_href": "/api/v1.0/companies/0/jobs/23491/sections/1388/costCenters/233/schedules/2231",
    "Date": "string",
    "StartTime": "string",
    "EndTime": "string",
    "TotalHrs": 1.57,
    "Cost": 1.57
  }
]
```

<h3 id="f1cab1d030a2b917819482f2b7f806f9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all employee timesheets.|Inline|

<h3 id="f1cab1d030a2b917819482f2b7f806f9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ScheduleType|string|true|none|none|
|» Reference|string|true|none|none|
|» _href|string|true|none|none|
|» Date|string|true|none|To search by Date, please set ?StartDate=YYYY-mm-dd&EndDate=YYYY-mm-dd|
|» StartTime|string|true|none|Range from 00:00 to 24:00|
|» EndTime|string|true|none|Range from 00:00 to 24:00|
|» TotalHrs|number|true|none|none|
|» Cost|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|ScheduleType|Activity|
|ScheduleType|Job|
|ScheduleType|Lead|
|ScheduleType|Quote|

<aside class="success">
This operation does not require authentication
</aside>