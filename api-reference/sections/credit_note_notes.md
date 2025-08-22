# Credit Note Notes

## eb5192ecbfcc5f7b204804d9b2191966

<a id="opIdeb5192ecbfcc5f7b204804d9b2191966"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/`

*List all credit note notes.*

<h3 id="eb5192ecbfcc5f7b204804d9b2191966-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|creditNoteID|path|integer|true|A valid credit note id|
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

<h3 id="eb5192ecbfcc5f7b204804d9b2191966-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all credit note notes.|Inline|

<h3 id="eb5192ecbfcc5f7b204804d9b2191966-responseschema">Response Schema</h3>

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

## 2a56108fac42e301859ce7f78b7b7c1a

<a id="opId2a56108fac42e301859ce7f78b7b7c1a"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/ \
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

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/`

*Create a new note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0
}
```

<h3 id="2a56108fac42e301859ce7f78b7b7c1a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|creditNoteID|path|integer|true|A valid credit note id|
|body|body|object|true|Note object|
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

<h3 id="2a56108fac42e301859ce7f78b7b7c1a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Note created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="2a56108fac42e301859ce7f78b7b7c1a-responseschema">Response Schema</h3>

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

## f7163d4caa08255bfccf1ca730210afb

<a id="opIdf7163d4caa08255bfccf1ca730210afb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}`

*Retrieve details for a specific note.*

<h3 id="f7163d4caa08255bfccf1ca730210afb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|creditNoteID|path|integer|true|A valid credit note id|
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

<h3 id="f7163d4caa08255bfccf1ca730210afb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Note details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Note not found.|None|

<h3 id="f7163d4caa08255bfccf1ca730210afb-responseschema">Response Schema</h3>

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

## b0aa894bd649dae6e522ef47e4fff001

<a id="opIdb0aa894bd649dae6e522ef47e4fff001"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID} \
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

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}`

*Update a note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0
}
```

<h3 id="b0aa894bd649dae6e522ef47e4fff001-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|creditNoteID|path|integer|true|A valid credit note id|
|noteID|path|integer|true|A valid note id|
|body|body|object|true|Note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
|» AssignTo|body|integer|false|ID of a staff|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b0aa894bd649dae6e522ef47e4fff001-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Note updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 0f0af7098e040190a2a8052b0ecc0521

<a id="opId0f0af7098e040190a2a8052b0ecc0521"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/invoices/{invoiceID}/creditNotes/{creditNoteID}/notes/{noteID}`

*Delete a note.*

<h3 id="0f0af7098e040190a2a8052b0ecc0521-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|creditNoteID|path|integer|true|A valid credit note id|
|noteID|path|integer|true|A valid note id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0f0af7098e040190a2a8052b0ecc0521-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Note deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Note does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>