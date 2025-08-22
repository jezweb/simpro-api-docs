# Vendor Branches

## 4fe883ec38d726458c7532ba5d3f30cd

<a id="opId4fe883ec38d726458c7532ba5d3f30cd"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/`

*List all vendor branches.*

<h3 id="4fe883ec38d726458c7532ba5d3f30cd-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
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
    "Vendor": {
      "ID": 0,
      "Name": "string"
    },
    "Name": "string"
  }
]
```

<h3 id="4fe883ec38d726458c7532ba5d3f30cd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor branches.|Inline|

<h3 id="4fe883ec38d726458c7532ba5d3f30cd-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## c9e92d6a66f345aa900307900be561b0

<a id="opIdc9e92d6a66f345aa900307900be561b0"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "AltPhone": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Name": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/`

*Create a new vendor branch.*

> Body parameter

```json
{
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "AltPhone": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Name": "string"
}
```

<h3 id="c9e92d6a66f345aa900307900be561b0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|body|body|object|true|Vendor branch object|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Address|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» Name|body|string|true|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "AltPhone": "string",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "Name": "string"
}
```

<h3 id="c9e92d6a66f345aa900307900be561b0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor branch created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="c9e92d6a66f345aa900307900be561b0-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Address|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e855b31728f7b2e63c9bc60dd754b658

<a id="opIde855b31728f7b2e63c9bc60dd754b658"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}`

*Retrieve details for a specific vendor branch.*

<h3 id="e855b31728f7b2e63c9bc60dd754b658-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|branchID|path|integer|true|A valid branch id|
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
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "AltPhone": "string",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "Name": "string"
}
```

<h3 id="e855b31728f7b2e63c9bc60dd754b658-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor branch details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor branch not found.|None|

<h3 id="e855b31728f7b2e63c9bc60dd754b658-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Address|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 86bcccb68e5b1f530ff46a0195e0ff8d

<a id="opId86bcccb68e5b1f530ff46a0195e0ff8d"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "AltPhone": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Name": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}`

*Update a vendor branch.*

> Body parameter

```json
{
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "AltPhone": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "Name": "string"
}
```

<h3 id="86bcccb68e5b1f530ff46a0195e0ff8d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|branchID|path|integer|true|A valid branch id|
|body|body|object|true|Vendor branch object|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Address|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="86bcccb68e5b1f530ff46a0195e0ff8d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor branch updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## b7cc58b3f14074929b4f1c00e7ea4768

<a id="opIdb7cc58b3f14074929b4f1c00e7ea4768"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendors/{vendorID}/branches/{branchID}`

*Delete a vendor branch.*

<h3 id="b7cc58b3f14074929b4f1c00e7ea4768-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|branchID|path|integer|true|A valid branch id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b7cc58b3f14074929b4f1c00e7ea4768-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor branch deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor branch does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>