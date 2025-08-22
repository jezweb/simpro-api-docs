# DataFeedEvents

## 9bb855b25fe83ee5721595ade33a6af1

<a id="opId9bb855b25fe83ee5721595ade33a6af1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/dataFeedEvents/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/dataFeedEvents/',
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

r = requests.get('/api/v1.0/companies/{companyID}/dataFeedEvents/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/dataFeedEvents/`

*List all datafeedevents.*

<h3 id="9bb855b25fe83ee5721595ade33a6af1-parameters">Parameters</h3>

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
    "EventID": 12345,
    "EventUUID": "string",
    "CompanyID": 0,
    "FeedName": "string",
    "DocumentID": 0,
    "DocumentName": "string",
    "ErrorMessage": "string"
  }
]
```

<h3 id="9bb855b25fe83ee5721595ade33a6af1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all datafeedevents.|Inline|

<h3 id="9bb855b25fe83ee5721595ade33a6af1-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|A valid data feed event ID|
|» EventID|integer|true|none|ID of the event|
|» EventUUID|string|true|none|none|
|» CompanyID|integer|true|none|none|
|» FeedName|string|true|none|Feed name used for processing the document|
|» DocumentID|integer|true|none|Document ID|
|» DocumentName|string|true|none|Document Name|
|» ErrorMessage|string|true|none|Event error message|

<aside class="success">
This operation does not require authentication
</aside>

## 81a1a5e1cae099d0310963bbde9a7f83

<a id="opId81a1a5e1cae099d0310963bbde9a7f83"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/dataFeedEvents/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ID": 0,
  "EventUUID": "string",
  "CompanyID": 0,
  "FeedName": "string",
  "DocumentID": 0,
  "DocumentName": "string",
  "ErrorMessage": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/dataFeedEvents/',
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

r = requests.post('/api/v1.0/companies/{companyID}/dataFeedEvents/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/dataFeedEvents/`

*Create a new datafeedevent.*

> Body parameter

```json
{
  "ID": 0,
  "EventUUID": "string",
  "CompanyID": 0,
  "FeedName": "string",
  "DocumentID": 0,
  "DocumentName": "string",
  "ErrorMessage": "string"
}
```

<h3 id="81a1a5e1cae099d0310963bbde9a7f83-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|DataFeedEvent object|
|» ID|body|integer|true|A valid data feed event ID|
|» EventUUID|body|string|true|none|
|» CompanyID|body|integer|false|none|
|» FeedName|body|string|false|Feed name used for processing the document|
|» DocumentID|body|integer|false|Document ID|
|» DocumentName|body|string|false|Document Name|
|» ErrorMessage|body|string|false|Event error message|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "EventID": 12345,
  "EventUUID": "string",
  "CompanyID": 0,
  "FeedName": "string",
  "DocumentID": 0,
  "DocumentName": "string",
  "ErrorMessage": "string"
}
```

<h3 id="81a1a5e1cae099d0310963bbde9a7f83-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|DataFeedEvent created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="81a1a5e1cae099d0310963bbde9a7f83-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|A valid data feed event ID|
|» EventID|integer|true|none|ID of the event|
|» EventUUID|string|true|none|none|
|» CompanyID|integer|true|none|none|
|» FeedName|string|true|none|Feed name used for processing the document|
|» DocumentID|integer|true|none|Document ID|
|» DocumentName|string|true|none|Document Name|
|» ErrorMessage|string|true|none|Event error message|

<aside class="success">
This operation does not require authentication
</aside>

## 1c3d589d780d84005b864a64e68e5899

<a id="opId1c3d589d780d84005b864a64e68e5899"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}`

*Retrieve details for a specific datafeedevent.*

<h3 id="1c3d589d780d84005b864a64e68e5899-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|DataFeedEventID|path|integer|true|A valid data feed event id|
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
  "EventID": 12345,
  "EventUUID": "string",
  "CompanyID": 0,
  "FeedName": "string",
  "DocumentID": 0,
  "DocumentName": "string",
  "ErrorMessage": "string"
}
```

<h3 id="1c3d589d780d84005b864a64e68e5899-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|DataFeedEvent details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|DataFeedEvent not found.|None|

<h3 id="1c3d589d780d84005b864a64e68e5899-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|A valid data feed event ID|
|» EventID|integer|true|none|ID of the event|
|» EventUUID|string|true|none|none|
|» CompanyID|integer|true|none|none|
|» FeedName|string|true|none|Feed name used for processing the document|
|» DocumentID|integer|true|none|Document ID|
|» DocumentName|string|true|none|Document Name|
|» ErrorMessage|string|true|none|Event error message|

<aside class="success">
This operation does not require authentication
</aside>

## e839946c5d98184f38052de6dbfacddf

<a id="opIde839946c5d98184f38052de6dbfacddf"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/dataFeedEvents/{DataFeedEventID}`

*Delete a datafeedevent.*

<h3 id="e839946c5d98184f38052de6dbfacddf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|DataFeedEventID|path|integer|true|A valid data feed event id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e839946c5d98184f38052de6dbfacddf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|DataFeedEvent deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|DataFeedEvent does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>