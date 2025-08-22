# Employee Licences

## b7176c139f4e41d519d2ee56aacc3e9b

<a id="opIdb7176c139f4e41d519d2ee56aacc3e9b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/`

*List all employee licences.*

<h3 id="b7176c139f4e41d519d2ee56aacc3e9b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
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
    "Name": "string",
    "Ref": "string",
    "ExpiryDate": "2021-04-22"
  }
]
```

<h3 id="b7176c139f4e41d519d2ee56aacc3e9b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all employee licences.|Inline|

<h3 id="b7176c139f4e41d519d2ee56aacc3e9b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Ref|string|true|none|none|
|» ExpiryDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## d96b88d79e11ed9ca3f54028c7c8a831

<a id="opIdd96b88d79e11ed9ca3f54028c7c8a831"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Ref": "string",
  "ExpiryDate": "2021-04-22",
  "ExpiryAlert": {
    "Quantity": 0,
    "Frequency": "string"
  },
  "Critical": true,
  "Description": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/',
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

r = requests.post('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/`

*Create a new employee licence.*

> Body parameter

```json
{
  "Name": "string",
  "Ref": "string",
  "ExpiryDate": "2021-04-22",
  "ExpiryAlert": {
    "Quantity": 0,
    "Frequency": "string"
  },
  "Critical": true,
  "Description": "string"
}
```

<h3 id="d96b88d79e11ed9ca3f54028c7c8a831-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|body|body|object|true|Employee licence object|
|» Name|body|string|true|none|
|» Ref|body|string|true|none|
|» ExpiryDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ExpiryAlert|body|object¦null|false|none|
|»» Quantity|body|integer|false|none|
|»» Frequency|body|string|false|Frequency must be one of day, week, month, year.|
|» Critical|body|boolean|false|Marking a licence as Critical prevents the employee or contractor from being scheduled when the licence has expired.|
|» Description|body|string¦null|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "EmployeeID": 0,
  "Name": "string",
  "Ref": "string",
  "ExpiryDate": "2021-04-22",
  "ExpiryAlert": {
    "Quantity": 0,
    "Frequency": "string"
  },
  "Critical": true,
  "Description": "string"
}
```

<h3 id="d96b88d79e11ed9ca3f54028c7c8a831-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Employee licence created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="d96b88d79e11ed9ca3f54028c7c8a831-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» EmployeeID|integer|true|none|none|
|» Name|string|true|none|none|
|» Ref|string|true|none|none|
|» ExpiryDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ExpiryAlert|object¦null|false|none|none|
|»» Quantity|integer|false|none|none|
|»» Frequency|string|false|none|Frequency must be one of day, week, month, year.|
|» Critical|boolean|true|none|Marking a licence as Critical prevents the employee or contractor from being scheduled when the licence has expired.|
|» Description|string¦null|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## c107afd97bcd11e8442e06118a42be1d

<a id="opIdc107afd97bcd11e8442e06118a42be1d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}`

*Retrieve details for a specific employee licence.*

<h3 id="c107afd97bcd11e8442e06118a42be1d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
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
  "EmployeeID": 0,
  "Name": "string",
  "Ref": "string",
  "ExpiryDate": "2021-04-22",
  "ExpiryAlert": {
    "Quantity": 0,
    "Frequency": "string"
  },
  "Critical": true,
  "Description": "string"
}
```

<h3 id="c107afd97bcd11e8442e06118a42be1d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Employee licence details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Employee licence not found.|None|

<h3 id="c107afd97bcd11e8442e06118a42be1d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» EmployeeID|integer|true|none|none|
|» Name|string|true|none|none|
|» Ref|string|true|none|none|
|» ExpiryDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ExpiryAlert|object¦null|false|none|none|
|»» Quantity|integer|false|none|none|
|»» Frequency|string|false|none|Frequency must be one of day, week, month, year.|
|» Critical|boolean|true|none|Marking a licence as Critical prevents the employee or contractor from being scheduled when the licence has expired.|
|» Description|string¦null|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 4db52b1d69bd714dd681ee3a626b83c0

<a id="opId4db52b1d69bd714dd681ee3a626b83c0"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Ref": "string",
  "ExpiryDate": "2021-04-22",
  "ExpiryAlert": {
    "Quantity": 0,
    "Frequency": "string"
  },
  "Critical": true,
  "Description": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}`

*Update a employee licence.*

> Body parameter

```json
{
  "Name": "string",
  "Ref": "string",
  "ExpiryDate": "2021-04-22",
  "ExpiryAlert": {
    "Quantity": 0,
    "Frequency": "string"
  },
  "Critical": true,
  "Description": "string"
}
```

<h3 id="4db52b1d69bd714dd681ee3a626b83c0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|
|body|body|object|true|Employee licence object|
|» Name|body|string|false|none|
|» Ref|body|string|false|none|
|» ExpiryDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ExpiryAlert|body|object¦null|false|none|
|»» Quantity|body|integer|false|none|
|»» Frequency|body|string|false|Frequency must be one of day, week, month, year.|
|» Critical|body|boolean|false|Marking a licence as Critical prevents the employee or contractor from being scheduled when the licence has expired.|
|» Description|body|string¦null|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="4db52b1d69bd714dd681ee3a626b83c0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Employee licence updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 454b18e62c13dbcc4f0bc3dd4cafa1fe

<a id="opId454b18e62c13dbcc4f0bc3dd4cafa1fe"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/employees/{employeeID}/licences/{licenceID}`

*Delete a employee licence.*

<h3 id="454b18e62c13dbcc4f0bc3dd4cafa1fe-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|licenceID|path|integer|true|A valid licence id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="454b18e62c13dbcc4f0bc3dd4cafa1fe-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Employee licence deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Employee licence does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>