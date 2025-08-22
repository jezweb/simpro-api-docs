# Customer Contract Labor Rates

## e93fff7dbf9e364332187fb7c8ec4874

<a id="opIde93fff7dbf9e364332187fb7c8ec4874"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/`

*List all customer contract labor rates.*

<h3 id="e93fff7dbf9e364332187fb7c8ec4874-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
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
    "LaborRate": {
      "ID": 12345,
      "Name": "string"
    },
    "IsDefault": true
  }
]
```

<h3 id="e93fff7dbf9e364332187fb7c8ec4874-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer contract labor rates.|Inline|

<h3 id="e93fff7dbf9e364332187fb7c8ec4874-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» LaborRate|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» IsDefault|boolean|true|none|Default labor rate.|

<aside class="success">
This operation does not require authentication
</aside>

## 0f21078ac32405f84c7772316dc203b4

<a id="opId0f21078ac32405f84c7772316dc203b4"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "LaborRate": 0,
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/`

*Create a new customer contract labor rate.*

> Body parameter

```json
{
  "LaborRate": 0,
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="0f21078ac32405f84c7772316dc203b4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|body|body|object|true|Customer Contract Labor Rate object|
|» LaborRate|body|integer|true|ID of a labor rate|
|» Cost|body|number|false|Cost Rate (ex GST)|
|» Markup|body|number|false|Markup to calculate sell rate.|
|» IsDefault|body|boolean|false|Default labor rate.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "LaborRate": {
    "ID": 12345,
    "Name": "string"
  },
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="0f21078ac32405f84c7772316dc203b4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer Contract Labor Rate created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="0f21078ac32405f84c7772316dc203b4-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» LaborRate|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Cost|number|true|none|Cost Rate (ex GST)|
|» Markup|number|true|none|Markup to calculate sell rate.|
|» IsDefault|boolean|true|none|Default labor rate.|

<aside class="success">
This operation does not require authentication
</aside>

## 6bad4eb7c34fafe4aebc4dd694ce1064

<a id="opId6bad4eb7c34fafe4aebc4dd694ce1064"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}`

*Retrieve details for a specific customer contract labor rate.*

<h3 id="6bad4eb7c34fafe4aebc4dd694ce1064-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|laborRateID|path|integer|true|A valid labor rate id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "LaborRate": {
    "ID": 12345,
    "Name": "string"
  },
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="6bad4eb7c34fafe4aebc4dd694ce1064-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer Contract Labor Rate details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer Contract Labor Rate not found.|None|

<h3 id="6bad4eb7c34fafe4aebc4dd694ce1064-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» LaborRate|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Cost|number|true|none|Cost Rate (ex GST)|
|» Markup|number|true|none|Markup to calculate sell rate.|
|» IsDefault|boolean|true|none|Default labor rate.|

<aside class="success">
This operation does not require authentication
</aside>

## 942d0a754aa74ca39108fdc541a7ee00

<a id="opId942d0a754aa74ca39108fdc541a7ee00"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}`

*Update a customer contract labor rate.*

> Body parameter

```json
{
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="942d0a754aa74ca39108fdc541a7ee00-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|laborRateID|path|integer|true|A valid labor rate id|
|body|body|object|true|Customer Contract Labor Rate object|
|» Cost|body|number|false|Cost Rate (ex GST)|
|» Markup|body|number|false|Markup to calculate sell rate.|
|» IsDefault|body|boolean|false|Default labor rate.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="942d0a754aa74ca39108fdc541a7ee00-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer Contract Labor Rate updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e8d40689db9a4ef3b49b81f932c2033a

<a id="opIde8d40689db9a4ef3b49b81f932c2033a"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/laborRates/{laborRateID}`

*Delete a customer contract labor rate.*

<h3 id="e8d40689db9a4ef3b49b81f932c2033a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|laborRateID|path|integer|true|A valid labor rate id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e8d40689db9a4ef3b49b81f932c2033a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer Contract Labor Rate deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer Contract Labor Rate does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>