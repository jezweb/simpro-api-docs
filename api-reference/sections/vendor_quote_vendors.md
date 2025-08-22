# Vendor Quote Vendors

## 57135ab5c63033f6478595cca3b58b92

<a id="opId57135ab5c63033f6478595cca3b58b92"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/`

*List all vendor quote vendors.*

<h3 id="57135ab5c63033f6478595cca3b58b92-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
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
    "Vendor": {
      "ID": 0,
      "Name": "string"
    }
  }
]
```

<h3 id="57135ab5c63033f6478595cca3b58b92-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor quote vendors.|Inline|

<h3 id="57135ab5c63033f6478595cca3b58b92-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 6ed43da767514f57506e4292ad4cc2bf

<a id="opId6ed43da767514f57506e4292ad4cc2bf"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Vendor": 0,
  "CopyPricesFromVendor": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/`

*Create a new vendor quote vendor.*

> Body parameter

```json
{
  "Vendor": 0,
  "CopyPricesFromVendor": 0
}
```

<h3 id="6ed43da767514f57506e4292ad4cc2bf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|body|body|object|true|Vendor Quote Vendor object|
|» Vendor|body|integer|true|ID of a vendor|
|» CopyPricesFromVendor|body|integer|false|Item price can only be copied from the vendors in the same quote.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "Vendor": {
    "ID": 0,
    "Name": "string"
  }
}
```

<h3 id="6ed43da767514f57506e4292ad4cc2bf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor Quote Vendor created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="6ed43da767514f57506e4292ad4cc2bf-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e55b1dfd68f0fb3367eeeae41136a944

<a id="opIde55b1dfd68f0fb3367eeeae41136a944"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/{vendorID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/{vendorID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/{vendorID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/vendors/{vendorID}`

*Retrieve details for a specific vendor quote vendor.*

<h3 id="e55b1dfd68f0fb3367eeeae41136a944-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|vendorID|path|integer|true|A valid vendor id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Vendor": {
    "ID": 0,
    "Name": "string"
  }
}
```

<h3 id="e55b1dfd68f0fb3367eeeae41136a944-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor Quote Vendor details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Quote Vendor not found.|None|

<h3 id="e55b1dfd68f0fb3367eeeae41136a944-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>