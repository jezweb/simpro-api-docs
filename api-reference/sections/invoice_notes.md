# Invoice Notes

## fb77430d8d7ffaf04a5363528d79dadb

<a id="opIdfb77430d8d7ffaf04a5363528d79dadb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/`

*List all invoice notes.*

<h3 id="fb77430d8d7ffaf04a5363528d79dadb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
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
    "Reference": {
      "Number": "string",
      "Text": "string"
    }
  }
]
```

<h3 id="fb77430d8d7ffaf04a5363528d79dadb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all invoice notes.|Inline|

<h3 id="fb77430d8d7ffaf04a5363528d79dadb-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|true|none|Subject of a note.|
|» Reference|object|true|none|none|
|»» Number|string¦null|false|none|A reference Number of the provided type.|
|»» Text|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 2e86b106de52e094aeae3729a56e1201

<a id="opId2e86b106de52e094aeae3729a56e1201"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/`

*Create a new invoice note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0
}
```

<h3 id="2e86b106de52e094aeae3729a56e1201-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|body|body|object|true|Invoice Note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
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
    "Number": "string",
    "Text": "string"
  }
}
```

<h3 id="2e86b106de52e094aeae3729a56e1201-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Invoice Note created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="2e86b106de52e094aeae3729a56e1201-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|false|none|Subject of a note.|
|» Note|string¦null|false|none|Note. This column supports HTML formatting.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» FollowUpDate|string(date)¦null|false|none|Follow up date of a note.|
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

## 01e14d1ec799eab3ed2b86d449f551cb

<a id="opId01e14d1ec799eab3ed2b86d449f551cb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}`

*Retrieve details for a specific invoice note.*

<h3 id="01e14d1ec799eab3ed2b86d449f551cb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
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
    "Number": "string",
    "Text": "string"
  }
}
```

<h3 id="01e14d1ec799eab3ed2b86d449f551cb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Invoice Note details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Invoice Note not found.|None|

<h3 id="01e14d1ec799eab3ed2b86d449f551cb-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|false|none|Subject of a note.|
|» Note|string¦null|false|none|Note. This column supports HTML formatting.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» FollowUpDate|string(date)¦null|false|none|Follow up date of a note.|
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

## bda44bf70c8bf487bbddc4c923f555a9

<a id="opIdbda44bf70c8bf487bbddc4c923f555a9"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}`

*Update a invoice note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0
}
```

<h3 id="bda44bf70c8bf487bbddc4c923f555a9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|noteID|path|integer|true|A valid note id|
|body|body|object|true|Invoice Note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
|» AssignTo|body|integer|false|ID of a staff|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="bda44bf70c8bf487bbddc4c923f555a9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Invoice Note updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 3ddb7e117522fb5603ca52b3f1a2319d

<a id="opId3ddb7e117522fb5603ca52b3f1a2319d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/invoices/{invoiceID}/notes/{noteID}`

*Delete a invoice note.*

<h3 id="3ddb7e117522fb5603ca52b3f1a2319d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|noteID|path|integer|true|A valid note id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3ddb7e117522fb5603ca52b3f1a2319d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Invoice Note deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Invoice Note does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>