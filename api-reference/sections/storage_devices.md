# Storage Devices

In Simpro, storage devices are physical locations where you store stock or inventory, such as a field technician's vehicle, warehouse, shed etc.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Storage-Devices.htm">External documentation</a>

## a2df290f8fbeca8d5e7749c3dccc8d32

<a id="opIda2df290f8fbeca8d5e7749c3dccc8d32"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/storageDevices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/storageDevices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/storageDevices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/storageDevices/`

*List all storage devices.*

<h3 id="a2df290f8fbeca8d5e7749c3dccc8d32-parameters">Parameters</h3>

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
    "Name": "string"
  }
]
```

<h3 id="a2df290f8fbeca8d5e7749c3dccc8d32-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all storage devices.|Inline|

<h3 id="a2df290f8fbeca8d5e7749c3dccc8d32-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 4d08b103382b0040e04694e7a4f4922d

<a id="opId4d08b103382b0040e04694e7a4f4922d"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/storageDevices/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/storageDevices/',
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

r = requests.post('/api/v1.0/companies/{companyID}/storageDevices/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/storageDevices/`

*Create a new storage device.*

> Body parameter

```json
{
  "Name": "string",
  "IsDefault": true
}
```

<h3 id="4d08b103382b0040e04694e7a4f4922d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Storage device object|
|» Name|body|string|true|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "IsDefault": true,
  "Archived": true
}
```

<h3 id="4d08b103382b0040e04694e7a4f4922d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Storage device created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="4d08b103382b0040e04694e7a4f4922d-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» IsDefault|boolean|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 7a95333906f3684100bce216669f4bdb

<a id="opId7a95333906f3684100bce216669f4bdb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}`

*Retrieve details for a specific storage device.*

<h3 id="7a95333906f3684100bce216669f4bdb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|storageDeviceID|path|integer|true|A valid storage device id|
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
  "Name": "string",
  "IsDefault": true,
  "Archived": true
}
```

<h3 id="7a95333906f3684100bce216669f4bdb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Storage device details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Storage device not found.|None|

<h3 id="7a95333906f3684100bce216669f4bdb-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» IsDefault|boolean|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## c7fd63286510797bb8b041f1bd3882a3

<a id="opIdc7fd63286510797bb8b041f1bd3882a3"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}`

*Update a storage device.*

> Body parameter

```json
{
  "Name": "string",
  "IsDefault": true
}
```

<h3 id="c7fd63286510797bb8b041f1bd3882a3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|storageDeviceID|path|integer|true|A valid storage device id|
|body|body|object|true|Storage device object|
|» Name|body|string|false|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="c7fd63286510797bb8b041f1bd3882a3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Storage device updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2533102508ac7d92d0f2e1877aac5438

<a id="opId2533102508ac7d92d0f2e1877aac5438"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}`

*Delete a storage device.*

<h3 id="2533102508ac7d92d0f2e1877aac5438-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|storageDeviceID|path|integer|true|A valid storage device id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2533102508ac7d92d0f2e1877aac5438-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Storage device deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Storage device does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>