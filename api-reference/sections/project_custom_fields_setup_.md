# Project Custom Fields (setup)

Custom fields can be used to store additional information such as a customer's alternate email, or alternate contact person. After they are created, custom fields can be found under the Custom tab in each record.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Custom-Fields.htm">External documentation</a>

## 18a724bfb63bda21735aff16949e3ff4

<a id="opId18a724bfb63bda21735aff16949e3ff4"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/projects/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/projects/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/projects/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/projects/`

*List all project custom fields (setup).*

<h3 id="18a724bfb63bda21735aff16949e3ff4-parameters">Parameters</h3>

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
    "ShowFor": {
      "Leads": true,
      "Quotes": true,
      "Jobs": true,
      "Recurring": true
    },
    "Locked": true
  }
]
```

<h3 id="18a724bfb63bda21735aff16949e3ff4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all project custom fields (setup).|Inline|

<h3 id="18a724bfb63bda21735aff16949e3ff4-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|none|
|» Order|integer|true|none|none|
|» ShowFor|object|true|none|none|
|»» Leads|boolean|true|none|none|
|»» Quotes|boolean|true|none|none|
|»» Jobs|boolean|true|none|none|
|»» Recurring|boolean|true|none|none|
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

## 7227ebe64f4b3a46162b8b11f4d6c903

<a id="opId7227ebe64f4b3a46162b8b11f4d6c903"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/customFields/projects/ \
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
  "ShowFor": {
    "Leads": true,
    "Quotes": true,
    "Jobs": true,
    "Recurring": true
  },
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/projects/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/customFields/projects/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/customFields/projects/`

*Create a new project custom field (setup).*

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
  "ShowFor": {
    "Leads": true,
    "Quotes": true,
    "Jobs": true,
    "Recurring": true
  },
  "Locked": true
}
```

<h3 id="7227ebe64f4b3a46162b8b11f4d6c903-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Project custom field (setup) object|
|» Name|body|string|true|none|
|» Type|body|string|true|none|
|» ListItems|body|[string]¦null|false|none|
|» IsMandatory|body|boolean|false|none|
|» Order|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» ShowFor|body|object|true|none|
|»» Leads|body|boolean|false|none|
|»» Quotes|body|boolean|false|none|
|»» Jobs|body|boolean|false|none|
|»» Recurring|body|boolean|false|none|
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
  "ShowFor": {
    "Leads": true,
    "Quotes": true,
    "Jobs": true,
    "Recurring": true
  },
  "Locked": true
}
```

<h3 id="7227ebe64f4b3a46162b8b11f4d6c903-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Project custom field (setup) created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="7227ebe64f4b3a46162b8b11f4d6c903-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|none|
|» ListItems|[string]¦null|false|none|none|
|» IsMandatory|boolean|true|none|none|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» ShowFor|object|true|none|none|
|»» Leads|boolean|true|none|none|
|»» Quotes|boolean|true|none|none|
|»» Jobs|boolean|true|none|none|
|»» Recurring|boolean|true|none|none|
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

## 89a77583b82ec8fefa6d15115669d1b8

<a id="opId89a77583b82ec8fefa6d15115669d1b8"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}`

*Retrieve details for a specific project custom field (setup).*

<h3 id="89a77583b82ec8fefa6d15115669d1b8-parameters">Parameters</h3>

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
  "ShowFor": {
    "Leads": true,
    "Quotes": true,
    "Jobs": true,
    "Recurring": true
  },
  "Locked": true
}
```

<h3 id="89a77583b82ec8fefa6d15115669d1b8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Project custom field (setup) details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project custom field (setup) not found.|None|

<h3 id="89a77583b82ec8fefa6d15115669d1b8-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|none|
|» ListItems|[string]¦null|false|none|none|
|» IsMandatory|boolean|true|none|none|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» ShowFor|object|true|none|none|
|»» Leads|boolean|true|none|none|
|»» Quotes|boolean|true|none|none|
|»» Jobs|boolean|true|none|none|
|»» Recurring|boolean|true|none|none|
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

## 44e27ed527f522de1bc654b41d496e43

<a id="opId44e27ed527f522de1bc654b41d496e43"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID} \
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
  "ShowFor": {
    "Leads": true,
    "Quotes": true,
    "Jobs": true,
    "Recurring": true
  },
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}`

*Update a project custom field (setup).*

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
  "ShowFor": {
    "Leads": true,
    "Quotes": true,
    "Jobs": true,
    "Recurring": true
  },
  "Locked": true
}
```

<h3 id="44e27ed527f522de1bc654b41d496e43-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Project custom field (setup) object|
|» Name|body|string|false|none|
|» Type|body|string|false|none|
|» ListItems|body|[string]¦null|false|none|
|» IsMandatory|body|boolean|false|none|
|» Order|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» ShowFor|body|object|false|none|
|»» Leads|body|boolean|false|none|
|»» Quotes|body|boolean|false|none|
|»» Jobs|body|boolean|false|none|
|»» Recurring|body|boolean|false|none|
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

<h3 id="44e27ed527f522de1bc654b41d496e43-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Project custom field (setup) updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2539cdbe1d0156abaed23054d23c475a

<a id="opId2539cdbe1d0156abaed23054d23c475a"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/customFields/projects/{customFieldID}`

*Delete a project custom field (setup).*

<h3 id="2539cdbe1d0156abaed23054d23c475a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2539cdbe1d0156abaed23054d23c475a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Project custom field (setup) deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Project custom field (setup) does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>