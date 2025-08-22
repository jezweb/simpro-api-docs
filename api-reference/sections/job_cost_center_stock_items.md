# Job Cost Center Stock Items

## b14ed922edaeaad3946e795348de4a0d

<a id="opIdb14ed922edaeaad3946e795348de4a0d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/`

*List all job cost center stock items.*

<h3 id="b14ed922edaeaad3946e795348de4a0d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
[
  {
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string",
      "Markup": 1.57,
      "BasePrice": 1.57,
      "SellPrice": 1.57
    },
    "Quantity": {
      "Required": 1.57,
      "Assigned": 1.57
    },
    "AssignedBreakdown": [
      {
        "Storage": {
          "ID": 0,
          "Name": "string"
        },
        "Quantity": 0,
        "InStock": 0,
        "Value": 0,
        "TotalValue": 0
      }
    ]
  }
]
```

<h3 id="b14ed922edaeaad3946e795348de4a0d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center stock items.|Inline|

<h3 id="b14ed922edaeaad3946e795348de4a0d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Markup|number|true|none|The markup of this item.|
|»» BasePrice|number|true|none|none|
|»» SellPrice|number|true|none|none|
|» Quantity|object|true|none|none|
|»» Required|number|true|none|none|
|»» Assigned|number|true|none|none|
|» AssignedBreakdown|[object]|true|none|none|
|»» Storage|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Quantity|number|true|none|none|
|»» InStock|number|true|none|none|
|»» Value|number|true|none|none|
|»» TotalValue|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## d8fdb1961acb25bcb07602db66f939ea

<a id="opIdd8fdb1961acb25bcb07602db66f939ea"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Catalog": 0,
  "AssignedBreakdown": [
    {
      "Storage": 0,
      "Quantity": 0,
      "Value": 0,
      "TotalValue": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/`

*Create a new job cost center stock item.*

> Body parameter

```json
{
  "Catalog": 0,
  "AssignedBreakdown": [
    {
      "Storage": 0,
      "Quantity": 0,
      "Value": 0,
      "TotalValue": 0
    }
  ]
}
```

<h3 id="d8fdb1961acb25bcb07602db66f939ea-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job cost center stock item object|
|» Catalog|body|integer|false|ID of a catalog item|
|» AssignedBreakdown|body|[object]|true|none|
|»» Storage|body|integer|false|ID of a storage device|
|»» Quantity|body|number|false|none|
|»» Value|body|number|false|none|
|»» TotalValue|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "Markup": 1.57,
    "BasePrice": 1.57,
    "SellPrice": 1.57
  },
  "Quantity": {
    "Required": 1.57,
    "Assigned": 1.57
  },
  "AssignedBreakdown": [
    {
      "Storage": {
        "ID": 0,
        "Name": "string"
      },
      "Quantity": 0,
      "InStock": 0,
      "Value": 0,
      "TotalValue": 0
    }
  ]
}
```

<h3 id="d8fdb1961acb25bcb07602db66f939ea-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job cost center stock item created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="d8fdb1961acb25bcb07602db66f939ea-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Markup|number|true|none|The markup of this item.|
|»» BasePrice|number|true|none|none|
|»» SellPrice|number|true|none|none|
|» Quantity|object|true|none|none|
|»» Required|number|true|none|none|
|»» Assigned|number|true|none|none|
|» AssignedBreakdown|[object]|true|none|none|
|»» Storage|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Quantity|number|true|none|none|
|»» InStock|number|true|none|none|
|»» Value|number|true|none|none|
|»» TotalValue|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 6fdd74e7f529bd2085261807390c5d6e

<a id="opId6fdd74e7f529bd2085261807390c5d6e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID}`

*Retrieve details for a specific job cost center stock item.*

<h3 id="6fdd74e7f529bd2085261807390c5d6e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|stockID|path|integer|true|A valid stock id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "Markup": 1.57,
    "BasePrice": 1.57,
    "SellPrice": 1.57
  },
  "Quantity": {
    "Required": 1.57,
    "Assigned": 1.57
  },
  "AssignedBreakdown": [
    {
      "Storage": {
        "ID": 0,
        "Name": "string"
      },
      "Quantity": 0,
      "InStock": 0,
      "Value": 0,
      "TotalValue": 0
    }
  ]
}
```

<h3 id="6fdd74e7f529bd2085261807390c5d6e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job cost center stock item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job cost center stock item not found.|None|

<h3 id="6fdd74e7f529bd2085261807390c5d6e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Markup|number|true|none|The markup of this item.|
|»» BasePrice|number|true|none|none|
|»» SellPrice|number|true|none|none|
|» Quantity|object|true|none|none|
|»» Required|number|true|none|none|
|»» Assigned|number|true|none|none|
|» AssignedBreakdown|[object]|true|none|none|
|»» Storage|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Quantity|number|true|none|none|
|»» InStock|number|true|none|none|
|»» Value|number|true|none|none|
|»» TotalValue|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 5cfae7a8ed46430bb4b82bc9466d6c23

<a id="opId5cfae7a8ed46430bb4b82bc9466d6c23"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "AssignedBreakdown": [
    {
      "Storage": 0,
      "Quantity": 0,
      "Value": 0,
      "TotalValue": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/stock/{stockID}`

*Update a job cost center stock item.*

> Body parameter

```json
{
  "AssignedBreakdown": [
    {
      "Storage": 0,
      "Quantity": 0,
      "Value": 0,
      "TotalValue": 0
    }
  ]
}
```

<h3 id="5cfae7a8ed46430bb4b82bc9466d6c23-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|stockID|path|integer|true|A valid stock id|
|body|body|object|true|Job cost center stock item object|
|» AssignedBreakdown|body|[object]|false|none|
|»» Storage|body|integer|false|ID of a storage device|
|»» Quantity|body|number|false|none|
|»» Value|body|number|false|none|
|»» TotalValue|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5cfae7a8ed46430bb4b82bc9466d6c23-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job cost center stock item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>