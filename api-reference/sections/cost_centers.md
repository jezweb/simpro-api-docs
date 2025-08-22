# Cost Centers

## 45f7d7f4767de4368c59a1873bf67360

<a id="opId45f7d7f4767de4368c59a1873bf67360"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/costCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/costCenters/`

*List all cost centers.*

<h3 id="45f7d7f4767de4368c59a1873bf67360-parameters">Parameters</h3>

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
    "Name": "string"
  }
]
```

<h3 id="45f7d7f4767de4368c59a1873bf67360-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all cost centers.|Inline|

<h3 id="45f7d7f4767de4368c59a1873bf67360-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0b3a6e8196fceb9beefa4223db093c3a

<a id="opId0b3a6e8196fceb9beefa4223db093c3a"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/accounts/costCenters/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "IncomeAccountNo": "string",
  "ExpenseAccountNo": "string",
  "AccrualRevAccountNo": "string",
  "DeferralRevAccountNo": "string",
  "MonthlySalesBudget": 0,
  "MonthlyExpenditureBudget": 0,
  "Archived": true,
  "Rates": {
    "ServiceFee": 0,
    "LaborRate": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/accounts/costCenters/`

*Create a new cost center.*

> Body parameter

```json
{
  "Name": "string",
  "IncomeAccountNo": "string",
  "ExpenseAccountNo": "string",
  "AccrualRevAccountNo": "string",
  "DeferralRevAccountNo": "string",
  "MonthlySalesBudget": 0,
  "MonthlyExpenditureBudget": 0,
  "Archived": true,
  "Rates": {
    "ServiceFee": 0,
    "LaborRate": 0
  }
}
```

<h3 id="0b3a6e8196fceb9beefa4223db093c3a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Cost center object|
|» Name|body|string|true|none|
|» IncomeAccountNo|body|string|false|none|
|» ExpenseAccountNo|body|string|false|none|
|» AccrualRevAccountNo|body|string|false|none|
|» DeferralRevAccountNo|body|string|false|none|
|» MonthlySalesBudget|body|number|false|none|
|» MonthlyExpenditureBudget|body|number|false|none|
|» Archived|body|boolean|false|none|
|» Rates|body|object|false|none|
|»» ServiceFee|body|integer|false|ID of a service fee|
|»» LaborRate|body|integer|false|ID of a labor rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "IncomeAccountNo": "string",
  "ExpenseAccountNo": "string",
  "AccrualRevAccountNo": "string",
  "DeferralRevAccountNo": "string",
  "MonthlySalesBudget": 0,
  "MonthlyExpenditureBudget": 0,
  "Archived": true,
  "IsMembershipCostCenter": true,
  "Rates": {
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
    "LaborRate": {
      "ID": 12345,
      "Name": "string"
    }
  }
}
```

<h3 id="0b3a6e8196fceb9beefa4223db093c3a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Cost center created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="0b3a6e8196fceb9beefa4223db093c3a-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» IncomeAccountNo|string|true|none|none|
|» ExpenseAccountNo|string|true|none|none|
|» AccrualRevAccountNo|string|true|none|none|
|» DeferralRevAccountNo|string|true|none|none|
|» MonthlySalesBudget|number|true|none|none|
|» MonthlyExpenditureBudget|number|true|none|none|
|» Archived|boolean|true|none|none|
|» IsMembershipCostCenter|boolean|true|none|none|
|» Rates|object|true|none|none|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» LaborRate|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## c1552bb2222fe8a191a63cb293e02f1a

<a id="opIdc1552bb2222fe8a191a63cb293e02f1a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}`

*Retrieve details for a specific cost center.*

<h3 id="c1552bb2222fe8a191a63cb293e02f1a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|costCenterID|path|integer|true|A valid cost center id|
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
  "IncomeAccountNo": "string",
  "ExpenseAccountNo": "string",
  "AccrualRevAccountNo": "string",
  "DeferralRevAccountNo": "string",
  "MonthlySalesBudget": 0,
  "MonthlyExpenditureBudget": 0,
  "Archived": true,
  "IsMembershipCostCenter": true,
  "Rates": {
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
    "LaborRate": {
      "ID": 12345,
      "Name": "string"
    }
  }
}
```

<h3 id="c1552bb2222fe8a191a63cb293e02f1a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Cost center details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Cost center not found.|None|

<h3 id="c1552bb2222fe8a191a63cb293e02f1a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» IncomeAccountNo|string|true|none|none|
|» ExpenseAccountNo|string|true|none|none|
|» AccrualRevAccountNo|string|true|none|none|
|» DeferralRevAccountNo|string|true|none|none|
|» MonthlySalesBudget|number|true|none|none|
|» MonthlyExpenditureBudget|number|true|none|none|
|» Archived|boolean|true|none|none|
|» IsMembershipCostCenter|boolean|true|none|none|
|» Rates|object|true|none|none|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» LaborRate|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 1005449422bdbbfa8b7f7983bc8b99bc

<a id="opId1005449422bdbbfa8b7f7983bc8b99bc"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "IncomeAccountNo": "string",
  "ExpenseAccountNo": "string",
  "AccrualRevAccountNo": "string",
  "DeferralRevAccountNo": "string",
  "MonthlySalesBudget": 0,
  "MonthlyExpenditureBudget": 0,
  "Archived": true,
  "Rates": {
    "ServiceFee": 0,
    "LaborRate": 0
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}`

*Update a cost center.*

> Body parameter

```json
{
  "Name": "string",
  "IncomeAccountNo": "string",
  "ExpenseAccountNo": "string",
  "AccrualRevAccountNo": "string",
  "DeferralRevAccountNo": "string",
  "MonthlySalesBudget": 0,
  "MonthlyExpenditureBudget": 0,
  "Archived": true,
  "Rates": {
    "ServiceFee": 0,
    "LaborRate": 0
  }
}
```

<h3 id="1005449422bdbbfa8b7f7983bc8b99bc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Cost center object|
|» Name|body|string|false|none|
|» IncomeAccountNo|body|string|false|none|
|» ExpenseAccountNo|body|string|false|none|
|» AccrualRevAccountNo|body|string|false|none|
|» DeferralRevAccountNo|body|string|false|none|
|» MonthlySalesBudget|body|number|false|none|
|» MonthlyExpenditureBudget|body|number|false|none|
|» Archived|body|boolean|false|none|
|» Rates|body|object|false|none|
|»» ServiceFee|body|integer|false|ID of a service fee|
|»» LaborRate|body|integer|false|ID of a labor rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="1005449422bdbbfa8b7f7983bc8b99bc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Cost center updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 013963b636f39136853ec19cbf229134

<a id="opId013963b636f39136853ec19cbf229134"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/accounts/costCenters/{costCenterID}`

*Delete a cost center.*

<h3 id="013963b636f39136853ec19cbf229134-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|costCenterID|path|integer|true|A valid cost center id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="013963b636f39136853ec19cbf229134-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Cost center deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Cost center does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>