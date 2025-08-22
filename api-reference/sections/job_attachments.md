# Job Attachments

## 95a801de8a33e86585d29dfd8dfb98be

<a id="opId95a801de8a33e86585d29dfd8dfb98be"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/`

*List all job attachments.*

<h3 id="95a801de8a33e86585d29dfd8dfb98be-parameters">Parameters</h3>

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
    "ID": "string",
    "Filename": "Product Image.jpg"
  }
]
```

<h3 id="95a801de8a33e86585d29dfd8dfb98be-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job attachments.|Inline|

<h3 id="95a801de8a33e86585d29dfd8dfb98be-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 30378360b09d6bfbda79c36ee72946b0

<a id="opId30378360b09d6bfbda79c36ee72946b0"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Filename": "Product Image.jpg",
  "Folder": 0,
  "Public": true,
  "Email": true,
  "Base64Data": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/`

*Create a new job attachment.*

> Body parameter

```json
{
  "Filename": "Product Image.jpg",
  "Folder": 0,
  "Public": true,
  "Email": true,
  "Base64Data": "string"
}
```

<h3 id="30378360b09d6bfbda79c36ee72946b0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|body|body|object|true|Job attachment object|
|» Filename|body|string|true|none|
|» Folder|body|integer|false|ID of a job attachment folder|
|» Public|body|boolean|false|When Public is set to true, the attachment will be available in the Customer Portal.|
|» Email|body|boolean|false|When Email is set to true, the attachment will be available in the forms tab on simPRO web UI.|
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
  "Folder": {
    "ID": 12345,
    "Name": "Images"
  },
  "Public": true,
  "Email": true,
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

<h3 id="30378360b09d6bfbda79c36ee72946b0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job attachment created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="30378360b09d6bfbda79c36ee72946b0-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|
|» Folder|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Public|boolean|true|none|When Public is set to true, the attachment will be available in the Customer Portal.|
|» Email|boolean|true|none|When Email is set to true, the attachment will be available in the forms tab on simPRO web UI.|
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

## ae30f46c17b0233f59fef716e87c2607

<a id="opIdae30f46c17b0233f59fef716e87c2607"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}`

*Retrieve details for a specific job attachment.*

<h3 id="ae30f46c17b0233f59fef716e87c2607-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
  "Folder": {
    "ID": 12345,
    "Name": "Images"
  },
  "Public": true,
  "Email": true,
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

<h3 id="ae30f46c17b0233f59fef716e87c2607-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job attachment details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job attachment not found.|None|

<h3 id="ae30f46c17b0233f59fef716e87c2607-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|
|» Folder|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Public|boolean|true|none|When Public is set to true, the attachment will be available in the Customer Portal.|
|» Email|boolean|true|none|When Email is set to true, the attachment will be available in the forms tab on simPRO web UI.|
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

## 9a864fab2eb4de73c0e2e93d70021e9f

<a id="opId9a864fab2eb4de73c0e2e93d70021e9f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Filename": "Product Image.jpg",
  "Folder": 0,
  "Public": true,
  "Email": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}`

*Update a job attachment.*

> Body parameter

```json
{
  "Filename": "Product Image.jpg",
  "Folder": 0,
  "Public": true,
  "Email": true
}
```

<h3 id="9a864fab2eb4de73c0e2e93d70021e9f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|fileID|path|integer|true|A valid file id|
|body|body|object|true|Job attachment object|
|» Filename|body|string|false|none|
|» Folder|body|integer|false|ID of a job attachment folder|
|» Public|body|boolean|false|When Public is set to true, the attachment will be available in the Customer Portal.|
|» Email|body|boolean|false|When Email is set to true, the attachment will be available in the forms tab on simPRO web UI.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9a864fab2eb4de73c0e2e93d70021e9f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job attachment updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 0af01ceffa7cac76e268345a09ff696d

<a id="opId0af01ceffa7cac76e268345a09ff696d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/attachments/files/{fileID}`

*Delete a job attachment.*

<h3 id="0af01ceffa7cac76e268345a09ff696d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|fileID|path|integer|true|A valid file id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0af01ceffa7cac76e268345a09ff696d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job attachment deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job attachment does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>