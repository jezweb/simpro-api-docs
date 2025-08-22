# Activity Schedules

## 97958da4764b1ffc1373faa75ff94499

<a id="opId97958da4764b1ffc1373faa75ff94499"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/activitySchedules/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/activitySchedules/',
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

r = requests.get('/api/v1.0/companies/{companyID}/activitySchedules/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/activitySchedules/`

*List all activity schedules.*

<h3 id="97958da4764b1ffc1373faa75ff94499-parameters">Parameters</h3>

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
    "TotalHours": 1.57,
    "Staff": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Date": "2021-04-22",
    "Activity": {
      "ID": 12345,
      "Name": "Annual Leave"
    }
  }
]
```

<h3 id="97958da4764b1ffc1373faa75ff94499-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all activity schedules.|Inline|

<h3 id="97958da4764b1ffc1373faa75ff94499-responseschema">Response Schema</h3>

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
|» Activity|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 69703003ab1a94d24db14ebbc7917709

<a id="opId69703003ab1a94d24db14ebbc7917709"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/activitySchedules/ \
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
  ],
  "Activity": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/activitySchedules/',
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

r = requests.post('/api/v1.0/companies/{companyID}/activitySchedules/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/activitySchedules/`

*Create a new activity schedule.*

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
  ],
  "Activity": 0
}
```

<h3 id="69703003ab1a94d24db14ebbc7917709-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Activity schedule object|
|» Notes|body|string¦null|false|This column supports HTML formatting.|
|» IsLocked|body|boolean|false|none|
|» Staff|body|integer|true|ID of a staff|
|» Date|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Blocks|body|[object]|true|none|
|»» StartTime|body|string|false|Between 00:00 and 24:00|
|»» EndTime|body|string|false|Between 00:00 and 24:00|
|»» ScheduleRate|body|integer|false|ID of a schedule rate|
|» Activity|body|integer|true|ID of a activity|

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
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Activity": {
    "ID": 12345,
    "Name": "Annual Leave"
  }
}
```

<h3 id="69703003ab1a94d24db14ebbc7917709-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Activity schedule created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="69703003ab1a94d24db14ebbc7917709-responseschema">Response Schema</h3>

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
|» Activity|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 84a4bf8b991d198492a4708691b4351c

<a id="opId84a4bf8b991d198492a4708691b4351c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/activitySchedules/{scheduleID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}`

*Retrieve details for a specific activity schedule.*

<h3 id="84a4bf8b991d198492a4708691b4351c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Activity": {
    "ID": 12345,
    "Name": "Annual Leave"
  }
}
```

<h3 id="84a4bf8b991d198492a4708691b4351c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Activity schedule details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Activity schedule not found.|None|

<h3 id="84a4bf8b991d198492a4708691b4351c-responseschema">Response Schema</h3>

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
|» Activity|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 170389c38aa93a87ac8bdad7e8a19e8c

<a id="opId170389c38aa93a87ac8bdad7e8a19e8c"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/activitySchedules/{scheduleID} \
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
  ],
  "Activity": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}`

*Update a activity schedule.*

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
  ],
  "Activity": 0
}
```

<h3 id="170389c38aa93a87ac8bdad7e8a19e8c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|scheduleID|path|integer|true|A valid schedule id|
|body|body|object|true|Activity schedule object|
|» Notes|body|string¦null|false|This column supports HTML formatting.|
|» IsLocked|body|boolean|false|none|
|» Staff|body|integer|false|ID of a staff|
|» Date|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Blocks|body|[object]|false|none|
|»» StartTime|body|string|false|Between 00:00 and 24:00|
|»» EndTime|body|string|false|Between 00:00 and 24:00|
|»» ScheduleRate|body|integer|false|ID of a schedule rate|
|» Activity|body|integer|false|ID of a activity|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="170389c38aa93a87ac8bdad7e8a19e8c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Activity schedule updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 72fb899d96b9ece4944450ebb0bf50f5

<a id="opId72fb899d96b9ece4944450ebb0bf50f5"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/activitySchedules/{scheduleID}`

*Delete a activity schedule.*

<h3 id="72fb899d96b9ece4944450ebb0bf50f5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|scheduleID|path|integer|true|A valid schedule id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="72fb899d96b9ece4944450ebb0bf50f5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Activity schedule deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Activity schedule does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>