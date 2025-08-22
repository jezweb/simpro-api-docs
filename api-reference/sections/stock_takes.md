# Stock Takes

Update Stock levels by performing a Stocktakes / Adjustments.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Stock-Adjustments-and-Stocktakes.htm">External documentation</a>

## 87590598bdd8771f1eb92f0ebea2de9b

<a id="opId87590598bdd8771f1eb92f0ebea2de9b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/stockTakes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockTakes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/stockTakes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/stockTakes/`

*List all stock takes.*

<h3 id="87590598bdd8771f1eb92f0ebea2de9b-parameters">Parameters</h3>

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
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "stockTakeReasonID": 0,
    "Approved": true,
    "Value": "string"
  }
]
```

<h3 id="87590598bdd8771f1eb92f0ebea2de9b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all stock takes.|Inline|

<h3 id="87590598bdd8771f1eb92f0ebea2de9b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» stockTakeReasonID|integer|true|none|none|
|» Approved|boolean|true|none|none|
|» Value|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 16a72ba9f98d6b7943574a27fb408d4e

<a id="opId16a72ba9f98d6b7943574a27fb408d4e"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/stockTakes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "StockTake",
  "StorageDevice": 0,
  "stockTakeReasonID": 0,
  "Approved": true,
  "Items": [
    {
      "ID": 0,
      "CountedStock": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockTakes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/stockTakes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/stockTakes/`

*Create a new stock take.*

> Body parameter

```json
{
  "Type": "StockTake",
  "StorageDevice": 0,
  "stockTakeReasonID": 0,
  "Approved": true,
  "Items": [
    {
      "ID": 0,
      "CountedStock": 0
    }
  ]
}
```

<h3 id="16a72ba9f98d6b7943574a27fb408d4e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Stock take object|
|» Type|body|string|true|none|
|» StorageDevice|body|integer|true|ID of a storage device|
|» stockTakeReasonID|body|integer|false|none|
|» Approved|body|boolean|false|none|
|» Items|body|[object]|false|none|
|»» ID|body|integer|false|none|
|»» CountedStock|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|StockTake|
|» Type|StockAdjustment|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "StorageDevice": {
    "ID": 0,
    "Name": "string"
  },
  "stockTakeReasonID": 0,
  "StockTakeDate": "2018-05-21T19:53:39+10:00",
  "CreatedBy": {
    "ID": 0,
    "Name": "string"
  },
  "Approved": true,
  "ApprovedDate": "2018-05-21T19:53:39+10:00",
  "ApprovedBy": [
    {
      "ID": 0,
      "Name": "string"
    }
  ],
  "Items": [
    {
      "ID": 0,
      "PartNo": "string",
      "Name": "string",
      "CountedStock": 0,
      "Variation": 0,
      "Value": 0
    }
  ],
  "StockValue": {
    "Before": 0,
    "AdjustmentAmount": "string",
    "After": 0
  },
  "Value": "string"
}
```

<h3 id="16a72ba9f98d6b7943574a27fb408d4e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Stock take created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="16a72ba9f98d6b7943574a27fb408d4e-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» stockTakeReasonID|integer|true|none|none|
|» StockTakeDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|» Approved|boolean|true|none|none|
|» ApprovedDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» ApprovedBy|[object]|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|» Items|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|none|
|»» Name|string|true|none|none|
|»» CountedStock|integer|true|none|none|
|»» Variation|integer|true|none|none|
|»» Value|integer|true|none|none|
|» StockValue|object|true|none|none|
|»» Before|integer|true|none|none|
|»» AdjustmentAmount|string|true|none|none|
|»» After|integer|true|none|none|
|» Value|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 36cc64832752718fc9e32742644d7106

<a id="opId36cc64832752718fc9e32742644d7106"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/stockTakes/{stockTakeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}`

*Retrieve details for a specific stock take.*

<h3 id="36cc64832752718fc9e32742644d7106-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|stockTakeID|path|integer|true|A valid stock take id|
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
  "StorageDevice": {
    "ID": 0,
    "Name": "string"
  },
  "stockTakeReasonID": 0,
  "StockTakeDate": "2018-05-21T19:53:39+10:00",
  "CreatedBy": {
    "ID": 0,
    "Name": "string"
  },
  "Approved": true,
  "ApprovedDate": "2018-05-21T19:53:39+10:00",
  "ApprovedBy": [
    {
      "ID": 0,
      "Name": "string"
    }
  ],
  "Items": [
    {
      "ID": 0,
      "PartNo": "string",
      "Name": "string",
      "CountedStock": 0,
      "Variation": 0,
      "Value": 0
    }
  ],
  "StockValue": {
    "Before": 0,
    "AdjustmentAmount": "string",
    "After": 0
  },
  "Value": "string"
}
```

<h3 id="36cc64832752718fc9e32742644d7106-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Stock take details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Stock take not found.|None|

<h3 id="36cc64832752718fc9e32742644d7106-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» stockTakeReasonID|integer|true|none|none|
|» StockTakeDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|» Approved|boolean|true|none|none|
|» ApprovedDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» ApprovedBy|[object]|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|» Items|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|none|
|»» Name|string|true|none|none|
|»» CountedStock|integer|true|none|none|
|»» Variation|integer|true|none|none|
|»» Value|integer|true|none|none|
|» StockValue|object|true|none|none|
|»» Before|integer|true|none|none|
|»» AdjustmentAmount|string|true|none|none|
|»» After|integer|true|none|none|
|» Value|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 22ad4a9f622be13ba8c80afd6a6c7851

<a id="opId22ad4a9f622be13ba8c80afd6a6c7851"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/stockTakes/{stockTakeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Approved": true,
  "Items": [
    {
      "ID": 0,
      "CountedStock": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}`

*Update a stock take.*

> Body parameter

```json
{
  "Approved": true,
  "Items": [
    {
      "ID": 0,
      "CountedStock": 0
    }
  ]
}
```

<h3 id="22ad4a9f622be13ba8c80afd6a6c7851-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|stockTakeID|path|integer|true|A valid stock take id|
|body|body|object|true|Stock take object|
|» Approved|body|boolean|false|none|
|» Items|body|[object]|false|none|
|»» ID|body|integer|false|none|
|»» CountedStock|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="22ad4a9f622be13ba8c80afd6a6c7851-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Stock take updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## d9f038fb2223664fc0872f7642d01699

<a id="opIdd9f038fb2223664fc0872f7642d01699"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/stockTakes/{stockTakeID}`

*Delete a stock take.*

<h3 id="d9f038fb2223664fc0872f7642d01699-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|stockTakeID|path|integer|true|A valid stock take id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="d9f038fb2223664fc0872f7642d01699-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Stock take deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Stock take does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>