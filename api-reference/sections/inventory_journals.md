# Inventory Journals

## f43b0589315b45464a85bc723f374066

<a id="opIdf43b0589315b45464a85bc723f374066"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/inventoryJournals/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/inventoryJournals/',
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

r = requests.get('/api/v1.0/companies/{companyID}/inventoryJournals/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/inventoryJournals/`

*List all inventory journals.*

<h3 id="f43b0589315b45464a85bc723f374066-parameters">Parameters</h3>

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
    "JournalDate": "2018-05-21T19:53:39+10:00",
    "Amount": 1.57,
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Memo": "string",
    "ExportDate": "2018-05-21T19:53:39+10:00",
    "SecondaryAccount": "string"
  }
]
```

<h3 id="f43b0589315b45464a85bc723f374066-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all inventory journals.|Inline|

<h3 id="f43b0589315b45464a85bc723f374066-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» JournalDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Amount|number|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Memo|string|true|none|none|
|» ExportDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» SecondaryAccount|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## bb48f1c1f8094bf9a30b39ea42241c94

<a id="opIdbb48f1c1f8094bf9a30b39ea42241c94"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/inventoryJournals/{inventoryJournalID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/inventoryJournals/{inventoryJournalID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/inventoryJournals/{inventoryJournalID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/inventoryJournals/{inventoryJournalID}`

*Retrieve details for a specific inventory journal.*

<h3 id="bb48f1c1f8094bf9a30b39ea42241c94-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|inventoryJournalID|path|integer|true|A valid inventory journal id|
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
  "JournalDate": "2018-05-21T19:53:39+10:00",
  "Amount": 1.57,
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "Memo": "string",
  "ExportDate": "2018-05-21T19:53:39+10:00",
  "SecondaryAccount": "string"
}
```

<h3 id="bb48f1c1f8094bf9a30b39ea42241c94-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Inventory journal details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Inventory journal not found.|None|

<h3 id="bb48f1c1f8094bf9a30b39ea42241c94-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» JournalDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Amount|number|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Memo|string|true|none|none|
|» ExportDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» SecondaryAccount|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>