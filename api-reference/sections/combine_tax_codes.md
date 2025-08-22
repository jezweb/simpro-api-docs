# Combine Tax Codes

This is a sum of multiple tax codes, or members, including both single and component tax codes.

You can report on either the combined tax code, or on the single or component tax codes. Combined tax codes will automatically update when a single or component member tax code is updated. When using the accounting link, the sum total of a combined tax code is sent to your accounting package and divided into individual member tax codes upon receipt.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## af30ce62125d5f5e1001a0c409e68532

<a id="opIdaf30ce62125d5f5e1001a0c409e68532"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/`

*List all combine tax codes.*

<h3 id="af30ce62125d5f5e1001a0c409e68532-parameters">Parameters</h3>

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
    "ID": 12345,
    "Code": "GST",
    "Rate": 10
  }
]
```

<h3 id="af30ce62125d5f5e1001a0c409e68532-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all combine tax codes.|Inline|

<h3 id="af30ce62125d5f5e1001a0c409e68532-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Rate|number|true|none|Tax rate|

<aside class="success">
This operation does not require authentication
</aside>

## 2b86a98b4ab47cd2042aea4b40154b44

<a id="opId2b86a98b4ab47cd2042aea4b40154b44"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "IsPartIncomeDefault": true,
  "IsLaborIncomeDefault": true,
  "IsPurchaseDefault": true,
  "Archived": true,
  "Members": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/`

*Create a new combine tax code.*

> Body parameter

```json
{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "IsPartIncomeDefault": true,
  "IsLaborIncomeDefault": true,
  "IsPurchaseDefault": true,
  "Archived": true,
  "Members": [
    0
  ]
}
```

<h3 id="2b86a98b4ab47cd2042aea4b40154b44-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Combine tax code object|
|» Code|body|string|true|Tax code|
|» Name|body|string|false|Tax code name|
|» Rate|body|number|false|Tax rate|
|» ReverseTaxEnabled|body|boolean|false|Reverse Charge Tax Code.|
|» IsPartIncomeDefault|body|boolean|false|Set this tax code as default income tax code for parts.|
|» IsLaborIncomeDefault|body|boolean|false|Set this tax code as default income tax code for labors.|
|» IsPurchaseDefault|body|boolean|false|Set this tax code as default purchase tax code.|
|» Archived|body|boolean|false|Archive this tax code.|
|» Members|body|[integer]|false|Assign component and/or single tax codes to this tax code. The combined tax code will represent the sum total of its tax code members. (US only)|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "IsPartIncomeDefault": true,
  "IsLaborIncomeDefault": true,
  "IsPurchaseDefault": true,
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Members": [
    "[12, 24]"
  ]
}
```

<h3 id="2b86a98b4ab47cd2042aea4b40154b44-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Combine tax code created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="2b86a98b4ab47cd2042aea4b40154b44-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Name|string|true|none|Tax code name|
|» Rate|number|true|none|Tax rate|
|» ReverseTaxEnabled|boolean|true|none|Reverse Charge Tax Code.|
|» IsPartIncomeDefault|boolean|true|none|Set this tax code as default income tax code for parts.|
|» IsLaborIncomeDefault|boolean|true|none|Set this tax code as default income tax code for labors.|
|» IsPurchaseDefault|boolean|true|none|Set this tax code as default purchase tax code.|
|» Archived|boolean|true|none|Archive this tax code.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Members|[object]|true|none|Assign component and/or single tax codes to this tax code. The combined tax code will represent the sum total of its tax code members. (US only)|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 404cd0b9cc4d0882b2c24ac747245fe5

<a id="opId404cd0b9cc4d0882b2c24ac747245fe5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}`

*Retrieve details for a specific combine tax code.*

<h3 id="404cd0b9cc4d0882b2c24ac747245fe5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|combineTaxCodeID|path|integer|true|A valid combine tax code id|
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
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "IsPartIncomeDefault": true,
  "IsLaborIncomeDefault": true,
  "IsPurchaseDefault": true,
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Members": [
    "[12, 24]"
  ]
}
```

<h3 id="404cd0b9cc4d0882b2c24ac747245fe5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Combine tax code details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Combine tax code not found.|None|

<h3 id="404cd0b9cc4d0882b2c24ac747245fe5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Name|string|true|none|Tax code name|
|» Rate|number|true|none|Tax rate|
|» ReverseTaxEnabled|boolean|true|none|Reverse Charge Tax Code.|
|» IsPartIncomeDefault|boolean|true|none|Set this tax code as default income tax code for parts.|
|» IsLaborIncomeDefault|boolean|true|none|Set this tax code as default income tax code for labors.|
|» IsPurchaseDefault|boolean|true|none|Set this tax code as default purchase tax code.|
|» Archived|boolean|true|none|Archive this tax code.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Members|[object]|true|none|Assign component and/or single tax codes to this tax code. The combined tax code will represent the sum total of its tax code members. (US only)|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 4a5bf39f73890af8456233420edf801c

<a id="opId4a5bf39f73890af8456233420edf801c"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "IsPartIncomeDefault": true,
  "IsLaborIncomeDefault": true,
  "IsPurchaseDefault": true,
  "Archived": true,
  "Members": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}`

*Update a combine tax code.*

> Body parameter

```json
{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "IsPartIncomeDefault": true,
  "IsLaborIncomeDefault": true,
  "IsPurchaseDefault": true,
  "Archived": true,
  "Members": [
    0
  ]
}
```

<h3 id="4a5bf39f73890af8456233420edf801c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|combineTaxCodeID|path|integer|true|A valid combine tax code id|
|body|body|object|true|Combine tax code object|
|» Code|body|string|false|Tax code|
|» Name|body|string|false|Tax code name|
|» Rate|body|number|false|Tax rate|
|» ReverseTaxEnabled|body|boolean|false|Reverse Charge Tax Code.|
|» IsPartIncomeDefault|body|boolean|false|Set this tax code as default income tax code for parts.|
|» IsLaborIncomeDefault|body|boolean|false|Set this tax code as default income tax code for labors.|
|» IsPurchaseDefault|body|boolean|false|Set this tax code as default purchase tax code.|
|» Archived|body|boolean|false|Archive this tax code.|
|» Members|body|[integer]|false|Assign component and/or single tax codes to this tax code. The combined tax code will represent the sum total of its tax code members. (US only)|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="4a5bf39f73890af8456233420edf801c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Combine tax code updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 976112f7ee6b6b571418726432083a20

<a id="opId976112f7ee6b6b571418726432083a20"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/combines/{combineTaxCodeID}`

*Delete a combine tax code.*

<h3 id="976112f7ee6b6b571418726432083a20-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|combineTaxCodeID|path|integer|true|A valid combine tax code id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="976112f7ee6b6b571418726432083a20-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Combine tax code deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Combine tax code does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>