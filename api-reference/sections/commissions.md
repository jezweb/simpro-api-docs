# Commissions

## d1cdd7a02daa3ef41c193dd058126fb2

<a id="opIdd1cdd7a02daa3ef41c193dd058126fb2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/commissions/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/commissions/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/commissions/`

*List all commissions.*

<h3 id="d1cdd7a02daa3ef41c193dd058126fb2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|pageSize|query|integer|false|The maximum number of results to be returned by a request.|
|page|query|integer|false|Set the page number on paginated request|

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
    "Name": "string",
    "_href": "/api/v1.0/companies/0/commissions/{type}/123"
  }
]
```

<h3 id="d1cdd7a02daa3ef41c193dd058126fb2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all commissions.|Inline|

<h3 id="d1cdd7a02daa3ef41c193dd058126fb2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|
|» _href|string|true|none|Link to commission's details.|

<aside class="success">
This operation does not require authentication
</aside>

## 7e1741155126f40dc7c9989d945bd54d

<a id="opId7e1741155126f40dc7c9989d945bd54d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/commissions/advanced/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/advanced/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/commissions/advanced/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/commissions/advanced/`

*List all advanced commissions.*

<h3 id="7e1741155126f40dc7c9989d945bd54d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|pageSize|query|integer|false|The maximum number of results to be returned by a request.|
|page|query|integer|false|Set the page number on paginated request|

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
    "Name": "string"
  }
]
```

<h3 id="7e1741155126f40dc7c9989d945bd54d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all advanced commissions.|Inline|

<h3 id="7e1741155126f40dc7c9989d945bd54d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|

<aside class="success">
This operation does not require authentication
</aside>

## 8690d9f0e2d84ac0dc8aa8f4c2673899

<a id="opId8690d9f0e2d84ac0dc8aa8f4c2673899"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/commissions/advanced/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "DisplayOrder": 0,
  "Components": {
    "Catalog": 1.57,
    "Prebuild": 1.57,
    "OneOffs": 1.57,
    "Labor": 1.57,
    "ServiceFee": 1.57,
    "Adjustment": 1.57
  },
  "Trigger": "CostCenterLocked"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/advanced/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/commissions/advanced/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/commissions/advanced/`

*Create a new advanced commission.*

> Body parameter

```json
{
  "Name": "string",
  "DisplayOrder": 0,
  "Components": {
    "Catalog": 1.57,
    "Prebuild": 1.57,
    "OneOffs": 1.57,
    "Labor": 1.57,
    "ServiceFee": 1.57,
    "Adjustment": 1.57
  },
  "Trigger": "CostCenterLocked"
}
```

<h3 id="8690d9f0e2d84ac0dc8aa8f4c2673899-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|body|body|object|true|Advanced Commission object|
|» Name|body|string|true|Name of the commission tier.|
|» DisplayOrder|body|integer|false|Sets the position of commission tier record relative to the others tiers.|
|» Components|body|object|false|none|
|»» Catalog|body|number|false|Catalog rate of the commission tier.|
|»» Prebuild|body|number|false|Prebuild rate of the commission tier.|
|»» OneOffs|body|number|false|Oneoffs rate of the commission tier.|
|»» Labor|body|number|false|Labor rate of the commission tier.|
|»» ServiceFee|body|number|false|Service fee rate of the commission tier.|
|»» Adjustment|body|number|false|Adjustment rate of the commission tier.|
|» Trigger|body|string|true|A trigger to apply commission on appropriate event.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Trigger|CostCenterLocked|
|» Trigger|Invoice|
|» Trigger|Payment|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "Type": "Basic",
  "DisplayOrder": 0,
  "Components": {
    "Catalog": 1.57,
    "Prebuild": 1.57,
    "OneOffs": 1.57,
    "Labor": 1.57,
    "ServiceFee": 1.57,
    "Adjustment": 1.57
  },
  "Trigger": "CostCenterLocked"
}
```

<h3 id="8690d9f0e2d84ac0dc8aa8f4c2673899-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Advanced Commission created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="8690d9f0e2d84ac0dc8aa8f4c2673899-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|
|» Type|string|true|none|Commission tier type.|
|» DisplayOrder|integer|true|none|Sets the position of commission tier record relative to the others tiers.|
|» Components|object|true|none|none|
|»» Catalog|number|true|none|Catalog rate of the commission tier.|
|»» Prebuild|number|true|none|Prebuild rate of the commission tier.|
|»» OneOffs|number|true|none|Oneoffs rate of the commission tier.|
|»» Labor|number|true|none|Labor rate of the commission tier.|
|»» ServiceFee|number|true|none|Service fee rate of the commission tier.|
|»» Adjustment|number|true|none|Adjustment rate of the commission tier.|
|» Trigger|string|true|none|A trigger to apply commission on appropriate event.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Basic|
|Type|Advanced|
|Trigger|CostCenterLocked|
|Trigger|Invoice|
|Trigger|Payment|

<aside class="success">
This operation does not require authentication
</aside>

## a8e3f7d47fc0df436f2eefef08ef82cc

<a id="opIda8e3f7d47fc0df436f2eefef08ef82cc"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}`

