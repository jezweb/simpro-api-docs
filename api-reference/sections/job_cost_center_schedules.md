# Job Cost Center Schedules

## dac50032ac7e8292713e3ebeac3576d6

<a id="opIddac50032ac7e8292713e3ebeac3576d6"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/`

*List all job cost center schedules.*

<h3 id="dac50032ac7e8292713e3ebeac3576d6-parameters">Parameters</h3>

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
    "TotalHours": 1.57,
    "Staff": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Date": "2021-04-22"
  }
]
```

<h3 id="dac50032ac7e8292713e3ebeac3576d6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center schedules.|Inline|

<h3 id="dac50032ac7e8292713e3ebeac3576d6-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» TotalHours|number|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 1e26bec2889a4a629e178d71d4b48ce2

<a id="opId1e26bec2889a4a629e178d71d4b48ce2"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Notes": "string",
  "IsLocked": true,
  "Staff": 0,
  "Date": "2021-04-22",
  "Blocks": [
    {
      "StartTime": "08:00",
      "EndTime": "16:00",
      "ScheduleRate": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/`

*Create a new job cost center schedule.*

> Body parameter

```json
{
  "Notes": "string",
  "IsLocked": true,
  "Staff": 0,
  "Date": "2021-04-22",
  "Blocks": [
    {
      "StartTime": "08:00",
      "EndTime": "16:00",
      "ScheduleRate": 0
    }
  ]
}
```

<h3 id="1e26bec2889a4a629e178d71d4b48ce2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job cost center schedule object|
|» Notes|body|string¦null|false|This column supports HTML formatting.|
|» IsLocked|body|boolean|false|none|
|» Staff|body|integer|true|ID of a staff|
|» Date|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Blocks|body|[object]|true|none|
|»» StartTime|body|string|false|Between 00:00 and 24:00|
|»» EndTime|body|string|false|Between 00:00 and 24:00|
|»» ScheduleRate|body|integer|false|ID of a schedule rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "TotalHours": 1.57,
  "Notes": "string",
  "IsLocked": true,
  "RecurringScheduleID": 0,
  "Staff": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Date": "2021-04-22",
  "Blocks": [
    {
      "Hrs": 8,
      "StartTime": "08:00",
      "ISO8601StartTime": "2018-05-21T19:53:39+10:00",
      "EndTime": "16:00",
      "ISO8601EndTime": "2018-05-21T19:53:39+10:00",
      "ScheduleRate": {
        "ID": 12345,
        "Name": "Overtime"
      }
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="1e26bec2889a4a629e178d71d4b48ce2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center schedule created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="1e26bec2889a4a629e178d71d4b48ce2-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» TotalHours|number|true|none|none|
|» Notes|string¦null|false|none|This column supports HTML formatting.|
|» IsLocked|boolean|true|none|none|
|» RecurringScheduleID|integer|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Blocks|[object]|true|none|none|
|»» Hrs|number|true|none|Duration in hours.|
|»» StartTime|string|true|none|Between 00:00 and 24:00|
|»» ISO8601StartTime|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» EndTime|string|true|none|Between 00:00 and 24:00|
|»» ISO8601EndTime|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» ScheduleRate|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 9b3a969eb478bc59e6feb930b9b70672

<a id="opId9b3a969eb478bc59e6feb930b9b70672"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}`

*Retrieve details for a specific job cost center schedule.*

<h3 id="9b3a969eb478bc59e6feb930b9b70672-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|scheduleID|path|integer|true|A valid schedule id|
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
  "TotalHours": 1.57,
  "Notes": "string",
  "IsLocked": true,
  "RecurringScheduleID": 0,
  "Staff": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Date": "2021-04-22",
  "Blocks": [
    {
      "Hrs": 8,
      "StartTime": "08:00",
      "ISO8601StartTime": "2018-05-21T19:53:39+10:00",
      "EndTime": "16:00",
      "ISO8601EndTime": "2018-05-21T19:53:39+10:00",
      "ScheduleRate": {
        "ID": 12345,
        "Name": "Overtime"
      }
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="9b3a969eb478bc59e6feb930b9b70672-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center schedule details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center schedule not found.|None|

<h3 id="9b3a969eb478bc59e6feb930b9b70672-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» TotalHours|number|true|none|none|
|» Notes|string¦null|false|none|This column supports HTML formatting.|
|» IsLocked|boolean|true|none|none|
|» RecurringScheduleID|integer|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Blocks|[object]|true|none|none|
|»» Hrs|number|true|none|Duration in hours.|
|»» StartTime|string|true|none|Between 00:00 and 24:00|
|»» ISO8601StartTime|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» EndTime|string|true|none|Between 00:00 and 24:00|
|»» ISO8601EndTime|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» ScheduleRate|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 3c9af9b5c42155ab3ae0dcaf8810a474

<a id="opId3c9af9b5c42155ab3ae0dcaf8810a474"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Notes": "string",
  "IsLocked": true,
  "Staff": 0,
  "Date": "2021-04-22",
  "Blocks": [
    {
      "StartTime": "08:00",
      "EndTime": "16:00",
      "ScheduleRate": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}`

*Update a job cost center schedule.*

> Body parameter

```json
{
  "Notes": "string",
  "IsLocked": true,
  "Staff": 0,
  "Date": "2021-04-22",
  "Blocks": [
    {
      "StartTime": "08:00",
      "EndTime": "16:00",
      "ScheduleRate": 0
    }
  ]
}
```

<h3 id="3c9af9b5c42155ab3ae0dcaf8810a474-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|scheduleID|path|integer|true|A valid schedule id|
|body|body|object|true|Job cost center schedule object|
|» Notes|body|string¦null|false|This column supports HTML formatting.|
|» IsLocked|body|boolean|false|none|
|» Staff|body|integer|false|ID of a staff|
|» Date|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Blocks|body|[object]|false|none|
|»» StartTime|body|string|false|Between 00:00 and 24:00|
|»» EndTime|body|string|false|Between 00:00 and 24:00|
|»» ScheduleRate|body|integer|false|ID of a schedule rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3c9af9b5c42155ab3ae0dcaf8810a474-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center schedule updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## a5d3a5e4fc2834c6fab608b7f11c38ac

<a id="opIda5d3a5e4fc2834c6fab608b7f11c38ac"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/schedules/{scheduleID}`

*Delete a job cost center schedule.*

<h3 id="a5d3a5e4fc2834c6fab608b7f11c38ac-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|scheduleID|path|integer|true|A valid schedule id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a5d3a5e4fc2834c6fab608b7f11c38ac-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center schedule deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center schedule does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>