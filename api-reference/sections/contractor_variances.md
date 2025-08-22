# Contractor Variances

## cd3d9a5adb7be91f830cf0cbf0284fb5

<a id="opIdcd3d9a5adb7be91f830cf0cbf0284fb5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorVariances/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorVariances/',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorVariances/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorVariances/`

*List all contractor variances.*

<h3 id="cd3d9a5adb7be91f830cf0cbf0284fb5-parameters">Parameters</h3>

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
    "Contractor": {
      "ID": 0,
      "Name": "string",
      "ContactName": "string"
    },
    "DateIssued": "2021-04-22",
    "ApprovedBy": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "LineTotal": {
      "ExTax": 9,
      "IncTax": 10
    }
  }
]
```

<h3 id="cd3d9a5adb7be91f830cf0cbf0284fb5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all contractor variances.|Inline|

<h3 id="cd3d9a5adb7be91f830cf0cbf0284fb5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ApprovedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» LineTotal|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 4e220f1aa98f28e2094378926e09ad0d

<a id="opId4e220f1aa98f28e2094378926e09ad0d"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/contractorVariances/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Contractor": 0,
  "CostCenter": 0,
  "DateIssued": "2021-04-22",
  "ApprovedBy": 0,
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorVariances/',
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

r = requests.post('/api/v1.0/companies/{companyID}/contractorVariances/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/contractorVariances/`

*Create a new contractor variance.*

> Body parameter

```json
{
  "Contractor": 0,
  "CostCenter": 0,
  "DateIssued": "2021-04-22",
  "ApprovedBy": 0,
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  }
}
```

<h3 id="4e220f1aa98f28e2094378926e09ad0d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Contractor Variance object|
|» Contractor|body|integer|true|ID of a contractor|
|» CostCenter|body|integer|true|ID of a cost center|
|» DateIssued|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ApprovedBy|body|integer|true|ID of a staff|
|» Description|body|string|false|none|
|» LineTotal|body|object|true|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "ContactName": "string"
  },
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "DateIssued": "2021-04-22",
  "ApprovedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  },
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Rate": 10
  },
  "BusinessGroup": {
    "ID": 12345,
    "Name": "string"
  }
}
```

<h3 id="4e220f1aa98f28e2094378926e09ad0d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contractor Variance created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="4e220f1aa98f28e2094378926e09ad0d-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ApprovedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Description|string|true|none|none|
|» LineTotal|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Rate|number|true|none|Tax rate|
|» BusinessGroup|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 6127455db60bf91f7ebde65637c71366

<a id="opId6127455db60bf91f7ebde65637c71366"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}`

*Retrieve details for a specific contractor variance.*

<h3 id="6127455db60bf91f7ebde65637c71366-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorVarianceID|path|integer|true|A valid contractor variance id|
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
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "ContactName": "string"
  },
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "DateIssued": "2021-04-22",
  "ApprovedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  },
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Rate": 10
  },
  "BusinessGroup": {
    "ID": 12345,
    "Name": "string"
  }
}
```

<h3 id="6127455db60bf91f7ebde65637c71366-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contractor Variance details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor Variance not found.|None|

<h3 id="6127455db60bf91f7ebde65637c71366-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CostCenter|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ApprovedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Description|string|true|none|none|
|» LineTotal|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Rate|number|true|none|Tax rate|
|» BusinessGroup|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 09036194451358c340f90c9a15700fd7

<a id="opId09036194451358c340f90c9a15700fd7"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Contractor": 0,
  "CostCenter": 0,
  "DateIssued": "2021-04-22",
  "ApprovedBy": 0,
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}`

*Update a contractor variance.*

> Body parameter

```json
{
  "Contractor": 0,
  "CostCenter": 0,
  "DateIssued": "2021-04-22",
  "ApprovedBy": 0,
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  }
}
```

<h3 id="09036194451358c340f90c9a15700fd7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorVarianceID|path|integer|true|A valid contractor variance id|
|body|body|object|true|Contractor Variance object|
|» Contractor|body|integer|false|ID of a contractor|
|» CostCenter|body|integer|false|ID of a cost center|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ApprovedBy|body|integer|false|ID of a staff|
|» Description|body|string|false|none|
|» LineTotal|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="09036194451358c340f90c9a15700fd7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor Variance updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 3d769c3a5db85b6cea38eec933ef3e62

<a id="opId3d769c3a5db85b6cea38eec933ef3e62"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/contractorVariances/{contractorVarianceID}`

*Delete a contractor variance.*

<h3 id="3d769c3a5db85b6cea38eec933ef3e62-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorVarianceID|path|integer|true|A valid contractor variance id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3d769c3a5db85b6cea38eec933ef3e62-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor Variance deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor Variance does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>