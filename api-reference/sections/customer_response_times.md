# Customer Response Times

## e216a09300b6c5bfa48a012d007add95

<a id="opIde216a09300b6c5bfa48a012d007add95"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/`

*List all customer response times.*

<h3 id="e216a09300b6c5bfa48a012d007add95-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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
    "ResponseTime": {
      "ID": 12345,
      "Name": "24 Hours Emergency Response",
      "Archived": true
    },
    "Days": 0,
    "Hours": 0,
    "Minutes": 0
  }
]
```

<h3 id="e216a09300b6c5bfa48a012d007add95-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer response times.|Inline|

<h3 id="e216a09300b6c5bfa48a012d007add95-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ResponseTime|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Archived|boolean|true|none|none|
|» Days|integer|true|none|none|
|» Hours|integer|true|none|none|
|» Minutes|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 66765a93fb5f08cf1ca7bd2fa03af759

<a id="opId66765a93fb5f08cf1ca7bd2fa03af759"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ResponseTime": 0,
  "Days": 0,
  "Hours": 0,
  "Minutes": 0,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/`

*Create a new customer response time.*

> Body parameter

```json
{
  "ResponseTime": 0,
  "Days": 0,
  "Hours": 0,
  "Minutes": 0,
  "IsDefault": true
}
```

<h3 id="66765a93fb5f08cf1ca7bd2fa03af759-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|body|body|object|true|Customer response time object|
|» ResponseTime|body|integer|true|ID of a response time|
|» Days|body|integer|false|none|
|» Hours|body|integer|false|none|
|» Minutes|body|integer|false|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ResponseTime": {
    "ID": 12345,
    "Name": "24 Hours Emergency Response",
    "Archived": true
  },
  "Days": 0,
  "Hours": 0,
  "Minutes": 0,
  "IsDefault": true
}
```

<h3 id="66765a93fb5f08cf1ca7bd2fa03af759-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer response time created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="66765a93fb5f08cf1ca7bd2fa03af759-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ResponseTime|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Archived|boolean|true|none|none|
|» Days|integer|true|none|none|
|» Hours|integer|true|none|none|
|» Minutes|integer|true|none|none|
|» IsDefault|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 47915c1b0872e58843baf978a526f1bd

<a id="opId47915c1b0872e58843baf978a526f1bd"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}`

*Retrieve details for a specific customer response time.*

<h3 id="47915c1b0872e58843baf978a526f1bd-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|responseTimeID|path|integer|true|A valid response time id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ResponseTime": {
    "ID": 12345,
    "Name": "24 Hours Emergency Response",
    "Archived": true
  },
  "Days": 0,
  "Hours": 0,
  "Minutes": 0,
  "IsDefault": true
}
```

<h3 id="47915c1b0872e58843baf978a526f1bd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer response time details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer response time not found.|None|

<h3 id="47915c1b0872e58843baf978a526f1bd-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ResponseTime|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Archived|boolean|true|none|none|
|» Days|integer|true|none|none|
|» Hours|integer|true|none|none|
|» Minutes|integer|true|none|none|
|» IsDefault|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 4e4dd05df19de8a2c8cb12e03780377c

<a id="opId4e4dd05df19de8a2c8cb12e03780377c"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Days": 0,
  "Hours": 0,
  "Minutes": 0,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}`

*Update a customer response time.*

> Body parameter

```json
{
  "Days": 0,
  "Hours": 0,
  "Minutes": 0,
  "IsDefault": true
}
```

<h3 id="4e4dd05df19de8a2c8cb12e03780377c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|responseTimeID|path|integer|true|A valid response time id|
|body|body|object|true|Customer response time object|
|» Days|body|integer|false|none|
|» Hours|body|integer|false|none|
|» Minutes|body|integer|false|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="4e4dd05df19de8a2c8cb12e03780377c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer response time updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 7ac65b05da8d12c39868cc990be56213

<a id="opId7ac65b05da8d12c39868cc990be56213"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/responseTimes/{responseTimeID}`

*Delete a customer response time.*

<h3 id="7ac65b05da8d12c39868cc990be56213-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|responseTimeID|path|integer|true|A valid response time id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="7ac65b05da8d12c39868cc990be56213-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer response time deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer response time does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>