# Journals

## 3562960fe831e644364d4ebe61f42c49

<a id="opId3562960fe831e644364d4ebe61f42c49"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/journals/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/journals/',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/journals/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/journals/`

*List all journals.*

<h3 id="3562960fe831e644364d4ebe61f42c49-parameters">Parameters</h3>

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
    "ID": "string",
    "JournalID": 0,
    "Type": "string",
    "JournalDate": "2018-05-21T19:53:39+10:00",
    "Description": "string",
    "CostCenterID": 0,
    "LinkRef": {
      "ID": 0,
      "Type": "string"
    },
    "Amount": 1.57,
    "DebitAccount": {
      "ID": 0,
      "Name": "string",
      "Number": "string"
    },
    "CreditAccount": {
      "ID": 0,
      "Name": "string",
      "Number": "string"
    },
    "Category": "string"
  }
]
```

<h3 id="3562960fe831e644364d4ebe61f42c49-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all journals.|Inline|

<h3 id="3562960fe831e644364d4ebe61f42c49-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» JournalID|integer|true|none|none|
|» Type|string|true|none|none|
|» JournalDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Description|string|true|none|none|
|» CostCenterID|integer|true|none|none|
|» LinkRef|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Type|string|true|none|none|
|» Amount|number|true|none|none|
|» DebitAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Number|string|true|none|none|
|» CreditAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Number|string|true|none|none|
|» Category|string|true|none|Accounting category reference.|

<aside class="success">
This operation does not require authentication
</aside>