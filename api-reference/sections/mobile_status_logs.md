# Mobile Status Logs

## 3e938f17f30a5fd1b59d2ca5c6436699

<a id="opId3e938f17f30a5fd1b59d2ca5c6436699"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/logs/mobileStatus/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/logs/mobileStatus/',
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

r = requests.get('/api/v1.0/companies/{companyID}/logs/mobileStatus/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/logs/mobileStatus/`

*List all mobile status logs.*

<h3 id="3e938f17f30a5fd1b59d2ca5c6436699-parameters">Parameters</h3>

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
    "ID": 123,
    "Staff": {
      "ID": 0,
      "Name": "string"
    },
    "WorkOrder": {
      "ID": 0,
      "Type": "Job",
      "ProjectID": 0,
      "CostCenterID": 0,
      "_href": "/api/v1.0/companies/{companyID}/jobs|quotes/{jobID|quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}"
    },
    "Status": {
      "ID": 12345,
      "Name": 12345,
      "Color": "#145A32"
    },
    "Latitude": 24.9137924,
    "Longitude": 67.1211896,
    "DateLogged": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="3e938f17f30a5fd1b59d2ca5c6436699-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all mobile status logs.|Inline|

<h3 id="3e938f17f30a5fd1b59d2ca5c6436699-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Staff ID|
|»» Name|string|true|none|Staff Name|
|» WorkOrder|object|true|none|none|
|»» ID|integer|true|none|Work order ID|
|»» Type|string|true|none|Type of project|
|»» ProjectID|integer|true|none|Job or Quote ID|
|»» CostCenterID|integer|true|none|Cost Center ID|
|»» _href|string|true|none|Link to a work order resource created withing job/quote cost center.|
|» Status|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|integer|true|none|none|
|»» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Latitude|number|true|none|none|
|» Longitude|number|true|none|none|
|» DateLogged|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Job|
|Type|Quote|

<aside class="success">
This operation does not require authentication
</aside>

## 93ccb9ae2d95ba5c5a9e38f8d88e6143

<a id="opId93ccb9ae2d95ba5c5a9e38f8d88e6143"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/logs/mobileStatus/{logID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/logs/mobileStatus/{logID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/logs/mobileStatus/{logID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/logs/mobileStatus/{logID}`

*Retrieve details for a specific mobile status log.*

<h3 id="93ccb9ae2d95ba5c5a9e38f8d88e6143-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|logID|path|integer|true|A valid log id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 123,
  "Staff": {
    "ID": 0,
    "Name": "string"
  },
  "WorkOrder": {
    "ID": 0,
    "Type": "Job",
    "ProjectID": 0,
    "CostCenterID": 0,
    "_href": "/api/v1.0/companies/{companyID}/jobs|quotes/{jobID|quoteID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}"
  },
  "Status": {
    "ID": 12345,
    "Name": 12345,
    "Color": "#145A32"
  },
  "Latitude": 24.9137924,
  "Longitude": 67.1211896,
  "DateLogged": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="93ccb9ae2d95ba5c5a9e38f8d88e6143-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Mobile status log details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Mobile status log not found.|None|

<h3 id="93ccb9ae2d95ba5c5a9e38f8d88e6143-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Staff ID|
|»» Name|string|true|none|Staff Name|
|» WorkOrder|object|true|none|none|
|»» ID|integer|true|none|Work order ID|
|»» Type|string|true|none|Type of project|
|»» ProjectID|integer|true|none|Job or Quote ID|
|»» CostCenterID|integer|true|none|Cost Center ID|
|»» _href|string|true|none|Link to a work order resource created withing job/quote cost center.|
|» Status|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|integer|true|none|none|
|»» Color|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Latitude|number|true|none|none|
|» Longitude|number|true|none|none|
|» DateLogged|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Job|
|Type|Quote|

<aside class="success">
This operation does not require authentication
</aside>