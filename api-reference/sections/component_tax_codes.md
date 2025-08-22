# Component Tax Codes

This can only be used as part of a combined tax code and cannot be used on transactions by itself.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 1ae1e57e56548d3d54966dd1e674e966

<a id="opId1ae1e57e56548d3d54966dd1e674e966"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/`

*List all component tax codes.*

<h3 id="1ae1e57e56548d3d54966dd1e674e966-parameters">Parameters</h3>

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

<h3 id="1ae1e57e56548d3d54966dd1e674e966-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all component tax codes.|Inline|

<h3 id="1ae1e57e56548d3d54966dd1e674e966-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Rate|number|true|none|Tax rate|

<aside class="success">
This operation does not require authentication
</aside>

## 272af3aa214f951f3996ebdfa6c7c079

<a id="opId272af3aa214f951f3996ebdfa6c7c079"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/`

*Create a new component tax code.*

> Body parameter

```json
{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "Archived": true
}
```

<h3 id="272af3aa214f951f3996ebdfa6c7c079-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Component tax code object|
|» Code|body|string|true|Tax code|
|» Name|body|string|false|Tax code name|
|» Rate|body|number|false|Tax rate|
|» ReverseTaxEnabled|body|boolean|false|Reverse Charge Tax Code.|
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
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="272af3aa214f951f3996ebdfa6c7c079-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Component tax code created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="272af3aa214f951f3996ebdfa6c7c079-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Name|string|true|none|Tax code name|
|» Rate|number|true|none|Tax rate|
|» ReverseTaxEnabled|boolean|true|none|Reverse Charge Tax Code.|
|» Archived|boolean|true|none|Archive this tax code.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## bfac25b376b1e9a333260d172315b255

<a id="opIdbfac25b376b1e9a333260d172315b255"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}`

*Retrieve details for a specific component tax code.*

<h3 id="bfac25b376b1e9a333260d172315b255-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|componentTaxCodeID|path|integer|true|A valid component tax code id|
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
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="bfac25b376b1e9a333260d172315b255-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Component tax code details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Component tax code not found.|None|

<h3 id="bfac25b376b1e9a333260d172315b255-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Code|string|true|none|Tax code|
|» Name|string|true|none|Tax code name|
|» Rate|number|true|none|Tax rate|
|» ReverseTaxEnabled|boolean|true|none|Reverse Charge Tax Code.|
|» Archived|boolean|true|none|Archive this tax code.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## 9410ade5068803ce768d75a94432855a

<a id="opId9410ade5068803ce768d75a94432855a"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}`

*Update a component tax code.*

> Body parameter

```json
{
  "Code": "GST",
  "Name": "GST",
  "Rate": 10,
  "ReverseTaxEnabled": true,
  "Archived": true
}
```

<h3 id="9410ade5068803ce768d75a94432855a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|componentTaxCodeID|path|integer|true|A valid component tax code id|
|body|body|object|true|Component tax code object|
|» Code|body|string|false|Tax code|
|» Name|body|string|false|Tax code name|
|» Rate|body|number|false|Tax rate|
|» ReverseTaxEnabled|body|boolean|false|Reverse Charge Tax Code.|
|» Archived|body|boolean|false|Archive this tax code.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9410ade5068803ce768d75a94432855a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Component tax code updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## c927a0128996b81a2240b2b291a82db4

<a id="opIdc927a0128996b81a2240b2b291a82db4"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/taxCodes/components/{componentTaxCodeID}`

*Delete a component tax code.*

<h3 id="c927a0128996b81a2240b2b291a82db4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|componentTaxCodeID|path|integer|true|A valid component tax code id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="c927a0128996b81a2240b2b291a82db4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Component tax code deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Component tax code does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>