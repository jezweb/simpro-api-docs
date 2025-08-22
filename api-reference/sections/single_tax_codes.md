# Single Tax Codes

## b42a008cb09021a932a1f0ac318e8d61

<a id="opIdb42a008cb09021a932a1f0ac318e8d61"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/`

*List all single tax codes.*

<h3 id="b42a008cb09021a932a1f0ac318e8d61-parameters">Parameters</h3>

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

<h3 id="b42a008cb09021a932a1f0ac318e8d61-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all single tax codes.|Inline|

<h3 id="b42a008cb09021a932a1f0ac318e8d61-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Rate|number|true|none|Tax rate|

<aside class="success">
This operation does not require authentication
</aside>

## ab14781f87059ce6073e09f84c40ebf9

<a id="opIdab14781f87059ce6073e09f84c40ebf9"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/ \
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
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/`

*Create a new single tax code.*

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
  "Archived": true
}
```

<h3 id="ab14781f87059ce6073e09f84c40ebf9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Single tax code object|
|» Code|body|string|true|Tax code|
|» Name|body|string|false|Tax code name|
|» Rate|body|number|false|Tax rate|
|» ReverseTaxEnabled|body|boolean|false|Reverse Charge Tax Code.|
|» IsPartIncomeDefault|body|boolean|false|Set this tax code as default income tax code for parts.|
|» IsLaborIncomeDefault|body|boolean|false|Set this tax code as default income tax code for labors.|
|» IsPurchaseDefault|body|boolean|false|Set this tax code as default purchase tax code.|
|» Archived|body|boolean|false|Archive this tax code.|

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
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="ab14781f87059ce6073e09f84c40ebf9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Single tax code created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="ab14781f87059ce6073e09f84c40ebf9-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

## 6545103e4ded868bbb54e2c2e73ab104

<a id="opId6545103e4ded868bbb54e2c2e73ab104"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}`

*Retrieve details for a specific single tax code.*

<h3 id="6545103e4ded868bbb54e2c2e73ab104-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|singleTaxCodeID|path|integer|true|A valid single tax code id|
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
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="6545103e4ded868bbb54e2c2e73ab104-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Single tax code details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Single tax code not found.|None|

<h3 id="6545103e4ded868bbb54e2c2e73ab104-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

## 2e8bd08a8983ca9d28376bec474a5ba5

<a id="opId2e8bd08a8983ca9d28376bec474a5ba5"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID} \
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
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}`

*Update a single tax code.*

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
  "Archived": true
}
```

<h3 id="2e8bd08a8983ca9d28376bec474a5ba5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|singleTaxCodeID|path|integer|true|A valid single tax code id|
|body|body|object|true|Single tax code object|
|» Code|body|string|false|Tax code|
|» Name|body|string|false|Tax code name|
|» Rate|body|number|false|Tax rate|
|» ReverseTaxEnabled|body|boolean|false|Reverse Charge Tax Code.|
|» IsPartIncomeDefault|body|boolean|false|Set this tax code as default income tax code for parts.|
|» IsLaborIncomeDefault|body|boolean|false|Set this tax code as default income tax code for labors.|
|» IsPurchaseDefault|body|boolean|false|Set this tax code as default purchase tax code.|
|» Archived|body|boolean|false|Archive this tax code.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2e8bd08a8983ca9d28376bec474a5ba5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Single tax code updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## cc0b3105c6e9443b74ec3c38c9dfae95

<a id="opIdcc0b3105c6e9443b74ec3c38c9dfae95"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/singles/{singleTaxCodeID}`

*Delete a single tax code.*

<h3 id="cc0b3105c6e9443b74ec3c38c9dfae95-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|singleTaxCodeID|path|integer|true|A valid single tax code id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="cc0b3105c6e9443b74ec3c38c9dfae95-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Single tax code deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Single tax code does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>