# Employee Licence Attachments

## 2f53ee6338ddb4129d9a7a643855a5b4

<a id="opId2f53ee6338ddb4129d9a7a643855a5b4"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/`

*List all employee licence attachments.*

<h3 id="2f53ee6338ddb4129d9a7a643855a5b4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
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
    "ID": "string",
    "Filename": "Product Image.jpg"
  }
]
```

<h3 id="2f53ee6338ddb4129d9a7a643855a5b4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all employee licence attachments.|Inline|

<h3 id="2f53ee6338ddb4129d9a7a643855a5b4-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 8fa5b5287f9fe8611280babb6a3cd053

<a id="opId8fa5b5287f9fe8611280babb6a3cd053"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Filename": "Product Image.jpg",
  "Base64Data": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/',
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

r = requests.post('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/`

*Create a new employee licence attachment.*

> Body parameter

```json
{
  "Filename": "Product Image.jpg",
  "Base64Data": "string"
}
```

<h3 id="8fa5b5287f9fe8611280babb6a3cd053-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
|body|body|object|true|Employee Licence Attachment object|
|» Filename|body|string|true|none|
|» Base64Data|body|string(byte)|true|Base 64 encoded file content. Use parameter `?display=Base64` in the URL inorder to get Base64 data as part of the response of GET Request.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": "string",
  "Filename": "Product Image.jpg",
  "MimeType": "string",
  "FileSizeBytes": 0,
  "DateAdded": "2018-05-21T19:53:39+10:00",
  "AddedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  }
}
```

<h3 id="8fa5b5287f9fe8611280babb6a3cd053-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Employee Licence Attachment created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="8fa5b5287f9fe8611280babb6a3cd053-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|
|» MimeType|string|true|none|Attachment mine type. (Read Only)|
|» FileSizeBytes|integer|true|none|Attachment size in bytes. (Read Only)|
|» DateAdded|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» AddedBy|object¦null|false|none|Employee uploading the attachment.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 1ce5514cfd15065720c2ea6d12e4720f

<a id="opId1ce5514cfd15065720c2ea6d12e4720f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}`

*Retrieve details for a specific employee licence attachment.*

<h3 id="1ce5514cfd15065720c2ea6d12e4720f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
|fileID|path|integer|true|A valid file id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": "string",
  "Filename": "Product Image.jpg",
  "MimeType": "string",
  "FileSizeBytes": 0,
  "DateAdded": "2018-05-21T19:53:39+10:00",
  "AddedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  }
}
```

<h3 id="1ce5514cfd15065720c2ea6d12e4720f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Employee Licence Attachment details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Employee Licence Attachment not found.|None|

<h3 id="1ce5514cfd15065720c2ea6d12e4720f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|
|» MimeType|string|true|none|Attachment mine type. (Read Only)|
|» FileSizeBytes|integer|true|none|Attachment size in bytes. (Read Only)|
|» DateAdded|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» AddedBy|object¦null|false|none|Employee uploading the attachment.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## fa123753270e89ae807e0c53961ab1ba

<a id="opIdfa123753270e89ae807e0c53961ab1ba"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Filename": "Product Image.jpg"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}`

*Update a employee licence attachment.*

> Body parameter

```json
{
  "Filename": "Product Image.jpg"
}
```

<h3 id="fa123753270e89ae807e0c53961ab1ba-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
|fileID|path|integer|true|A valid file id|
|body|body|object|true|Employee Licence Attachment object|
|» Filename|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="fa123753270e89ae807e0c53961ab1ba-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Employee Licence Attachment updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 20c5eee4aeceb4f7dc2fab6c7c48b09d

<a id="opId20c5eee4aeceb4f7dc2fab6c7c48b09d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}/attachments/files/{fileID}`

*Delete a employee licence attachment.*

<h3 id="20c5eee4aeceb4f7dc2fab6c7c48b09d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
|fileID|path|integer|true|A valid file id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="20c5eee4aeceb4f7dc2fab6c7c48b09d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Employee Licence Attachment deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Employee Licence Attachment does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>