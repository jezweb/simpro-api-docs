# Recurring Invoice Attachments

## d7afc188d8c9fa59f1b1e956bfabca4d

<a id="opIdd7afc188d8c9fa59f1b1e956bfabca4d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/`

*List all recurring invoice attachments.*

<h3 id="d7afc188d8c9fa59f1b1e956bfabca4d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
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

<h3 id="d7afc188d8c9fa59f1b1e956bfabca4d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recurring invoice attachments.|Inline|

<h3 id="d7afc188d8c9fa59f1b1e956bfabca4d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Filename|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 63c7b4710cde44c14d3add5f5d0c751c

<a id="opId63c7b4710cde44c14d3add5f5d0c751c"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/ \
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

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/',
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

r = requests.post('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/`

*Create a new recurring invoice attachment.*

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

<h3 id="63c7b4710cde44c14d3add5f5d0c751c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|body|body|object|true|Recurring invoice attachment object|
|» Filename|body|string|true|none|
|» Folder|body|integer|false|ID of a recurring invoice attachment folder|
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

<h3 id="63c7b4710cde44c14d3add5f5d0c751c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recurring invoice attachment created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="63c7b4710cde44c14d3add5f5d0c751c-responseschema">Response Schema</h3>

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

## 3fbfefbc80072c939a5da2567459ea8b

<a id="opId3fbfefbc80072c939a5da2567459ea8b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}`

*Retrieve details for a specific recurring invoice attachment.*

<h3 id="3fbfefbc80072c939a5da2567459ea8b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
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

<h3 id="3fbfefbc80072c939a5da2567459ea8b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recurring invoice attachment details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring invoice attachment not found.|None|

<h3 id="3fbfefbc80072c939a5da2567459ea8b-responseschema">Response Schema</h3>

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

## 6cbaf529075bff1bf1f9c675963f10db

<a id="opId6cbaf529075bff1bf1f9c675963f10db"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID} \
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

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}`

*Update a recurring invoice attachment.*

> Body parameter

```json
{
  "Filename": "Product Image.jpg",
  "Folder": 0,
  "Public": true,
  "Email": true
}
```

<h3 id="6cbaf529075bff1bf1f9c675963f10db-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|fileID|path|integer|true|A valid file id|
|body|body|object|true|Recurring invoice attachment object|
|» Filename|body|string|false|none|
|» Folder|body|integer|false|ID of a recurring invoice attachment folder|
|» Public|body|boolean|false|When Public is set to true, the attachment will be available in the Customer Portal.|
|» Email|body|boolean|false|When Email is set to true, the attachment will be available in the forms tab on simPRO web UI.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="6cbaf529075bff1bf1f9c675963f10db-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring invoice attachment updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## ec7157657fa969cc2fbfb0e8de4d2cdf

<a id="opIdec7157657fa969cc2fbfb0e8de4d2cdf"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/attachments/files/{fileID}`

*Delete a recurring invoice attachment.*

<h3 id="ec7157657fa969cc2fbfb0e8de4d2cdf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|fileID|path|integer|true|A valid file id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ec7157657fa969cc2fbfb0e8de4d2cdf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring invoice attachment deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring invoice attachment does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>