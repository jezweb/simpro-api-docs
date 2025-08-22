# Site Preferred Technicians

You can nominate specific employees or contractors as the preferred technician to work with a particular customer, site, asset type or service level.<br />
The preferred technician is then automatically assigned to relevant quotes and jobs.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Preferred-Technicians.htm">External documentation</a>

## 35fc457030cb7a3474a95bd41c7c6769

<a id="opId35fc457030cb7a3474a95bd41c7c6769"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/`

*List all site preferred technicians.*

<h3 id="35fc457030cb7a3474a95bd41c7c6769-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
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
    "Staff": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Preference": 0
  }
]
```

<h3 id="35fc457030cb7a3474a95bd41c7c6769-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all site preferred technicians.|Inline|

<h3 id="35fc457030cb7a3474a95bd41c7c6769-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Preference|integer¦null|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 595435c073bafd57dad7c76a050ddec9

<a id="opId595435c073bafd57dad7c76a050ddec9"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Staff": 0,
  "AssetType": 0,
  "ServiceLevel": 0,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/',
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

r = requests.post('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/`

*Create a new site preferred technician.*

> Body parameter

```json
{
  "Staff": 0,
  "AssetType": 0,
  "ServiceLevel": 0,
  "DisplayOrder": 0
}
```

<h3 id="595435c073bafd57dad7c76a050ddec9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|body|body|object|true|Site Preferred Technician object|
|» Staff|body|integer|true|ID of a staff|
|» AssetType|body|integer|false|ID of a asset type|
|» ServiceLevel|body|integer|false|ID of a service level|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "Staff": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Preference": 0,
  "AssetType": {
    "ID": 12345,
    "Name": "Fire Extinguisher"
  },
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "DisplayOrder": 0
}
```

<h3 id="595435c073bafd57dad7c76a050ddec9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Site Preferred Technician created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="595435c073bafd57dad7c76a050ddec9-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Preference|integer¦null|false|none|none|
|» AssetType|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» ServiceLevel|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» DisplayOrder|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 3d9f4042c92b7bf3efe0e8eaff0f2bbf

<a id="opId3d9f4042c92b7bf3efe0e8eaff0f2bbf"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}`

*Retrieve details for a specific site preferred technician.*

<h3 id="3d9f4042c92b7bf3efe0e8eaff0f2bbf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|preferredTechnicianID|path|integer|true|A valid preferred technician id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Staff": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Preference": 0,
  "AssetType": {
    "ID": 12345,
    "Name": "Fire Extinguisher"
  },
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "DisplayOrder": 0
}
```

<h3 id="3d9f4042c92b7bf3efe0e8eaff0f2bbf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Site Preferred Technician details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site Preferred Technician not found.|None|

<h3 id="3d9f4042c92b7bf3efe0e8eaff0f2bbf-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Preference|integer¦null|false|none|none|
|» AssetType|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» ServiceLevel|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» DisplayOrder|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## e754d60c9eee5b2cef45105de9acdfb1

<a id="opIde754d60c9eee5b2cef45105de9acdfb1"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "AssetType": 0,
  "ServiceLevel": 0,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}`

*Update a site preferred technician.*

> Body parameter

```json
{
  "AssetType": 0,
  "ServiceLevel": 0,
  "DisplayOrder": 0
}
```

<h3 id="e754d60c9eee5b2cef45105de9acdfb1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|preferredTechnicianID|path|integer|true|A valid preferred technician id|
|body|body|object|true|Site Preferred Technician object|
|» AssetType|body|integer|false|ID of a asset type|
|» ServiceLevel|body|integer|false|ID of a service level|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e754d60c9eee5b2cef45105de9acdfb1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site Preferred Technician updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 798eddca0666eed40ce3edcd405f626e

<a id="opId798eddca0666eed40ce3edcd405f626e"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/preferredTechnicians/{preferredTechnicianID}`

*Delete a site preferred technician.*

<h3 id="798eddca0666eed40ce3edcd405f626e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|preferredTechnicianID|path|integer|true|A valid preferred technician id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="798eddca0666eed40ce3edcd405f626e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site Preferred Technician deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site Preferred Technician does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>