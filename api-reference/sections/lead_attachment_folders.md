# Lead Attachment Folders

## cb76804c7eec532c28dc40b9515b1fe2

<a id="opIdcb76804c7eec532c28dc40b9515b1fe2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/`

*List all lead attachment folders.*

<h3 id="cb76804c7eec532c28dc40b9515b1fe2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
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

<h3 id="cb76804c7eec532c28dc40b9515b1fe2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all lead attachment folders.|Inline|

<h3 id="cb76804c7eec532c28dc40b9515b1fe2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 647032595b45082fdac2587579006d77

<a id="opId647032595b45082fdac2587579006d77"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/ \
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

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/`

*Create a new lead attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="647032595b45082fdac2587579006d77-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
|body|body|object|true|Lead attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a lead attachment folder|
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

<h3 id="647032595b45082fdac2587579006d77-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Lead attachment folder created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="647032595b45082fdac2587579006d77-responseschema">Response Schema</h3>

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

## 75585624f0957437feb10c5d051b43b3

<a id="opId75585624f0957437feb10c5d051b43b3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}`

*Retrieve details for a specific lead attachment folder.*

<h3 id="75585624f0957437feb10c5d051b43b3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
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

<h3 id="75585624f0957437feb10c5d051b43b3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Lead attachment folder details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Lead attachment folder not found.|None|

<h3 id="75585624f0957437feb10c5d051b43b3-responseschema">Response Schema</h3>

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

## 8f3bcd1c1b36a589a6584a30e2392a48

<a id="opId8f3bcd1c1b36a589a6584a30e2392a48"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID} \
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

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}`

*Update a lead attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="8f3bcd1c1b36a589a6584a30e2392a48-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
|folderID|path|integer|true|A valid folder id|
|body|body|object|true|Lead attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a lead attachment folder|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8f3bcd1c1b36a589a6584a30e2392a48-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Lead attachment folder updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## fdad1f20768760e022bc157e5cc9e833

<a id="opIdfdad1f20768760e022bc157e5cc9e833"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/leads/{leadID}/attachments/folders/{folderID}`

*Delete a lead attachment folder.*

<h3 id="fdad1f20768760e022bc157e5cc9e833-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
|folderID|path|integer|true|A valid folder id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="fdad1f20768760e022bc157e5cc9e833-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Lead attachment folder deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Lead attachment folder does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>