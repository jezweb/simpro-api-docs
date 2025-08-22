# Vendor Order Attachment Folders

## 3dd8076aaa11f40cd657b8ffde4768ff

<a id="opId3dd8076aaa11f40cd657b8ffde4768ff"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/`

*List all vendor order attachment folders.*

<h3 id="3dd8076aaa11f40cd657b8ffde4768ff-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
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

<h3 id="3dd8076aaa11f40cd657b8ffde4768ff-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor order attachment folders.|Inline|

<h3 id="3dd8076aaa11f40cd657b8ffde4768ff-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e6646ec73ee4ac356f6bb6ee8d85a970

<a id="opIde6646ec73ee4ac356f6bb6ee8d85a970"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/ \
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

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/`

*Create a new vendor order attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="e6646ec73ee4ac356f6bb6ee8d85a970-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|body|body|object|true|Vendor order attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a vendor order attachment folder|
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

<h3 id="e6646ec73ee4ac356f6bb6ee8d85a970-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor order attachment folder created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="e6646ec73ee4ac356f6bb6ee8d85a970-responseschema">Response Schema</h3>

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

## 4f744b61fa8034be6123ae19f7fa3d2e

<a id="opId4f744b61fa8034be6123ae19f7fa3d2e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}`

*Retrieve details for a specific vendor order attachment folder.*

<h3 id="4f744b61fa8034be6123ae19f7fa3d2e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
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

<h3 id="4f744b61fa8034be6123ae19f7fa3d2e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor order attachment folder details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order attachment folder not found.|None|

<h3 id="4f744b61fa8034be6123ae19f7fa3d2e-responseschema">Response Schema</h3>

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

## 0e5e85acef499601eb11b59b5716f4ae

<a id="opId0e5e85acef499601eb11b59b5716f4ae"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID} \
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

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}`

*Update a vendor order attachment folder.*

> Body parameter

```json
{
  "ParentID": 12345,
  "Parent": 0,
  "Name": "Images"
}
```

<h3 id="0e5e85acef499601eb11b59b5716f4ae-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|folderID|path|integer|true|A valid folder id|
|body|body|object|true|Vendor order attachment folder object|
|» ParentID|body|integer¦null|false|Deprecated: Please use Parent field. The ID of a parent folder.|
|» Parent|body|integer|false|ID of a vendor order attachment folder|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0e5e85acef499601eb11b59b5716f4ae-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order attachment folder updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 3b5dcb11f89e39a077eeeb669325c403

<a id="opId3b5dcb11f89e39a077eeeb669325c403"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/attachments/folders/{folderID}`

*Delete a vendor order attachment folder.*

<h3 id="3b5dcb11f89e39a077eeeb669325c403-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|folderID|path|integer|true|A valid folder id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3b5dcb11f89e39a077eeeb669325c403-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order attachment folder deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order attachment folder does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>