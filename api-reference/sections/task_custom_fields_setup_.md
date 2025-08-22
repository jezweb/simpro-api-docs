# Task Custom Fields (setup)

Custom fields can be used to store additional information such as a customer's alternate email, or alternate contact person. After they are created, custom fields can be found under the Custom tab in each record.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Custom-Fields.htm">External documentation</a>

## 1f9b3eb593847a00e33043f3714ee88e

<a id="opId1f9b3eb593847a00e33043f3714ee88e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/tasks/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/tasks/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/tasks/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/tasks/`

*List all task custom fields (setup).*

<h3 id="1f9b3eb593847a00e33043f3714ee88e-parameters">Parameters</h3>

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

<h3 id="1f9b3eb593847a00e33043f3714ee88e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all task custom fields (setup).|Inline|

<h3 id="1f9b3eb593847a00e33043f3714ee88e-responseschema">Response Schema</h3>

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

## 9d0ab0b62a2d00cafcdc9d1fb6bef361

<a id="opId9d0ab0b62a2d00cafcdc9d1fb6bef361"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/customFields/tasks/ \
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

fetch('/api/v1.0/companies/{companyID}/setup/customFields/tasks/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/customFields/tasks/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/customFields/tasks/`

*Create a new task custom field (setup).*

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

<h3 id="9d0ab0b62a2d00cafcdc9d1fb6bef361-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Task custom field (setup) object|
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

<h3 id="9d0ab0b62a2d00cafcdc9d1fb6bef361-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Task custom field (setup) created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="9d0ab0b62a2d00cafcdc9d1fb6bef361-responseschema">Response Schema</h3>

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

## eeae363132c9ced7fd354a90d0bf769a

<a id="opIdeeae363132c9ced7fd354a90d0bf769a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}`

*Retrieve details for a specific task custom field (setup).*

<h3 id="eeae363132c9ced7fd354a90d0bf769a-parameters">Parameters</h3>

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

<h3 id="eeae363132c9ced7fd354a90d0bf769a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Task custom field (setup) details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Task custom field (setup) not found.|None|

<h3 id="eeae363132c9ced7fd354a90d0bf769a-responseschema">Response Schema</h3>

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

## 44efa2383277d42d72abd97198b5527f

<a id="opId44efa2383277d42d72abd97198b5527f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID} \
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

fetch('/api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}`

*Update a task custom field (setup).*

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

<h3 id="44efa2383277d42d72abd97198b5527f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Task custom field (setup) object|
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

<h3 id="44efa2383277d42d72abd97198b5527f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Task custom field (setup) updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 588c51162569e4e9bf0a2beaeb9d0893

<a id="opId588c51162569e4e9bf0a2beaeb9d0893"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/customFields/tasks/{customFieldID}`

*Delete a task custom field (setup).*

<h3 id="588c51162569e4e9bf0a2beaeb9d0893-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="588c51162569e4e9bf0a2beaeb9d0893-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Task custom field (setup) deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Task custom field (setup) does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>