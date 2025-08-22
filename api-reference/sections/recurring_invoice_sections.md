# Recurring Invoice Sections

## 3e94f67a62d48944ba1ce7232e7184f6

<a id="opId3e94f67a62d48944ba1ce7232e7184f6"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/`

*List all recurring invoice sections.*

<h3 id="3e94f67a62d48944ba1ce7232e7184f6-parameters">Parameters</h3>

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
    "ID": 0,
    "Name": "string",
    "Description": "string",
    "DisplayOrder": 0
  }
]
```

<h3 id="3e94f67a62d48944ba1ce7232e7184f6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all recurring invoice sections.|Inline|

<h3 id="3e94f67a62d48944ba1ce7232e7184f6-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Only Project Recurring Invoice has name section.|
|» Description|string|true|none|Only Project Recurring Invoice has description section.|
|» DisplayOrder|integer|true|none|Sets the position of this section relative to the others within this recurring invoice. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|

<aside class="success">
This operation does not require authentication
</aside>

## 47f92118b0b1ae21209ee714a1900c14

<a id="opId47f92118b0b1ae21209ee714a1900c14"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Description": "string",
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/',
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

r = requests.post('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/`

*Create a new recurring invoice section.*

> Body parameter

```json
{
  "Name": "string",
  "Description": "string",
  "DisplayOrder": 0
}
```

<h3 id="47f92118b0b1ae21209ee714a1900c14-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|body|body|object|true|Recurring invoice section object|
|» Name|body|string|false|Only Project Recurring Invoice has name section.|
|» Description|body|string|false|Only Project Recurring Invoice has description section.|
|» DisplayOrder|body|integer|false|Sets the position of this section relative to the others within this recurring invoice. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|

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
  "Description": "string",
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="47f92118b0b1ae21209ee714a1900c14-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Recurring invoice section created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="47f92118b0b1ae21209ee714a1900c14-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Only Project Recurring Invoice has name section.|
|» Description|string|true|none|Only Project Recurring Invoice has description section.|
|» DisplayOrder|integer|true|none|Sets the position of this section relative to the others within this recurring invoice. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## c3ccf6a183a492bfb60a38131e2fd6ff

<a id="opIdc3ccf6a183a492bfb60a38131e2fd6ff"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}`

*Retrieve details for a specific recurring invoice section.*

<h3 id="c3ccf6a183a492bfb60a38131e2fd6ff-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|sectionID|path|integer|true|A valid section id|
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
  "Description": "string",
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="c3ccf6a183a492bfb60a38131e2fd6ff-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Recurring invoice section details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring invoice section not found.|None|

<h3 id="c3ccf6a183a492bfb60a38131e2fd6ff-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Only Project Recurring Invoice has name section.|
|» Description|string|true|none|Only Project Recurring Invoice has description section.|
|» DisplayOrder|integer|true|none|Sets the position of this section relative to the others within this recurring invoice. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## bf9eeb68cbe98299b9c91555154e65be

<a id="opIdbf9eeb68cbe98299b9c91555154e65be"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Description": "string",
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}`

*Update a recurring invoice section.*

> Body parameter

```json
{
  "Name": "string",
  "Description": "string",
  "DisplayOrder": 0
}
```

<h3 id="bf9eeb68cbe98299b9c91555154e65be-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|sectionID|path|integer|true|A valid section id|
|body|body|object|true|Recurring invoice section object|
|» Name|body|string|false|Only Project Recurring Invoice has name section.|
|» Description|body|string|false|Only Project Recurring Invoice has description section.|
|» DisplayOrder|body|integer|false|Sets the position of this section relative to the others within this recurring invoice. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="bf9eeb68cbe98299b9c91555154e65be-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring invoice section updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## d87a6e5b77117d957c18de2605c38932

<a id="opIdd87a6e5b77117d957c18de2605c38932"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/recurringInvoices/{recurringInvoiceID}/sections/{sectionID}`

*Delete a recurring invoice section.*

<h3 id="d87a6e5b77117d957c18de2605c38932-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|recurringInvoiceID|path|integer|true|A valid recurring invoice id|
|sectionID|path|integer|true|A valid section id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="d87a6e5b77117d957c18de2605c38932-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Recurring invoice section deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Recurring invoice section does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>