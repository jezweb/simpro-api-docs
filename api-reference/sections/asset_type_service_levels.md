# Asset Type Service Levels

**This feature is only available with Maintenance Planner purchased and enabled**

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## eba7b372f1e5d8d62bfd5346cf024c04

<a id="opIdeba7b372f1e5d8d62bfd5346cf024c04"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/`

*List all asset type service levels.*

<h3 id="eba7b372f1e5d8d62bfd5346cf024c04-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
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
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    },
    "DisplayOrder": 0,
    "IsDefault": true
  }
]
```

<h3 id="eba7b372f1e5d8d62bfd5346cf024c04-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all asset type service levels.|Inline|

<h3 id="eba7b372f1e5d8d62bfd5346cf024c04-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» IsDefault|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 25e1a31ea60ae3f54c8676bb145033c5

<a id="opId25e1a31ea60ae3f54c8676bb145033c5"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ServiceLevel": 0,
  "Prebuild": 0,
  "DisplayOrder": 0,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/`

*Create a new asset type service level.*

> Body parameter

```json
{
  "ServiceLevel": 0,
  "Prebuild": 0,
  "DisplayOrder": 0,
  "IsDefault": true
}
```

<h3 id="25e1a31ea60ae3f54c8676bb145033c5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|body|body|object|true|Asset type service level object|
|» ServiceLevel|body|integer|true|ID of a service level|
|» Prebuild|body|integer|false|ID of a prebuild|
|» DisplayOrder|body|integer|false|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  },
  "DisplayOrder": 0,
  "IsDefault": true
}
```

<h3 id="25e1a31ea60ae3f54c8676bb145033c5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Asset type service level created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="25e1a31ea60ae3f54c8676bb145033c5-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Prebuild|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» PartNo|string|false|none|none|
|»» Name|string|false|none|none|
|»» AddOnPrice|object|false|none|Add-on prices will only be available when the add-ons are enabled.|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» DisplayOrder|integer|false|none|none|
|»» Archived|boolean|false|none|none|
|» DisplayOrder|integer|true|none|none|
|» IsDefault|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## b08178c304419d34b510f27c3aae858b

<a id="opIdb08178c304419d34b510f27c3aae858b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}`

*Retrieve details for a specific asset type service level.*

<h3 id="b08178c304419d34b510f27c3aae858b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ServiceLevel": {
    "ID": 12345,
    "Name": "Annually Service"
  },
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  },
  "DisplayOrder": 0,
  "IsDefault": true
}
```

<h3 id="b08178c304419d34b510f27c3aae858b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Asset type service level details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset type service level not found.|None|

<h3 id="b08178c304419d34b510f27c3aae858b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Prebuild|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» PartNo|string|false|none|none|
|»» Name|string|false|none|none|
|»» AddOnPrice|object|false|none|Add-on prices will only be available when the add-ons are enabled.|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» DisplayOrder|integer|false|none|none|
|»» Archived|boolean|false|none|none|
|» DisplayOrder|integer|true|none|none|
|» IsDefault|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0f530b055bb0e27f48d68fc7ee70b77a

<a id="opId0f530b055bb0e27f48d68fc7ee70b77a"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Prebuild": 0,
  "DisplayOrder": 0,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}`

*Update a asset type service level.*

> Body parameter

```json
{
  "Prebuild": 0,
  "DisplayOrder": 0,
  "IsDefault": true
}
```

<h3 id="0f530b055bb0e27f48d68fc7ee70b77a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|
|body|body|object|true|Asset type service level object|
|» Prebuild|body|integer|false|ID of a prebuild|
|» DisplayOrder|body|integer|false|none|
|» IsDefault|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0f530b055bb0e27f48d68fc7ee70b77a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset type service level updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 66fa12a4959f0b84393abd5d349fde29

<a id="opId66fa12a4959f0b84393abd5d349fde29"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/serviceLevels/{assetTypeServiceLevelID}`

*Delete a asset type service level.*

<h3 id="66fa12a4959f0b84393abd5d349fde29-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeServiceLevelID|path|integer|true|A valid asset type service level id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="66fa12a4959f0b84393abd5d349fde29-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset type service level deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset type service level does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>