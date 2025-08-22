# Service Fees

A service fee is an additional fee you charge on a job or quote, such as a call-out fee with or without labour included. You can add service fees to both service quotes and jobs, as well as project quotes and jobs.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Service-Fees.htm">External documentation</a>

## 7bf659d823a0fbbdb70a6e5eb8b0ae61

<a id="opId7bf659d823a0fbbdb70a6e5eb8b0ae61"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/serviceFees/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/serviceFees/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/serviceFees/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/serviceFees/`

*List all service fees.*

<h3 id="7bf659d823a0fbbdb70a6e5eb8b0ae61-parameters">Parameters</h3>

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
    "Name": "string",
    "DisplayOrder": 0
  }
]
```

<h3 id="7bf659d823a0fbbdb70a6e5eb8b0ae61-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all service fees.|Inline|

<h3 id="7bf659d823a0fbbdb70a6e5eb8b0ae61-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 5613f106b591281027b76128d5faf34f

<a id="opId5613f106b591281027b76128d5faf34f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/serviceFees/{serviceFeeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/serviceFees/{serviceFeeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/serviceFees/{serviceFeeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/serviceFees/{serviceFeeID}`

*Retrieve details for a specific service fee.*

<h3 id="5613f106b591281027b76128d5faf34f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|serviceFeeID|path|integer|true|A valid service fee id|
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
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "LaborTime": 1.57,
  "Price": 1.57,
  "DisplayOrder": 0,
  "Archived": true
}
```

<h3 id="5613f106b591281027b76128d5faf34f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Service fee details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Service fee not found.|None|

<h3 id="5613f106b591281027b76128d5faf34f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» LaborTime|number¦null|false|none|none|
|» Price|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>