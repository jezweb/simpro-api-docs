# Customer Contact Custom Fields (setup)

Custom fields can be used to store additional information such as a customer's alternate email, or alternate contact person. After they are created, custom fields can be found under the Custom tab in each record.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Custom-Fields.htm">External documentation</a>

## 3ad69ccac0c4294268dc7febb2301d8c

<a id="opId3ad69ccac0c4294268dc7febb2301d8c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/`

*List all customer contact custom fields (setup).*

<h3 id="3ad69ccac0c4294268dc7febb2301d8c-parameters">Parameters</h3>

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
    "Name": "string",
    "Type": "List",
    "Order": 0,
    "Locked": true
  }
]
```

<h3 id="3ad69ccac0c4294268dc7febb2301d8c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer contact custom fields (setup).|Inline|

<h3 id="3ad69ccac0c4294268dc7febb2301d8c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» Order|integer|true|none|none|
|» Locked|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## c0d517a15e08c1d8738c545e775d381d

<a id="opIdc0d517a15e08c1d8738c545e775d381d"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/`

*Create a new customer contact custom field (setup).*

> Body parameter

```json
{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="c0d517a15e08c1d8738c545e775d381d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Customer contact custom field (setup) object|
|» Name|body|string|true|none|
|» Type|body|string|true|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|body|[string]¦null|false|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|body|boolean|false|Set this column to true to make in a compulsory field. (web UI)|
|» Order|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» Locked|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|List|
|» Type|Text|
|» Type|Date|
|» Type|Numeric|
|» Type|Hyperlink|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="c0d517a15e08c1d8738c545e775d381d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer contact custom field (setup) created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="c0d517a15e08c1d8738c545e775d381d-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|[string]¦null|false|none|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» Locked|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 1de6c50ba6f468931135b6fcb12e0ce4

<a id="opId1de6c50ba6f468931135b6fcb12e0ce4"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}`

*Retrieve details for a specific customer contact custom field (setup).*

<h3 id="1de6c50ba6f468931135b6fcb12e0ce4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|
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
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="1de6c50ba6f468931135b6fcb12e0ce4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer contact custom field (setup) details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contact custom field (setup) not found.|None|

<h3 id="1de6c50ba6f468931135b6fcb12e0ce4-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|[string]¦null|false|none|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» Locked|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 87d2dc799708216a2dce3432ed78d6eb

<a id="opId87d2dc799708216a2dce3432ed78d6eb"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}`

*Update a customer contact custom field (setup).*

> Body parameter

```json
{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="87d2dc799708216a2dce3432ed78d6eb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Customer contact custom field (setup) object|
|» Name|body|string|false|none|
|» Type|body|string|false|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|body|[string]¦null|false|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|body|boolean|false|Set this column to true to make in a compulsory field. (web UI)|
|» Order|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» Locked|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|List|
|» Type|Text|
|» Type|Date|
|» Type|Numeric|
|» Type|Hyperlink|

<h3 id="87d2dc799708216a2dce3432ed78d6eb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contact custom field (setup) updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 5232d85e1e37c19c03ee416804026f3c

<a id="opId5232d85e1e37c19c03ee416804026f3c"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/customFields/customerContacts/{customFieldID}`

*Delete a customer contact custom field (setup).*

<h3 id="5232d85e1e37c19c03ee416804026f3c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5232d85e1e37c19c03ee416804026f3c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contact custom field (setup) deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contact custom field (setup) does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>