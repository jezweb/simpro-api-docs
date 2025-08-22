# Job Sections

## 00decf5e1cf4a83d7c55f48a1c2d883a

<a id="opId00decf5e1cf4a83d7c55f48a1c2d883a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/`

*List all job sections.*

<h3 id="00decf5e1cf4a83d7c55f48a1c2d883a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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

<h3 id="00decf5e1cf4a83d7c55f48a1c2d883a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job sections.|Inline|

<h3 id="00decf5e1cf4a83d7c55f48a1c2d883a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Only Project Job has name section.|
|» Description|string|true|none|none|
|» DisplayOrder|integer|true|none|Sets the position of this section relative to the others within this job. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|

<aside class="success">
This operation does not require authentication
</aside>

## ace852344470c0398aa9591f863ece39

<a id="opIdace852344470c0398aa9591f863ece39"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Description": "string",
  "IsVariation": true,
  "IsVariationRetention": true,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/`

*Create a new job section.*

> Body parameter

```json
{
  "Name": "string",
  "Description": "string",
  "IsVariation": true,
  "IsVariationRetention": true,
  "DisplayOrder": 0
}
```

<h3 id="ace852344470c0398aa9591f863ece39-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|body|body|object|true|Job section object|
|» Name|body|string|false|Only Project Job has name section.|
|» Description|body|string|false|none|
|» IsVariation|body|boolean|false|Sets whether or not this section is a variation. Add variations to accommodate extra works on jobs that are outside the scope of the original job, or add-ons requested by the customer.|
|» IsVariationRetention|body|boolean|false|Sets whether or not retention will be held on this variation section. Retention is the percentage of payment held by the customer to ensure the job is completed to specific standards and to safeguard against defects in workmanship. If this is set to true, then IsVariation must also be set to true.|
|» DisplayOrder|body|integer|false|Sets the position of this section relative to the others within this job. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|

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
  "IsVariation": true,
  "IsVariationRetention": true,
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="ace852344470c0398aa9591f863ece39-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job section created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="ace852344470c0398aa9591f863ece39-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Only Project Job has name section.|
|» Description|string|true|none|none|
|» IsVariation|boolean|true|none|Sets whether or not this section is a variation. Add variations to accommodate extra works on jobs that are outside the scope of the original job, or add-ons requested by the customer.|
|» IsVariationRetention|boolean|true|none|Sets whether or not retention will be held on this variation section. Retention is the percentage of payment held by the customer to ensure the job is completed to specific standards and to safeguard against defects in workmanship. If this is set to true, then IsVariation must also be set to true.|
|» DisplayOrder|integer|true|none|Sets the position of this section relative to the others within this job. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## 21d602c7d4824f15a0cecf4f6ff359de

<a id="opId21d602c7d4824f15a0cecf4f6ff359de"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}`

*Retrieve details for a specific job section.*

<h3 id="21d602c7d4824f15a0cecf4f6ff359de-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
  "IsVariation": true,
  "IsVariationRetention": true,
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="21d602c7d4824f15a0cecf4f6ff359de-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job section details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job section not found.|None|

<h3 id="21d602c7d4824f15a0cecf4f6ff359de-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Only Project Job has name section.|
|» Description|string|true|none|none|
|» IsVariation|boolean|true|none|Sets whether or not this section is a variation. Add variations to accommodate extra works on jobs that are outside the scope of the original job, or add-ons requested by the customer.|
|» IsVariationRetention|boolean|true|none|Sets whether or not retention will be held on this variation section. Retention is the percentage of payment held by the customer to ensure the job is completed to specific standards and to safeguard against defects in workmanship. If this is set to true, then IsVariation must also be set to true.|
|» DisplayOrder|integer|true|none|Sets the position of this section relative to the others within this job. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## 7d593266631deae513acf6ce5fdb3467

<a id="opId7d593266631deae513acf6ce5fdb3467"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Description": "string",
  "IsVariation": true,
  "IsVariationRetention": true,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}`

*Update a job section.*

> Body parameter

```json
{
  "Name": "string",
  "Description": "string",
  "IsVariation": true,
  "IsVariationRetention": true,
  "DisplayOrder": 0
}
```

<h3 id="7d593266631deae513acf6ce5fdb3467-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|body|body|object|true|Job section object|
|» Name|body|string|false|Only Project Job has name section.|
|» Description|body|string|false|none|
|» IsVariation|body|boolean|false|Sets whether or not this section is a variation. Add variations to accommodate extra works on jobs that are outside the scope of the original job, or add-ons requested by the customer.|
|» IsVariationRetention|body|boolean|false|Sets whether or not retention will be held on this variation section. Retention is the percentage of payment held by the customer to ensure the job is completed to specific standards and to safeguard against defects in workmanship. If this is set to true, then IsVariation must also be set to true.|
|» DisplayOrder|body|integer|false|Sets the position of this section relative to the others within this job. Please note that the values you set will be overridden with a sequence of numbers beginning with 1.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="7d593266631deae513acf6ce5fdb3467-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job section updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## ac582878dc31a81a64cbdc752e22d631

<a id="opIdac582878dc31a81a64cbdc752e22d631"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}`

*Delete a job section.*

<h3 id="ac582878dc31a81a64cbdc752e22d631-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ac582878dc31a81a64cbdc752e22d631-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job section deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job section does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>