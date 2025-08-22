# Response Times

In Simpro, a response time is the time taken between logging and scheduling a job. You can assign a response time to indicate a job's urgency.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Response-Times.htm">External documentation</a>

## 9d29b7ad20ba5cc63f0267f045d35387

<a id="opId9d29b7ad20ba5cc63f0267f045d35387"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/responseTimes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/responseTimes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/responseTimes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/responseTimes/`

*List all response times.*

<h3 id="9d29b7ad20ba5cc63f0267f045d35387-parameters">Parameters</h3>

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
    "Name": "24 Hours Emergency Response",
    "Archived": true
  }
]
```

<h3 id="9d29b7ad20ba5cc63f0267f045d35387-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all response times.|Inline|

<h3 id="9d29b7ad20ba5cc63f0267f045d35387-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a99d2a4a50250c8a17443f45b9a8989c

<a id="opIda99d2a4a50250c8a17443f45b9a8989c"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/responseTimes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "24 Hours Emergency Response",
  "Days": 0,
  "Hours": 24,
  "Minutes": 0,
  "IncludeWeekends": true,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/responseTimes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/responseTimes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/responseTimes/`

*Create a new response time.*

> Body parameter

```json
{
  "Name": "24 Hours Emergency Response",
  "Days": 0,
  "Hours": 24,
  "Minutes": 0,
  "IncludeWeekends": true,
  "Archived": true
}
```

<h3 id="a99d2a4a50250c8a17443f45b9a8989c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Response time object|
|» Name|body|string|true|none|
|» Days|body|integer|false|none|
|» Hours|body|integer|false|none|
|» Minutes|body|integer|false|none|
|» IncludeWeekends|body|boolean|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "24 Hours Emergency Response",
  "Days": 0,
  "Hours": 24,
  "Minutes": 0,
  "IncludeWeekends": true,
  "Archived": true
}
```

<h3 id="a99d2a4a50250c8a17443f45b9a8989c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Response time created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="a99d2a4a50250c8a17443f45b9a8989c-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Days|integer|true|none|none|
|» Hours|integer|true|none|none|
|» Minutes|integer|true|none|none|
|» IncludeWeekends|boolean|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 202587a5af09236525398fc0c72d0afd

<a id="opId202587a5af09236525398fc0c72d0afd"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}`

*Retrieve details for a specific response time.*

<h3 id="202587a5af09236525398fc0c72d0afd-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
  "ID": 12345,
  "Name": "24 Hours Emergency Response",
  "Days": 0,
  "Hours": 24,
  "Minutes": 0,
  "IncludeWeekends": true,
  "Archived": true
}
```

<h3 id="202587a5af09236525398fc0c72d0afd-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Response time details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Response time not found.|None|

<h3 id="202587a5af09236525398fc0c72d0afd-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Days|integer|true|none|none|
|» Hours|integer|true|none|none|
|» Minutes|integer|true|none|none|
|» IncludeWeekends|boolean|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## ee3cf3cbc058f24f7adc432be8b1015e

<a id="opIdee3cf3cbc058f24f7adc432be8b1015e"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "24 Hours Emergency Response",
  "Days": 0,
  "Hours": 24,
  "Minutes": 0,
  "IncludeWeekends": true,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}`

*Update a response time.*

> Body parameter

```json
{
  "Name": "24 Hours Emergency Response",
  "Days": 0,
  "Hours": 24,
  "Minutes": 0,
  "IncludeWeekends": true,
  "Archived": true
}
```

<h3 id="ee3cf3cbc058f24f7adc432be8b1015e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|responseTimeID|path|integer|true|A valid response time id|
|body|body|object|true|Response time object|
|» Name|body|string|false|none|
|» Days|body|integer|false|none|
|» Hours|body|integer|false|none|
|» Minutes|body|integer|false|none|
|» IncludeWeekends|body|boolean|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ee3cf3cbc058f24f7adc432be8b1015e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Response time updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## de44d68d80a87f5b0ec9a8b0d78f27d2

<a id="opIdde44d68d80a87f5b0ec9a8b0d78f27d2"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/responseTimes/{responseTimeID}`

*Delete a response time.*

<h3 id="de44d68d80a87f5b0ec9a8b0d78f27d2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|responseTimeID|path|integer|true|A valid response time id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="de44d68d80a87f5b0ec9a8b0d78f27d2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Response time deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Response time does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>