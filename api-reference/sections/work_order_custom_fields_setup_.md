# Work Order Custom Fields (setup)

Custom fields can be used to store additional information such as a customer's alternate email, or alternate contact person. After they are created, custom fields can be found under the Custom tab in each record.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Custom-Fields.htm">External documentation</a>

## 7da146a2b151f3331e3c5876c453fea0

<a id="opId7da146a2b151f3331e3c5876c453fea0"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/workOrders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/workOrders/`

*List all work order custom fields (setup).*

<h3 id="7da146a2b151f3331e3c5876c453fea0-parameters">Parameters</h3>

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

<h3 id="7da146a2b151f3331e3c5876c453fea0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all work order custom fields (setup).|Inline|

<h3 id="7da146a2b151f3331e3c5876c453fea0-responseschema">Response Schema</h3>

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

## 1dc2709d7acd1969010e18df366e8743

<a id="opId1dc2709d7acd1969010e18df366e8743"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/customFields/workOrders/ \
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

fetch('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/customFields/workOrders/`

*Create a new work order custom field (setup).*

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

<h3 id="1dc2709d7acd1969010e18df366e8743-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Work order custom field (setup) object|
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

<h3 id="1dc2709d7acd1969010e18df366e8743-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Work order custom field (setup) created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="1dc2709d7acd1969010e18df366e8743-responseschema">Response Schema</h3>

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

## bc83a1f4d5c8fb8d08268afc05812bdd

<a id="opIdbc83a1f4d5c8fb8d08268afc05812bdd"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}`

*Retrieve details for a specific work order custom field (setup).*

<h3 id="bc83a1f4d5c8fb8d08268afc05812bdd-parameters">Parameters</h3>

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

<h3 id="bc83a1f4d5c8fb8d08268afc05812bdd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Work order custom field (setup) details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Work order custom field (setup) not found.|None|

<h3 id="bc83a1f4d5c8fb8d08268afc05812bdd-responseschema">Response Schema</h3>

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

## b8221c418b2b1f8d2e1059f4ec22e2a0

<a id="opIdb8221c418b2b1f8d2e1059f4ec22e2a0"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID} \
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

fetch('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}`

*Update a work order custom field (setup).*

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

<h3 id="b8221c418b2b1f8d2e1059f4ec22e2a0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Work order custom field (setup) object|
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

<h3 id="b8221c418b2b1f8d2e1059f4ec22e2a0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Work order custom field (setup) updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2517e27e2dce405d374af00675b8d3fa

<a id="opId2517e27e2dce405d374af00675b8d3fa"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/customFields/workOrders/{customFieldID}`

*Delete a work order custom field (setup).*

<h3 id="2517e27e2dce405d374af00675b8d3fa-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customFieldID|path|integer|true|A valid custom field id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2517e27e2dce405d374af00675b8d3fa-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Work order custom field (setup) deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Work order custom field (setup) does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>