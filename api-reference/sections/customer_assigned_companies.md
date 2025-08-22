# Customer Assigned Companies

## 9e1c726ca2e33b04068118e1d863fb95

<a id="opId9e1c726ca2e33b04068118e1d863fb95"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/companies/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/companies/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/companies/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/companies/`

*List all customer assigned companies.*

<h3 id="9e1c726ca2e33b04068118e1d863fb95-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

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
    "SharedToAllCompanies": true,
    "AssignedCompanies": [
      {
        "ID": 0,
        "Name": "simPRO Software Australia"
      }
    ]
  }
]
```

<h3 id="9e1c726ca2e33b04068118e1d863fb95-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer assigned companies.|Inline|

<h3 id="9e1c726ca2e33b04068118e1d863fb95-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» SharedToAllCompanies|boolean|true|none|none|
|» AssignedCompanies|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 75bf80cb10be97a11230fda8a2a5d4f3

<a id="opId75bf80cb10be97a11230fda8a2a5d4f3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/companies/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "SharedToAllCompanies": true,
  "AssignedCompanies": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/companies/',
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
  'Content-Type': 'application/json'
}

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/companies/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/companies/`

*Create a new customer assigned companies.*

> Body parameter

```json
{
  "SharedToAllCompanies": true,
  "AssignedCompanies": [
    0
  ]
}
```

<h3 id="75bf80cb10be97a11230fda8a2a5d4f3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|body|body|object|true|Customer Assigned Companies object|
|» SharedToAllCompanies|body|boolean|false|none|
|» AssignedCompanies|body|[integer]|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="75bf80cb10be97a11230fda8a2a5d4f3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer Assigned Companies created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 3d470e58f36c5d40feee3315bd8b0296

<a id="opId3d470e58f36c5d40feee3315bd8b0296"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/companies/{customerCompanyID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/companies/{customerCompanyID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/companies/{customerCompanyID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/companies/{customerCompanyID}`

*Delete a customer assigned companies.*

<h3 id="3d470e58f36c5d40feee3315bd8b0296-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|customerCompanyID|path|integer|true|A valid customer company id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3d470e58f36c5d40feee3315bd8b0296-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer Assigned Companies deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer Assigned Companies does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>