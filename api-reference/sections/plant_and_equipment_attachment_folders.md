# Plant And Equipment Attachment Folders

## da1cb77f5e3180bcd54152c24223a5ce

<a id="opIdda1cb77f5e3180bcd54152c24223a5ce"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/`

*List all plant and equipment attachment folders.*

<h3 id="da1cb77f5e3180bcd54152c24223a5ce-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
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

<h3 id="da1cb77f5e3180bcd54152c24223a5ce-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all plant and equipment attachment folders.|Inline|

<h3 id="da1cb77f5e3180bcd54152c24223a5ce-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 88e7b0db39a2a1d65df5aa4541060396

<a id="opId88e7b0db39a2a1d65df5aa4541060396"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/ \
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

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/`

*Create a new plant and equipment attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="88e7b0db39a2a1d65df5aa4541060396-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|body|body|object|true|Plant and equipment attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a plant and equipment attachment folder|
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

<h3 id="88e7b0db39a2a1d65df5aa4541060396-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Plant and equipment attachment folder created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="88e7b0db39a2a1d65df5aa4541060396-responseschema">Response Schema</h3>

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

## f3843508be26e3d75a155d741de0277d

<a id="opIdf3843508be26e3d75a155d741de0277d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}`

*Retrieve details for a specific plant and equipment attachment folder.*

<h3 id="f3843508be26e3d75a155d741de0277d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
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

<h3 id="f3843508be26e3d75a155d741de0277d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Plant and equipment attachment folder details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant and equipment attachment folder not found.|None|

<h3 id="f3843508be26e3d75a155d741de0277d-responseschema">Response Schema</h3>

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

## 2335faa24c7034340dfe5fb80eec2805

<a id="opId2335faa24c7034340dfe5fb80eec2805"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID} \
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

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}`

*Update a plant and equipment attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="2335faa24c7034340dfe5fb80eec2805-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|folderID|path|integer|true|A valid folder id|
|body|body|object|true|Plant and equipment attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a plant and equipment attachment folder|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2335faa24c7034340dfe5fb80eec2805-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant and equipment attachment folder updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 906f0d2b0164f8cbdc648a77d5ceb2ff

<a id="opId906f0d2b0164f8cbdc648a77d5ceb2ff"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}/attachments/folders/{folderID}`

*Delete a plant and equipment attachment folder.*

<h3 id="906f0d2b0164f8cbdc648a77d5ceb2ff-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|folderID|path|integer|true|A valid folder id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="906f0d2b0164f8cbdc648a77d5ceb2ff-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant and equipment attachment folder deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant and equipment attachment folder does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>