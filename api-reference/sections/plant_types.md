# Plant Types

Plant types define categories of plant items, such as vehicles or office equipment, so that you can manage them easily.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Create-Plant-Types.htm">External documentation</a>

## ad4eb46457dbc51eae063df9218cf878

<a id="opIdad4eb46457dbc51eae063df9218cf878"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/`

*List all plant types.*

<h3 id="ad4eb46457dbc51eae063df9218cf878-parameters">Parameters</h3>

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

<h3 id="ad4eb46457dbc51eae063df9218cf878-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all plant types.|Inline|

<h3 id="ad4eb46457dbc51eae063df9218cf878-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## d6fa20d9fd61ecd6ee8fe71930addbf3

<a id="opIdd6fa20d9fd61ecd6ee8fe71930addbf3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/plantTypes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Frequency": "Year",
  "Qty": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/plantTypes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/plantTypes/`

*Create a new plant type.*

> Body parameter

```json
{
  "Name": "string",
  "Frequency": "Year",
  "Qty": 0
}
```

<h3 id="d6fa20d9fd61ecd6ee8fe71930addbf3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Plant type object|
|» Name|body|string|true|none|
|» Frequency|body|string|true|If specifying frequency, please also specify Qty.|
|» Qty|body|integer|false|If frequency is not "Hour", Qty must be between 1-12.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Frequency|Year|
|» Frequency|Month|
|» Frequency|Week|
|» Frequency|Hour|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "Frequency": "Year",
  "Qty": 0,
  "Archived": true
}
```

<h3 id="d6fa20d9fd61ecd6ee8fe71930addbf3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Plant type created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="d6fa20d9fd61ecd6ee8fe71930addbf3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Frequency|string|true|none|If specifying frequency, please also specify Qty.|
|» Qty|integer|true|none|If frequency is not "Hour", Qty must be between 1-12.|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Frequency|Year|
|Frequency|Month|
|Frequency|Week|
|Frequency|Hour|

<aside class="success">
This operation does not require authentication
</aside>

## c61d13d210ae75dacbeafa3c0697c3ba

<a id="opIdc61d13d210ae75dacbeafa3c0697c3ba"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}`

*Retrieve details for a specific plant type.*

<h3 id="c61d13d210ae75dacbeafa3c0697c3ba-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
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
  "Frequency": "Year",
  "Qty": 0,
  "Archived": true
}
```

<h3 id="c61d13d210ae75dacbeafa3c0697c3ba-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Plant type details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant type not found.|None|

<h3 id="c61d13d210ae75dacbeafa3c0697c3ba-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Frequency|string|true|none|If specifying frequency, please also specify Qty.|
|» Qty|integer|true|none|If frequency is not "Hour", Qty must be between 1-12.|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Frequency|Year|
|Frequency|Month|
|Frequency|Week|
|Frequency|Hour|

<aside class="success">
This operation does not require authentication
</aside>

## d54b8d5237ad84a9daa3a18b193a8cae

<a id="opIdd54b8d5237ad84a9daa3a18b193a8cae"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Frequency": "Year",
  "Qty": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}`

*Update a plant type.*

> Body parameter

```json
{
  "Name": "string",
  "Frequency": "Year",
  "Qty": 0
}
```

<h3 id="d54b8d5237ad84a9daa3a18b193a8cae-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|body|body|object|true|Plant type object|
|» Name|body|string|false|none|
|» Frequency|body|string|false|If specifying frequency, please also specify Qty.|
|» Qty|body|integer|false|If frequency is not "Hour", Qty must be between 1-12.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Frequency|Year|
|» Frequency|Month|
|» Frequency|Week|
|» Frequency|Hour|

<h3 id="d54b8d5237ad84a9daa3a18b193a8cae-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant type updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## a1f0c6b5bb235fff085cf7cbb0151724

<a id="opIda1f0c6b5bb235fff085cf7cbb0151724"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}`

*Delete a plant type.*

<h3 id="a1f0c6b5bb235fff085cf7cbb0151724-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a1f0c6b5bb235fff085cf7cbb0151724-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant type deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant type does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>