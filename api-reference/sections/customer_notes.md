# Customer Notes

## 19f23f8beb400fece4ed3a89f9f96497

<a id="opId19f23f8beb400fece4ed3a89f9f96497"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/notes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/notes/`

*List all customer notes.*

<h3 id="19f23f8beb400fece4ed3a89f9f96497-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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
      "Type": "Message",
      "Number": "string",
      "Text": "string"
    }
  }
]
```

<h3 id="19f23f8beb400fece4ed3a89f9f96497-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer notes.|Inline|

<h3 id="19f23f8beb400fece4ed3a89f9f96497-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|true|none|Subject of a note.|
|» Reference|object|true|none|none|
|»» Type|string¦null|false|none|Type of a note.|
|»» Number|string¦null|false|none|A reference Number of the provided type.|
|»» Text|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Message|
|Type|Lead|
|Type|Quote|
|Type|Job|
|Type|Invoice|
|Type|Task|
|Type|Phone|
|Type|Email|
|Type|Work Method|
|Type|Campaign|
|Type|Recurring|
|Type|Tasks|
|Type|Payment|
|Type|SupplierOrder|
|Type|ContractorJob|
|Type|Statement|
|Type|Licence Expiry|

<aside class="success">
This operation does not require authentication
</aside>

## 093681da55d55b7607b42324f9d185f8

<a id="opId093681da55d55b7607b42324f9d185f8"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/notes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0,
  "Reference": {
    "Type": "Message",
    "Number": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/notes/`

*Create a new customer note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0,
  "Reference": {
    "Type": "Message",
    "Number": 0
  }
}
```

<h3 id="093681da55d55b7607b42324f9d185f8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|body|body|object|true|Customer note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
|» AssignTo|body|integer|false|ID of a staff|
|» Reference|body|object|false|none|
|»» Type|body|string¦null|false|Type of a note.|
|»» Number|body|integer¦null|false|A reference Number of the provided type.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» Type|Message|
|»» Type|Lead|
|»» Type|Quote|
|»» Type|Job|
|»» Type|Invoice|
|»» Type|Task|
|»» Type|Phone|
|»» Type|Email|
|»» Type|Work Method|
|»» Type|Campaign|
|»» Type|Recurring|
|»» Type|Tasks|
|»» Type|Payment|
|»» Type|SupplierOrder|
|»» Type|ContractorJob|
|»» Type|Statement|
|»» Type|Licence Expiry|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Subject": "string",
  "Note": "string",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "FollowUpDate": "2021-04-22",
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
    "Type": "Message",
    "Number": "string",
    "Text": "string"
  }
}
```

<h3 id="093681da55d55b7607b42324f9d185f8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer note created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="093681da55d55b7607b42324f9d185f8-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|false|none|Subject of a note.|
|» Note|string¦null|false|none|Note. This column supports HTML formatting.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» FollowUpDate|string(date)¦null|false|none|Follow up date of a note.|
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
|Type|Message|
|Type|Lead|
|Type|Quote|
|Type|Job|
|Type|Invoice|
|Type|Task|
|Type|Phone|
|Type|Email|
|Type|Work Method|
|Type|Campaign|
|Type|Recurring|
|Type|Tasks|
|Type|Payment|
|Type|SupplierOrder|
|Type|ContractorJob|
|Type|Statement|
|Type|Licence Expiry|

<aside class="success">
This operation does not require authentication
</aside>

## 2b81f369f769b5fa5b3af213fbe4f405

<a id="opId2b81f369f769b5fa5b3af213fbe4f405"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}`

*Retrieve details for a specific customer note.*

<h3 id="2b81f369f769b5fa5b3af213fbe4f405-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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
    "Type": "Message",
    "Number": "string",
    "Text": "string"
  }
}
```

<h3 id="2b81f369f769b5fa5b3af213fbe4f405-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer note details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer note not found.|None|

<h3 id="2b81f369f769b5fa5b3af213fbe4f405-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|false|none|Subject of a note.|
|» Note|string¦null|false|none|Note. This column supports HTML formatting.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» FollowUpDate|string(date)¦null|false|none|Follow up date of a note.|
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
|Type|Message|
|Type|Lead|
|Type|Quote|
|Type|Job|
|Type|Invoice|
|Type|Task|
|Type|Phone|
|Type|Email|
|Type|Work Method|
|Type|Campaign|
|Type|Recurring|
|Type|Tasks|
|Type|Payment|
|Type|SupplierOrder|
|Type|ContractorJob|
|Type|Statement|
|Type|Licence Expiry|

<aside class="success">
This operation does not require authentication
</aside>

## 92926f487bba34f39dd1f5236aa10d32

<a id="opId92926f487bba34f39dd1f5236aa10d32"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0,
  "Reference": {
    "Type": "Message",
    "Number": 0
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}`

*Update a customer note.*

> Body parameter

```json
{
  "Subject": "string",
  "Note": "string",
  "FollowUpDate": "2021-04-22",
  "AssignTo": 0,
  "Reference": {
    "Type": "Message",
    "Number": 0
  }
}
```

<h3 id="92926f487bba34f39dd1f5236aa10d32-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|noteID|path|integer|true|A valid note id|
|body|body|object|true|Customer note object|
|» Subject|body|string¦null|false|Subject of a note.|
|» Note|body|string¦null|false|Note. This column supports HTML formatting.|
|» FollowUpDate|body|string(date)¦null|false|Follow up date of a note.|
|» AssignTo|body|integer|false|ID of a staff|
|» Reference|body|object|false|none|
|»» Type|body|string¦null|false|Type of a note.|
|»» Number|body|integer¦null|false|A reference Number of the provided type.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» Type|Message|
|»» Type|Lead|
|»» Type|Quote|
|»» Type|Job|
|»» Type|Invoice|
|»» Type|Task|
|»» Type|Phone|
|»» Type|Email|
|»» Type|Work Method|
|»» Type|Campaign|
|»» Type|Recurring|
|»» Type|Tasks|
|»» Type|Payment|
|»» Type|SupplierOrder|
|»» Type|ContractorJob|
|»» Type|Statement|
|»» Type|Licence Expiry|

<h3 id="92926f487bba34f39dd1f5236aa10d32-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer note updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2364bd52a0ba99dc35012dff3a1b96cb

<a id="opId2364bd52a0ba99dc35012dff3a1b96cb"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}`

*Delete a customer note.*

<h3 id="2364bd52a0ba99dc35012dff3a1b96cb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|noteID|path|integer|true|A valid note id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2364bd52a0ba99dc35012dff3a1b96cb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer note deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer note does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 79d3d23a5c974d4d8deacb8b899656be

<a id="opId79d3d23a5c974d4d8deacb8b899656be"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/notes/customers/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/notes/customers/',
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

r = requests.get('/api/v1.0/companies/{companyID}/notes/customers/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/notes/customers/`

*List all notes.*

<h3 id="79d3d23a5c974d4d8deacb8b899656be-parameters">Parameters</h3>

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
    "Customer": {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    },
    "_href": "/api/v1.0/companies/{companyID}/customers/{customerID}/notes/{noteID}"
  }
]
```

<h3 id="79d3d23a5c974d4d8deacb8b899656be-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all notes.|Inline|

<h3 id="79d3d23a5c974d4d8deacb8b899656be-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a Note.|
|» Subject|string¦null|true|none|Subject of a note.|
|» Visibility|object|true|none|none|
|»» Customer|boolean|true|none|none|
|»» Admin|boolean|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» _href|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>