*Retrieve details for a specific advanced commission.*

<h3 id="a8e3f7d47fc0df436f2eefef08ef82cc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|commissionID|path|integer|true|A valid commission id|
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
  "Name": "string",
  "Type": "Basic",
  "DisplayOrder": 0,
  "Components": {
    "Catalog": 1.57,
    "Prebuild": 1.57,
    "OneOffs": 1.57,
    "Labor": 1.57,
    "ServiceFee": 1.57,
    "Adjustment": 1.57
  },
  "Trigger": "CostCenterLocked"
}
```

<h3 id="a8e3f7d47fc0df436f2eefef08ef82cc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Advanced Commission details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Advanced Commission not found.|None|

<h3 id="a8e3f7d47fc0df436f2eefef08ef82cc-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|
|» Type|string|true|none|Commission tier type.|
|» DisplayOrder|integer|true|none|Sets the position of commission tier record relative to the others tiers.|
|» Components|object|true|none|none|
|»» Catalog|number|true|none|Catalog rate of the commission tier.|
|»» Prebuild|number|true|none|Prebuild rate of the commission tier.|
|»» OneOffs|number|true|none|Oneoffs rate of the commission tier.|
|»» Labor|number|true|none|Labor rate of the commission tier.|
|»» ServiceFee|number|true|none|Service fee rate of the commission tier.|
|»» Adjustment|number|true|none|Adjustment rate of the commission tier.|
|» Trigger|string|true|none|A trigger to apply commission on appropriate event.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Basic|
|Type|Advanced|
|Trigger|CostCenterLocked|
|Trigger|Invoice|
|Trigger|Payment|

<aside class="success">
This operation does not require authentication
</aside>

## f575198db3d334c4e6ef341ecb210f4f

<a id="opIdf575198db3d334c4e6ef341ecb210f4f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "DisplayOrder": 0,
  "Components": {
    "Catalog": 1.57,
    "Prebuild": 1.57,
    "OneOffs": 1.57,
    "Labor": 1.57,
    "ServiceFee": 1.57,
    "Adjustment": 1.57
  },
  "Trigger": "CostCenterLocked"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}`

*Update a advanced commission.*

> Body parameter

```json
{
  "Name": "string",
  "DisplayOrder": 0,
  "Components": {
    "Catalog": 1.57,
    "Prebuild": 1.57,
    "OneOffs": 1.57,
    "Labor": 1.57,
    "ServiceFee": 1.57,
    "Adjustment": 1.57
  },
  "Trigger": "CostCenterLocked"
}
```

<h3 id="f575198db3d334c4e6ef341ecb210f4f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|commissionID|path|integer|true|A valid commission id|
|body|body|object|true|Advanced Commission object|
|» Name|body|string|false|Name of the commission tier.|
|» DisplayOrder|body|integer|false|Sets the position of commission tier record relative to the others tiers.|
|» Components|body|object|false|none|
|»» Catalog|body|number|false|Catalog rate of the commission tier.|
|»» Prebuild|body|number|false|Prebuild rate of the commission tier.|
|»» OneOffs|body|number|false|Oneoffs rate of the commission tier.|
|»» Labor|body|number|false|Labor rate of the commission tier.|
|»» ServiceFee|body|number|false|Service fee rate of the commission tier.|
|»» Adjustment|body|number|false|Adjustment rate of the commission tier.|
|» Trigger|body|string|false|A trigger to apply commission on appropriate event.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Trigger|CostCenterLocked|
|» Trigger|Invoice|
|» Trigger|Payment|

<h3 id="f575198db3d334c4e6ef341ecb210f4f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Advanced Commission updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## d14464d4f6ed21ff95f3fdb83bfffb97

<a id="opIdd14464d4f6ed21ff95f3fdb83bfffb97"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/commissions/advanced/{commissionID}`

*Delete a advanced commission.*

<h3 id="d14464d4f6ed21ff95f3fdb83bfffb97-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|commissionID|path|integer|true|A valid commission id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="d14464d4f6ed21ff95f3fdb83bfffb97-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Advanced Commission deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Advanced Commission does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 611610ae9385e6cd37554660bdf71f40

<a id="opId611610ae9385e6cd37554660bdf71f40"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/commissions/basic/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/basic/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/commissions/basic/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/commissions/basic/`

*List all basic commissions.*

<h3 id="611610ae9385e6cd37554660bdf71f40-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|pageSize|query|integer|false|The maximum number of results to be returned by a request.|
|page|query|integer|false|Set the page number on paginated request|

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
    "Name": "string"
  }
]
```

<h3 id="611610ae9385e6cd37554660bdf71f40-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all basic commissions.|Inline|

<h3 id="611610ae9385e6cd37554660bdf71f40-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|

<aside class="success">
This operation does not require authentication
</aside>

## 9be0300d940c21cd74bc04202310ab68

<a id="opId9be0300d940c21cd74bc04202310ab68"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/commissions/basic/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "DisplayOrder": 0,
  "Rate": 0,
  "Trigger": "CostCenterLocked"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/basic/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/commissions/basic/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/commissions/basic/`

