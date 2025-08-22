# Asset Test Histories

## c62ff1f603bbbf8d3fef13623082361e

<a id="opIdc62ff1f603bbbf8d3fef13623082361e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/testHistory/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/testHistory/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/testHistory/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/testHistory/`

*List all asset test histories.*

<h3 id="c62ff1f603bbbf8d3fef13623082361e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|pageSize|query|integer|false|The maximum number of results to be returned by a request.|
|page|query|integer|false|Set the page number on paginated request|
|limit|query|integer|false|Set the limit of number of records in a request|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
[
  {
    "Job": {
      "ID": 0,
      "DateIssued": "2021-04-22",
      "DueDate": "2021-04-22",
      "CostCenter": 0
    },
    "Quote": {
      "ID": 0,
      "DateIssued": "2021-04-22",
      "DueDate": "2021-04-22",
      "CostCenter": 0
    },
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    },
    "TestRecord": {
      "Employee": {
        "ID": 0,
        "Name": "string"
      },
      "Date": "2021-04-22",
      "Notes": "string",
      "Result": "string"
    },
    "FailurePoints": [
      {
        "ID": 0,
        "Name": "string",
        "Recommendations": [
          {
            "ID": 0,
            "Name": "string"
          }
        ]
      }
    ],
    "TestReadings": [
      {
        "Name": "string",
        "Value": "string"
      }
    ]
  }
]
```

<h3 id="c62ff1f603bbbf8d3fef13623082361e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all asset test histories.|Inline|

<h3 id="c62ff1f603bbbf8d3fef13623082361e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Job|object|true|none|none|
|»» ID|integer|true|none|none|
|»» DateIssued|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» DueDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» CostCenter|integer|true|none|none|
|» Quote|object|true|none|none|
|»» ID|integer|true|none|none|
|»» DateIssued|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» DueDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» CostCenter|integer|true|none|none|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» TestRecord|object|true|none|none|
|»» Employee|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Date|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» Notes|string¦null|false|none|none|
|»» Result|string|true|none|none|
|» FailurePoints|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Recommendations|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» TestReadings|[object]|true|none|none|
|»» Name|string|true|none|none|
|»» Value|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>