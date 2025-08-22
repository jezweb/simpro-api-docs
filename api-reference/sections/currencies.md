# Currencies

If you sell or purchase goods and services in different currencies, you can set up multiple currencies in Simpro.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Currencies.htm">External documentation</a>

## 7d8c0280502d6fabe4d9f5543efe8971

<a id="opId7d8c0280502d6fabe4d9f5543efe8971"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/currencies/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/currencies/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/currencies/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/currencies/`

*List all currencies.*

<h3 id="7d8c0280502d6fabe4d9f5543efe8971-parameters">Parameters</h3>

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
    "ID": "string",
    "Name": "string",
    "Visible": true
  }
]
```

<h3 id="7d8c0280502d6fabe4d9f5543efe8971-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all currencies.|Inline|

<h3 id="7d8c0280502d6fabe4d9f5543efe8971-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Name|string|true|none|none|
|» Visible|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## d145277f3bc01bdf6a51ed7c62d443e5

<a id="opIdd145277f3bc01bdf6a51ed7c62d443e5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/currencies/{currencyID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/currencies/{currencyID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/currencies/{currencyID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/currencies/{currencyID}`

*Retrieve details for a specific currency.*

<h3 id="d145277f3bc01bdf6a51ed7c62d443e5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|currencyID|path|string|true|A valid currency id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|currencyID|ILS|
|currencyID|AED|
|currencyID|ZAR|
|currencyID|KYD|
|currencyID|CRC|
|currencyID|SEK|
|currencyID|MXN|
|currencyID|KRW|
|currencyID|TRY|
|currencyID|RUB|
|currencyID|BRL|
|currencyID|PLN|
|currencyID|BIF|
|currencyID|KES|
|currencyID|EUR|
|currencyID|GBP|
|currencyID|JPY|
|currencyID|NZD|
|currencyID|CAD|
|currencyID|AUD|
|currencyID|USD|
|currencyID|SGD|
|currencyID|CHF|
|currencyID|HKD|
|currencyID|VND|
|currencyID|MYR|
|currencyID|IDR|
|currencyID|PKR|
|currencyID|INR|
|currencyID|NOK|
|currencyID|RWF|

> Example responses

> 200 Response

```json
{
  "ID": "string",
  "Name": "string",
  "Symbol": "string",
  "ExchangeRate": 0,
  "Visible": true,
  "DefaultSymbol": "string"
}
```

<h3 id="d145277f3bc01bdf6a51ed7c62d443e5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Currency details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Currency not found.|None|

<h3 id="d145277f3bc01bdf6a51ed7c62d443e5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» Name|string|true|none|none|
|» Symbol|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Visible|boolean|true|none|none|
|» DefaultSymbol|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## aa5bd14987063b001274a4c035fb575d

<a id="opIdaa5bd14987063b001274a4c035fb575d"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/currencies/{currencyID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "ExchangeRate": 0,
  "Visible": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/currencies/{currencyID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/currencies/{currencyID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/currencies/{currencyID}`

*Update a currency.*

> Body parameter

```json
{
  "ExchangeRate": 0,
  "Visible": true
}
```

<h3 id="aa5bd14987063b001274a4c035fb575d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|currencyID|path|string|true|A valid currency id|
|body|body|object|true|Currency object|
|» ExchangeRate|body|number|false|none|
|» Visible|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|currencyID|ILS|
|currencyID|AED|
|currencyID|ZAR|
|currencyID|KYD|
|currencyID|CRC|
|currencyID|SEK|
|currencyID|MXN|
|currencyID|KRW|
|currencyID|TRY|
|currencyID|RUB|
|currencyID|BRL|
|currencyID|PLN|
|currencyID|BIF|
|currencyID|KES|
|currencyID|EUR|
|currencyID|GBP|
|currencyID|JPY|
|currencyID|NZD|
|currencyID|CAD|
|currencyID|AUD|
|currencyID|USD|
|currencyID|SGD|
|currencyID|CHF|
|currencyID|HKD|
|currencyID|VND|
|currencyID|MYR|
|currencyID|IDR|
|currencyID|PKR|
|currencyID|INR|
|currencyID|NOK|
|currencyID|RWF|

<h3 id="aa5bd14987063b001274a4c035fb575d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Currency updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>