# Job Logs

## 17935fafe877f6afc2eb178e09c14a0b

<a id="opId17935fafe877f6afc2eb178e09c14a0b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/logs/jobs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/logs/jobs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/logs/jobs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/logs/jobs/`

*List all job logs.*

<h3 id="17935fafe877f6afc2eb178e09c14a0b-parameters">Parameters</h3>

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
    "JobID": "string",
    "Message": "string",
    "Staff": {
      "ID": 123,
      "Name": "John Smith"
    },
    "DateLogged": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="17935fafe877f6afc2eb178e09c14a0b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job logs.|Inline|

<h3 id="17935fafe877f6afc2eb178e09c14a0b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» JobID|string¦null|true|none|none|
|» Message|string|true|none|none|
|» Staff|object¦null|true|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|» DateLogged|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## 47d494e4fd9891fa4ab1847eec2dc6b1

<a id="opId47d494e4fd9891fa4ab1847eec2dc6b1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/logs/jobs/{logID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/logs/jobs/{logID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/logs/jobs/{logID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/logs/jobs/{logID}`

*Retrieve details for a specific job log.*

<h3 id="47d494e4fd9891fa4ab1847eec2dc6b1-parameters">Parameters</h3>

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
  "JobID": "string",
  "Message": "string",
  "Staff": {
    "ID": 123,
    "Name": "John Smith"
  },
  "DateLogged": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="47d494e4fd9891fa4ab1847eec2dc6b1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job log details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job log not found.|None|

<h3 id="47d494e4fd9891fa4ab1847eec2dc6b1-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» JobID|string¦null|false|none|none|
|» Message|string|true|none|none|
|» Staff|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|» DateLogged|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>