*Create a new basic commission.*

> Body parameter

```json
{
  "Name": "string",
  "DisplayOrder": 0,
  "Rate": 0,
  "Trigger": "CostCenterLocked"
}
```

<h3 id="9be0300d940c21cd74bc04202310ab68-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|body|body|object|true|Basic Commission object|
|» Name|body|string|true|Name of the commission tier.|
|» DisplayOrder|body|integer|false|Sets the position of commission tier record relative to the others tiers.|
|» Rate|body|number|true|Commission tier rate.|
|» Trigger|body|string¦null|false|A trigger to apply commission on appropriate event.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Trigger|CostCenterLocked|
|» Trigger|Invoice|
|» Trigger|Payment|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "Type": "Basic",
  "DisplayOrder": 0,
  "Rule": "Dollar",
  "Rate": 0,
  "Trigger": "CostCenterLocked"
}
```

<h3 id="9be0300d940c21cd74bc04202310ab68-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Basic Commission created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="9be0300d940c21cd74bc04202310ab68-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|
|» Type|string|true|none|Commission tier type.|
|» DisplayOrder|integer|true|none|Sets the position of commission tier record relative to the others tiers.|
|» Rule|string|true|none|Rule of commission tier rate.|
|» Rate|number|true|none|Commission tier rate.|
|» Trigger|string¦null|false|none|A trigger to apply commission on appropriate event.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Basic|
|Type|Advanced|
|Rule|Dollar|
|Rule|Percentage|
|Trigger|CostCenterLocked|
|Trigger|Invoice|
|Trigger|Payment|

<aside class="success">
This operation does not require authentication
</aside>

## fa3628aed009f56e527ed2d8b5d00d0a

<a id="opIdfa3628aed009f56e527ed2d8b5d00d0a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}`

*Retrieve details for a specific basic commission.*

<h3 id="fa3628aed009f56e527ed2d8b5d00d0a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|commissionID|path|integer|true|A valid commission id|
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
  "Name": "string",
  "Type": "Basic",
  "DisplayOrder": 0,
  "Rule": "Dollar",
  "Rate": 0,
  "Trigger": "CostCenterLocked"
}
```

<h3 id="fa3628aed009f56e527ed2d8b5d00d0a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Basic Commission details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Basic Commission not found.|None|

<h3 id="fa3628aed009f56e527ed2d8b5d00d0a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of commission tier.|
|» Name|string|true|none|Name of the commission tier.|
|» Type|string|true|none|Commission tier type.|
|» DisplayOrder|integer|true|none|Sets the position of commission tier record relative to the others tiers.|
|» Rule|string|true|none|Rule of commission tier rate.|
|» Rate|number|true|none|Commission tier rate.|
|» Trigger|string¦null|false|none|A trigger to apply commission on appropriate event.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Basic|
|Type|Advanced|
|Rule|Dollar|
|Rule|Percentage|
|Trigger|CostCenterLocked|
|Trigger|Invoice|
|Trigger|Payment|

<aside class="success">
This operation does not require authentication
</aside>

## 6c75206a4041d37973ae584a0e9f2129

<a id="opId6c75206a4041d37973ae584a0e9f2129"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "DisplayOrder": 0,
  "Rate": 0,
  "Trigger": "CostCenterLocked"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}`

*Update a basic commission.*

> Body parameter

```json
{
  "Name": "string",
  "DisplayOrder": 0,
  "Rate": 0,
  "Trigger": "CostCenterLocked"
}
```

<h3 id="6c75206a4041d37973ae584a0e9f2129-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|commissionID|path|integer|true|A valid commission id|
|body|body|object|true|Basic Commission object|
|» Name|body|string|false|Name of the commission tier.|
|» DisplayOrder|body|integer|false|Sets the position of commission tier record relative to the others tiers.|
|» Rate|body|number|false|Commission tier rate.|
|» Trigger|body|string¦null|false|A trigger to apply commission on appropriate event.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Trigger|CostCenterLocked|
|» Trigger|Invoice|
|» Trigger|Payment|

<h3 id="6c75206a4041d37973ae584a0e9f2129-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Basic Commission updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 41b769db7591fa91e39393dd93f2992f

<a id="opId41b769db7591fa91e39393dd93f2992f"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/commissions/basic/{commissionID}`

*Delete a basic commission.*

<h3 id="41b769db7591fa91e39393dd93f2992f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|commissionType|path|integer|true|A valid commission type|
|commissionID|path|integer|true|A valid commission id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="41b769db7591fa91e39393dd93f2992f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Basic Commission deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Basic Commission does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>