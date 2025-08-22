# Contractor Invoice Attachment Folders

## 58cc26e7f18b94293e99920bd4b19286

<a id="opId58cc26e7f18b94293e99920bd4b19286"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/`

*List all contractor invoice attachment folders.*

<h3 id="58cc26e7f18b94293e99920bd4b19286-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
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
    "ID": 12345,
    "Name": "Images"
  }
]
```

<h3 id="58cc26e7f18b94293e99920bd4b19286-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all contractor invoice attachment folders.|Inline|

<h3 id="58cc26e7f18b94293e99920bd4b19286-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 5a28b3328ec430afb3527929f6c16318

<a id="opId5a28b3328ec430afb3527929f6c16318"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/`

*Create a new contractor invoice attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="5a28b3328ec430afb3527929f6c16318-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|body|body|object|true|Contractor invoice attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a contractor invoice attachment folder|
|» Name|body|string|true|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "ParentID": 12345,
  "Parent": 12345,
  "Name": "Images"
}
```

<h3 id="5a28b3328ec430afb3527929f6c16318-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contractor invoice attachment folder created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="5a28b3328ec430afb3527929f6c16318-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ParentID|integer¦null|false|none|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|object¦null|false|none|Parent folder information. Set null if this folder has no parent.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 2b8ba4a534bba93c83739cd7df803a2a

<a id="opId2b8ba4a534bba93c83739cd7df803a2a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}`

*Retrieve details for a specific contractor invoice attachment folder.*

<h3 id="2b8ba4a534bba93c83739cd7df803a2a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|folderID|path|integer|true|A valid folder id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "ParentID": 12345,
  "Parent": 12345,
  "Name": "Images"
}
```

<h3 id="2b8ba4a534bba93c83739cd7df803a2a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contractor invoice attachment folder details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor invoice attachment folder not found.|None|

<h3 id="2b8ba4a534bba93c83739cd7df803a2a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ParentID|integer¦null|false|none|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|object¦null|false|none|Parent folder information. Set null if this folder has no parent.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## dd7582b3d2bac1d66476bd7cc10f5e8e

<a id="opIddd7582b3d2bac1d66476bd7cc10f5e8e"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}`

*Update a contractor invoice attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="dd7582b3d2bac1d66476bd7cc10f5e8e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|folderID|path|integer|true|A valid folder id|
|body|body|object|true|Contractor invoice attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a contractor invoice attachment folder|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="dd7582b3d2bac1d66476bd7cc10f5e8e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor invoice attachment folder updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## ced676e15712ccc4967a689fc80fbe0d

<a id="opIdced676e15712ccc4967a689fc80fbe0d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/attachments/folders/{folderID}`

*Delete a contractor invoice attachment folder.*

<h3 id="ced676e15712ccc4967a689fc80fbe0d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|folderID|path|integer|true|A valid folder id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ced676e15712ccc4967a689fc80fbe0d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor invoice attachment folder deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor invoice attachment folder does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>