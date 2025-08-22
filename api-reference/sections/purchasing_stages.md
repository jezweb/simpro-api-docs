# Purchasing Stages

Purchasing stages is used to categorise your materials.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Purchasing-Stages.htm">External documentation</a>

## b393f2e81f0934d0858f159e75102470

<a id="opIdb393f2e81f0934d0858f159e75102470"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/`

*List all purchasing stages.*

<h3 id="b393f2e81f0934d0858f159e75102470-parameters">Parameters</h3>

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
    "Name": "Stage 1"
  }
]
```

<h3 id="b393f2e81f0934d0858f159e75102470-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all purchasing stages.|Inline|

<h3 id="b393f2e81f0934d0858f159e75102470-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 879c839adb3ce7419f141d531fb892ee

<a id="opId879c839adb3ce7419f141d531fb892ee"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Stage 1"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/`

*Create a new purchasing stage.*

> Body parameter

```json
{
  "Name": "Stage 1"
}
```

<h3 id="879c839adb3ce7419f141d531fb892ee-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Purchasing Stage object|
|» Name|body|string|true|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Stage 1",
  "Archived": true
}
```

<h3 id="879c839adb3ce7419f141d531fb892ee-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Purchasing Stage created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="879c839adb3ce7419f141d531fb892ee-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|Whether this customer is archived.|

<aside class="success">
This operation does not require authentication
</aside>

## afc2aaa09975cbb86e6e4bff2d354c9c

<a id="opIdafc2aaa09975cbb86e6e4bff2d354c9c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}`

*Retrieve details for a specific purchasing stage.*

<h3 id="afc2aaa09975cbb86e6e4bff2d354c9c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|purchasingStageID|path|integer|true|A valid purchasing stage id|
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
  "Name": "Stage 1",
  "Archived": true
}
```

<h3 id="afc2aaa09975cbb86e6e4bff2d354c9c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Purchasing Stage details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Purchasing Stage not found.|None|

<h3 id="afc2aaa09975cbb86e6e4bff2d354c9c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Archived|boolean|true|none|Whether this customer is archived.|

<aside class="success">
This operation does not require authentication
</aside>

## f4d3f116b4986b3861ef48145f7017f6

<a id="opIdf4d3f116b4986b3861ef48145f7017f6"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Stage 1"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}`

*Update a purchasing stage.*

> Body parameter

```json
{
  "Name": "Stage 1"
}
```

<h3 id="f4d3f116b4986b3861ef48145f7017f6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|purchasingStageID|path|integer|true|A valid purchasing stage id|
|body|body|object|true|Purchasing Stage object|
|» Name|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f4d3f116b4986b3861ef48145f7017f6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Purchasing Stage updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## cbc3378633ea47b54e96018fbf98423b

<a id="opIdcbc3378633ea47b54e96018fbf98423b"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/materials/purchasingStages/{purchasingStageID}`

*Delete a purchasing stage.*

<h3 id="cbc3378633ea47b54e96018fbf98423b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|purchasingStageID|path|integer|true|A valid purchasing stage id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="cbc3378633ea47b54e96018fbf98423b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Purchasing Stage deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Purchasing Stage does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>