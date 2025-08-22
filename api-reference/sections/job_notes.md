# Job Notes

## 61909e2754f824f4596f4bea321d1239

<a id="opId61909e2754f824f4596f4bea321d1239"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/`

*List all job notes.*

<h3 id="61909e2754f824f4596f4bea321d1239-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
    "Visibility": {
      "Customer": true,
      "Admin": true
    },
    "Reference": {
      "Type": "string",
      "Number": "string",
      "Text": "string"
    }
  }
]
```

<h3 id="61909e2754f824f4596f4bea321d1239-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job notes.|Inline|

<h3 id="61909e2754f824f4596f4bea321d1239-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|true|none|Subject of a note.|
|» Visibility|object|true|none|none|
|»» Customer|boolean|true|none|none|
|»» Admin|boolean|true|none|none|
|» Reference|object|true|none|none|
|»» Type|string¦null|false|none|Type of a note.|
|»» Number|string¦null|false|none|A reference Number of the provided type.|
|»» Text|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 145fb5e8fdf8b9db6c6ba360e0c4ec1d

<a id="opId145fb5e8fdf8b9db6c6ba360e0c4ec1d"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "Visibility": {
    "Customer": true
  },
  "AssignTo": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/`

*Create a new job note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "Visibility": {
    "Customer": true
  },
  "AssignTo": 0
}
```

<h3 id="145fb5e8fdf8b9db6c6ba360e0c4ec1d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|body|body|object|true|Job note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
|» Visibility|body|object|false|none|
|»» Customer|body|boolean|false|none|
|» AssignTo|body|integer|false|ID of a staff|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Subject": "string",
  "Note": "string",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "FollowUpDate": "2021-04-22",
  "Visibility": {
    "Customer": true,
    "Admin": true
  },
  "Attachments": [
    {
      "_href": "string",
      "FileName": "string"
    }
  ],
  "AssignTo": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "SubmittedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Reference": {
    "Type": "string",
    "Number": "string",
    "Text": "string"
  }
}
```

<h3 id="145fb5e8fdf8b9db6c6ba360e0c4ec1d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job note created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="145fb5e8fdf8b9db6c6ba360e0c4ec1d-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|false|none|Subject of a note.|
|» Note|string¦null|false|none|Note. This column supports HTML formatting.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» FollowUpDate|string(date)¦null|false|none|Follow up date of a note.|
|» Visibility|object|true|none|none|
|»» Customer|boolean|true|none|none|
|»» Admin|boolean|true|none|none|
|» Attachments|[object]|true|none|none|
|»» _href|string|true|none|none|
|»» FileName|string|true|none|none|
|» AssignTo|object¦null|false|none|The staff member which this note is assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» SubmittedBy|object¦null|false|none|The staff member which this note was submitted by. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Reference|object|true|none|none|
|»» Type|string¦null|false|none|Type of a note.|
|»» Number|string¦null|false|none|A reference Number of the provided type.|
|»» Text|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## a800c5f997273a63940c26b725f93c61

<a id="opIda800c5f997273a63940c26b725f93c61"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}`

*Retrieve details for a specific job note.*

<h3 id="a800c5f997273a63940c26b725f93c61-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|noteID|path|integer|true|A valid note id|
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
  "Note": "string",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "FollowUpDate": "2021-04-22",
  "Visibility": {
    "Customer": true,
    "Admin": true
  },
  "Attachments": [
    {
      "_href": "string",
      "FileName": "string"
    }
  ],
  "AssignTo": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "SubmittedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Reference": {
    "Type": "string",
    "Number": "string",
    "Text": "string"
  }
}
```

<h3 id="a800c5f997273a63940c26b725f93c61-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job note details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job note not found.|None|

<h3 id="a800c5f997273a63940c26b725f93c61-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|false|none|Subject of a note.|
|» Note|string¦null|false|none|Note. This column supports HTML formatting.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» FollowUpDate|string(date)¦null|false|none|Follow up date of a note.|
|» Visibility|object|true|none|none|
|»» Customer|boolean|true|none|none|
|»» Admin|boolean|true|none|none|
|» Attachments|[object]|true|none|none|
|»» _href|string|true|none|none|
|»» FileName|string|true|none|none|
|» AssignTo|object¦null|false|none|The staff member which this note is assigned to. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» SubmittedBy|object¦null|false|none|The staff member which this note was submitted by. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Reference|object|true|none|none|
|»» Type|string¦null|false|none|Type of a note.|
|»» Number|string¦null|false|none|A reference Number of the provided type.|
|»» Text|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## a7fe40f70ee4fd8e0f155cf99b49a0ef

<a id="opIda7fe40f70ee4fd8e0f155cf99b49a0ef"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "Visibility": {
    "Customer": true
  },
  "AssignTo": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}`

*Update a job note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "Visibility": {
    "Customer": true
  },
  "AssignTo": 0
}
```

<h3 id="a7fe40f70ee4fd8e0f155cf99b49a0ef-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|noteID|path|integer|true|A valid note id|
|body|body|object|true|Job note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
|» Visibility|body|object|false|none|
|»» Customer|body|boolean|false|none|
|» AssignTo|body|integer|false|ID of a staff|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a7fe40f70ee4fd8e0f155cf99b49a0ef-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job note updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 94787bb8b57fa7fb9b82595ffd05b673

<a id="opId94787bb8b57fa7fb9b82595ffd05b673"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/notes/jobs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/notes/jobs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/notes/jobs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/notes/jobs/`

*List all notes.*

<h3 id="94787bb8b57fa7fb9b82595ffd05b673-parameters">Parameters</h3>

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
    "Subject": "string",
    "Visibility": {
      "Customer": true,
      "Admin": true
    },
    "Job": {
      "ID": 12345,
      "Name": "string"
    },
    "_href": "/api/v1.0/companies/{companyID}/jobs/{jobID}/notes/{noteID}"
  }
]
```

<h3 id="94787bb8b57fa7fb9b82595ffd05b673-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all notes.|Inline|

<h3 id="94787bb8b57fa7fb9b82595ffd05b673-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|true|none|Subject of a note.|
|» Visibility|object|true|none|none|
|»» Customer|boolean|true|none|none|
|»» Admin|boolean|true|none|none|
|» Job|object|true|none|none|
|»» ID|integer|true|none|This job's ID|
|»» Name|string|true|none|none|
|» _href|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>