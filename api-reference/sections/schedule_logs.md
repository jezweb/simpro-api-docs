# Schedule Logs

## 4a61eac4b2b1be9884c3f95f78c284b1

<a id="opId4a61eac4b2b1be9884c3f95f78c284b1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/logs/schedules/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/logs/schedules/',
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

r = requests.get('/api/v1.0/companies/{companyID}/logs/schedules/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/logs/schedules/`

*List all schedule logs.*

<h3 id="4a61eac4b2b1be9884c3f95f78c284b1-parameters">Parameters</h3>

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
    "ScheduleID": "string",
    "Message": "string",
    "Staff": {
      "ID": 123,
      "Name": "John Smith"
    },
    "DateLogged": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="4a61eac4b2b1be9884c3f95f78c284b1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all schedule logs.|Inline|

<h3 id="4a61eac4b2b1be9884c3f95f78c284b1-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ScheduleID|string¦null|true|none|none|
|» Message|string|true|none|none|
|» Staff|object¦null|true|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|» DateLogged|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## f01c79209c8e773f1c8cf8d4ea7bc4f5

<a id="opIdf01c79209c8e773f1c8cf8d4ea7bc4f5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/logs/schedules/{logID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/logs/schedules/{logID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/logs/schedules/{logID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/logs/schedules/{logID}`

*Retrieve details for a specific schedule log.*

<h3 id="f01c79209c8e773f1c8cf8d4ea7bc4f5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|logID|path|integer|true|A valid log id|
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
  "ScheduleID": "string",
  "Message": "string",
  "Staff": {
    "ID": 123,
    "Name": "John Smith"
  },
  "ScheduleEmployee": {
    "ID": 123,
    "Name": "John Smith"
  },
  "Type": "Activity",
  "DateLogged": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="f01c79209c8e773f1c8cf8d4ea7bc4f5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Schedule log details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Schedule log not found.|None|

<h3 id="f01c79209c8e773f1c8cf8d4ea7bc4f5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ScheduleID|string¦null|false|none|none|
|» Message|string|true|none|none|
|» Staff|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|» ScheduleEmployee|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|» Type|string|true|none|none|
|» DateLogged|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Activity|
|Type|Job|
|Type|Lead|
|Type|Quote|

<aside class="success">
This operation does not require authentication
</aside>