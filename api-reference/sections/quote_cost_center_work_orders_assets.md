# Quote Cost Center Work Orders Assets

## 07e35c193983dbf7ee8c74a8588b28b9

<a id="opId07e35c193983dbf7ee8c74a8588b28b9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/`

*List all quote cost center work orders assets.*

<h3 id="07e35c193983dbf7ee8c74a8588b28b9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|workOrderID|path|integer|true|A valid work order id|
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
    "Asset": {
      "ID": 0,
      "AssetType": {
        "ID": 12345,
        "Name": "Fire Extinguisher"
      }
    },
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    },
    "Result": "NoTest",
    "Notes": "string",
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
        "TestReading": {
          "ID": 12345,
          "Name": "string"
        },
        "Value": "string"
      }
    ]
  }
]
```

<h3 id="07e35c193983dbf7ee8c74a8588b28b9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all quote cost center work orders assets.|Inline|

<h3 id="07e35c193983dbf7ee8c74a8588b28b9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Asset|object|true|none|none|
|»» ID|integer|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» ServiceLevel|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Result|string|true|none|none|
|» Notes|string|true|none|none|
|» FailurePoints|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Recommendations|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» TestReadings|[object]|true|none|none|
|»» TestReading|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Value|string¦null|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Result|NoTest|
|Result|Fail|
|Result|Pass|

<aside class="success">
This operation does not require authentication
</aside>

## 047108dea14408cdda03d5412f70bbc6

<a id="opId047108dea14408cdda03d5412f70bbc6"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID}`

*Retrieve details for a specific quote cost center work orders asset.*

<h3 id="047108dea14408cdda03d5412f70bbc6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|workOrderID|path|integer|true|A valid work order id|
|assetID|path|integer|true|A valid asset id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Asset": {
    "ID": 0,
    "AssetType": {
      "ID": 12345,
      "Name": "Fire Extinguisher"
    }
  },
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "Result": "NoTest",
  "Notes": "string",
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
      "TestReading": {
        "ID": 12345,
        "Name": "string"
      },
      "Value": "string"
    }
  ]
}
```

<h3 id="047108dea14408cdda03d5412f70bbc6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Quote Cost Center Work Orders Asset details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote Cost Center Work Orders Asset not found.|None|

<h3 id="047108dea14408cdda03d5412f70bbc6-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Asset|object|true|none|none|
|»» ID|integer|true|none|none|
|»» AssetType|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» ServiceLevel|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Result|string|true|none|none|
|» Notes|string|true|none|none|
|» FailurePoints|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Recommendations|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» TestReadings|[object]|true|none|none|
|»» TestReading|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Value|string¦null|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Result|NoTest|
|Result|Fail|
|Result|Pass|

<aside class="success">
This operation does not require authentication
</aside>

## 10856e385cd19116f90e11164d934894

<a id="opId10856e385cd19116f90e11164d934894"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "ServiceLevel": 0,
  "Result": "NoTest",
  "Notes": "string",
  "FailurePoints": [
    {
      "ID": 0,
      "Recommendations": [
        0
      ]
    }
  ],
  "TestReadings": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/quotes/{quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/assets/{assetID}`

*Update a quote cost center work orders asset.*

> Body parameter

```json
{
  "ServiceLevel": 0,
  "Result": "NoTest",
  "Notes": "string",
  "FailurePoints": [
    {
      "ID": 0,
      "Recommendations": [
        0
      ]
    }
  ],
  "TestReadings": [
    0
  ]
}
```

<h3 id="10856e385cd19116f90e11164d934894-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|workOrderID|path|integer|true|A valid work order id|
|assetID|path|integer|true|A valid asset id|
|body|body|object|true|Quote Cost Center Work Orders Asset object|
|» ServiceLevel|body|integer|false|ID of a service level|
|» Result|body|string|false|none|
|» Notes|body|string|false|none|
|» FailurePoints|body|[object]|false|none|
|»» ID|body|integer|false|none|
|»» Recommendations|body|[integer]|false|none|
|» TestReadings|body|[integer]|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Result|NoTest|
|» Result|Fail|
|» Result|Pass|

<h3 id="10856e385cd19116f90e11164d934894-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote Cost Center Work Orders Asset updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>