# Customer Labor Rates

Labor rates are used to estimate the charges of labour for quotes and jobs. You can create different labour rates for different levels of experience, such as senior technicians and apprentices.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Labour-Rates.htm">External documentation</a>

## 08672c65b8f29f8a0c402cba68d7ef0e

<a id="opId08672c65b8f29f8a0c402cba68d7ef0e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/`

*List all customer labor rates.*

<h3 id="08672c65b8f29f8a0c402cba68d7ef0e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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

<h3 id="08672c65b8f29f8a0c402cba68d7ef0e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer labor rates.|Inline|

<h3 id="08672c65b8f29f8a0c402cba68d7ef0e-responseschema">Response Schema</h3>

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

## 350f48f8482ba0622cd0aead5ff719a5

<a id="opId350f48f8482ba0622cd0aead5ff719a5"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/ \
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

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/`

*Create a new customer labor rate.*

> Body parameter

```json
{
  "LaborRate": 0,
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="350f48f8482ba0622cd0aead5ff719a5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|body|body|object|true|Customer labor rate object|
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

<h3 id="350f48f8482ba0622cd0aead5ff719a5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer labor rate created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="350f48f8482ba0622cd0aead5ff719a5-responseschema">Response Schema</h3>

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

## 6a258657656db97f31ab78d749527877

<a id="opId6a258657656db97f31ab78d749527877"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}`

*Retrieve details for a specific customer labor rate.*

<h3 id="6a258657656db97f31ab78d749527877-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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

<h3 id="6a258657656db97f31ab78d749527877-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer labor rate details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer labor rate not found.|None|

<h3 id="6a258657656db97f31ab78d749527877-responseschema">Response Schema</h3>

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

## fb7d72bc3c7cb74053b985da1b00b885

<a id="opIdfb7d72bc3c7cb74053b985da1b00b885"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID} \
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

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}`

*Update a customer labor rate.*

> Body parameter

```json
{
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="fb7d72bc3c7cb74053b985da1b00b885-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|laborRateID|path|integer|true|A valid labor rate id|
|body|body|object|true|Customer labor rate object|
|» Cost|body|number|false|Cost Rate (ex GST)|
|» Markup|body|number|false|Markup to calculate sell rate.|
|» IsDefault|body|boolean|false|Default labor rate.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="fb7d72bc3c7cb74053b985da1b00b885-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer labor rate updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 86bfb551658d02368724d5c6f6e0de38

<a id="opId86bfb551658d02368724d5c6f6e0de38"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/laborRates/{laborRateID}`

*Delete a customer labor rate.*

<h3 id="86bfb551658d02368724d5c6f6e0de38-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|laborRateID|path|integer|true|A valid labor rate id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="86bfb551658d02368724d5c6f6e0de38-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer labor rate deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer labor rate does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>