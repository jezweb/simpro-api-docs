# Asset Types

Customer assets are equipment installed at customer sites that your business services regularly. Use customer assets to store information such as make, model and serial numbers. You can also keep track of your installation and maintenance history including test readings.
Asset types are useful for understanding what qualifies as an asset for your business. For example, a single asset may be an entire security system, or one individual component in the system such as a camera.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Asset-Types-Maintenance-Planner.htm#Create-an-asset-type">External documentation</a>

## 0a1392b00a5332eb029a0c842cbb29fc

<a id="opId0a1392b00a5332eb029a0c842cbb29fc"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/`

*List all asset types.*

<h3 id="0a1392b00a5332eb029a0c842cbb29fc-parameters">Parameters</h3>

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
    "ID": 12345,
    "Name": "Fire Extinguisher"
  }
]
```

<h3 id="0a1392b00a5332eb029a0c842cbb29fc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all asset types.|Inline|

<h3 id="0a1392b00a5332eb029a0c842cbb29fc-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 35b84c2c05287f287e0c4ca9ec476911

<a id="opId35b84c2c05287f287e0c4ca9ec476911"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assetTypes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Fire Extinguisher",
  "Reference": {
    "Section": "11",
    "Standard": "AS1851.2012"
  },
  "RegType": 0,
  "JobCostCenter": 0,
  "QuoteCostCenter": 0,
  "DefaultTechnician": 0,
  "Description": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assetTypes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assetTypes/`

*Create a new asset type.*

> Body parameter

```json
{
  "Name": "Fire Extinguisher",
  "Reference": {
    "Section": "11",
    "Standard": "AS1851.2012"
  },
  "RegType": 0,
  "JobCostCenter": 0,
  "QuoteCostCenter": 0,
  "DefaultTechnician": 0,
  "Description": "string"
}
```

<h3 id="35b84c2c05287f287e0c4ca9ec476911-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Asset type object|
|» Name|body|string|true|none|
|» Reference|body|object|false|none|
|»» Section|body|string|false|none|
|»» Standard|body|string|false|none|
|» RegType|body|integer|false|none|
|» JobCostCenter|body|integer|false|ID of a cost center|
|» QuoteCostCenter|body|integer|false|ID of a cost center|
|» DefaultTechnician|body|integer|false|ID of a staff|
|» Description|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Fire Extinguisher",
  "Reference": {
    "Section": "11",
    "Standard": "AS1851.2012"
  },
  "RegType": 0,
  "JobCostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "QuoteCostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "DefaultTechnician": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Description": "string",
  "Archived": true
}
```

<h3 id="35b84c2c05287f287e0c4ca9ec476911-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Asset type created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="35b84c2c05287f287e0c4ca9ec476911-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Reference|object|true|none|none|
|»» Section|string|true|none|none|
|»» Standard|string|true|none|none|
|» RegType|integer|true|none|none|
|» JobCostCenter|object¦null|false|none|Set a Job Cost Center to be automatically selected when a preventative maintenance job is created.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» QuoteCostCenter|object¦null|false|none|Set a Quote Cost Center to be automatically selected when a rectification quote is created.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» DefaultTechnician|object¦null|false|none|Set a Default Technician to be automatically assigned to all jobs raised against an asset type. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Description|string|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## ff1d577c5ce947aaa857ca8e4694e6a7

<a id="opIdff1d577c5ce947aaa857ca8e4694e6a7"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}`

*Retrieve details for a specific asset type.*

<h3 id="ff1d577c5ce947aaa857ca8e4694e6a7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "Name": "Fire Extinguisher",
  "Reference": {
    "Section": "11",
    "Standard": "AS1851.2012"
  },
  "RegType": 0,
  "JobCostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "QuoteCostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "DefaultTechnician": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Description": "string",
  "Archived": true
}
```

<h3 id="ff1d577c5ce947aaa857ca8e4694e6a7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Asset type details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset type not found.|None|

<h3 id="ff1d577c5ce947aaa857ca8e4694e6a7-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Reference|object|true|none|none|
|»» Section|string|true|none|none|
|»» Standard|string|true|none|none|
|» RegType|integer|true|none|none|
|» JobCostCenter|object¦null|false|none|Set a Job Cost Center to be automatically selected when a preventative maintenance job is created.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» QuoteCostCenter|object¦null|false|none|Set a Quote Cost Center to be automatically selected when a rectification quote is created.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» DefaultTechnician|object¦null|false|none|Set a Default Technician to be automatically assigned to all jobs raised against an asset type. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Description|string|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 623e88ef518d47d6b5af5a5bc730d323

<a id="opId623e88ef518d47d6b5af5a5bc730d323"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Fire Extinguisher",
  "Reference": {
    "Section": "11",
    "Standard": "AS1851.2012"
  },
  "RegType": 0,
  "JobCostCenter": 0,
  "QuoteCostCenter": 0,
  "DefaultTechnician": 0,
  "Description": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}`

*Update a asset type.*

> Body parameter

```json
{
  "Name": "Fire Extinguisher",
  "Reference": {
    "Section": "11",
    "Standard": "AS1851.2012"
  },
  "RegType": 0,
  "JobCostCenter": 0,
  "QuoteCostCenter": 0,
  "DefaultTechnician": 0,
  "Description": "string"
}
```

<h3 id="623e88ef518d47d6b5af5a5bc730d323-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|body|body|object|true|Asset type object|
|» Name|body|string|false|none|
|» Reference|body|object|false|none|
|»» Section|body|string|false|none|
|»» Standard|body|string|false|none|
|» RegType|body|integer|false|none|
|» JobCostCenter|body|integer|false|ID of a cost center|
|» QuoteCostCenter|body|integer|false|ID of a cost center|
|» DefaultTechnician|body|integer|false|ID of a staff|
|» Description|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="623e88ef518d47d6b5af5a5bc730d323-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset type updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 54e420411f0b44383b15dd21b6a741cf

<a id="opId54e420411f0b44383b15dd21b6a741cf"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}`

*Delete a asset type.*

<h3 id="54e420411f0b44383b15dd21b6a741cf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="54e420411f0b44383b15dd21b6a741cf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset type deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset type does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>