# Quote Archive Reasons

If you set up archive reasons, when you archive a lead, quote or job in Simpro, you are prompted to select the reason why. By creating standard archive reasons to select from, such as 'Lost to competitor' or 'Response time too slow', you can easily create reports on archived leads, quotes or jobs to analyse why your company might not be following through with certain opportunities.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Archive-Reasons.htm?tocpath=Products%7CService%20and%20Enterprise%7CSystem%20Setup%7C_____36">External documentation</a>

## dbd8f198582d22ed9fcf356fe4a1f44b

<a id="opIddbd8f198582d22ed9fcf356fe4a1f44b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/`

*List all quote archive reasons.*

<h3 id="dbd8f198582d22ed9fcf356fe4a1f44b-parameters">Parameters</h3>

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
    "ArchiveReason": "string"
  }
]
```

<h3 id="dbd8f198582d22ed9fcf356fe4a1f44b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all quote archive reasons.|Inline|

<h3 id="dbd8f198582d22ed9fcf356fe4a1f44b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ArchiveReason|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0821a5b35df9f035f0ddd69b09a3ec6e

<a id="opId0821a5b35df9f035f0ddd69b09a3ec6e"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ArchiveReason": "string",
  "DisplayOrder": 0,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/`

*Create a new quote archive reason.*

> Body parameter

```json
{
  "ArchiveReason": "string",
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="0821a5b35df9f035f0ddd69b09a3ec6e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Quote Archive Reason object|
|» ArchiveReason|body|string|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "ArchiveReason": "string",
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="0821a5b35df9f035f0ddd69b09a3ec6e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote Archive Reason created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="0821a5b35df9f035f0ddd69b09a3ec6e-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ArchiveReason|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## df77b3301b03214244e14068baac9ddc

<a id="opIddf77b3301b03214244e14068baac9ddc"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}`

*Retrieve details for a specific quote archive reason.*

<h3 id="df77b3301b03214244e14068baac9ddc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|archiveReasonID|path|integer|true|A valid archive reason id|
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
  "ArchiveReason": "string",
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="df77b3301b03214244e14068baac9ddc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Quote Archive Reason details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote Archive Reason not found.|None|

<h3 id="df77b3301b03214244e14068baac9ddc-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ArchiveReason|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e51bcb7220fc52018dc18fb4bf2dcafb

<a id="opIde51bcb7220fc52018dc18fb4bf2dcafb"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "ArchiveReason": "string",
  "DisplayOrder": 0,
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}`

*Update a quote archive reason.*

> Body parameter

```json
{
  "ArchiveReason": "string",
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="e51bcb7220fc52018dc18fb4bf2dcafb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|archiveReasonID|path|integer|true|A valid archive reason id|
|body|body|object|true|Quote Archive Reason object|
|» ArchiveReason|body|string|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e51bcb7220fc52018dc18fb4bf2dcafb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote Archive Reason updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## b04e52c40ed2138ff90a7e4877d50991

<a id="opIdb04e52c40ed2138ff90a7e4877d50991"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/archiveReasons/quotes/{archiveReasonID}`

*Delete a quote archive reason.*

<h3 id="b04e52c40ed2138ff90a7e4877d50991-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|archiveReasonID|path|integer|true|A valid archive reason id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b04e52c40ed2138ff90a7e4877d50991-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote Archive Reason deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote Archive Reason does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>