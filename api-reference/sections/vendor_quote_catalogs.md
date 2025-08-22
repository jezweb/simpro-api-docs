# Vendor Quote Catalogs

## bc6a1b1afa8d0766bbc3687994afd1a1

<a id="opIdbc6a1b1afa8d0766bbc3687994afd1a1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/`

*List all vendor quote catalogs.*

<h3 id="bc6a1b1afa8d0766bbc3687994afd1a1-parameters">Parameters</h3>

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
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "Quantity": 0,
    "Prices": [
      {
        "Vendor": {
          "ID": 0,
          "Name": "string"
        },
        "UnitPrice": {
          "ExTax": 0,
          "Tax": 0,
          "IncTax": 0
        },
        "Total": {
          "ExTax": 0,
          "Tax": 0,
          "IncTax": 0
        }
      }
    ]
  }
]
```

<h3 id="bc6a1b1afa8d0766bbc3687994afd1a1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor quote catalogs.|Inline|

<h3 id="bc6a1b1afa8d0766bbc3687994afd1a1-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» Quantity|number|true|none|none|
|» Prices|[object]|true|none|none|
|»» Vendor|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» UnitPrice|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 87314b11bc09b096b13c9bbb07e4d9f3

<a id="opId87314b11bc09b096b13c9bbb07e4d9f3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Catalog": 0,
  "Quantity": 0,
  "Prices": [
    {
      "Vendor": 0,
      "UnitPrice": {
        "ExTax": 0,
        "IncTax": 0
      }
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/`

*Create a new vendor quote catalog.*

> Body parameter

```json
{
  "Catalog": 0,
  "Quantity": 0,
  "Prices": [
    {
      "Vendor": 0,
      "UnitPrice": {
        "ExTax": 0,
        "IncTax": 0
      }
    }
  ]
}
```

<h3 id="87314b11bc09b096b13c9bbb07e4d9f3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|body|body|object|true|Vendor Quote Catalog object|
|» Catalog|body|integer|true|ID of a catalog item|
|» Quantity|body|number|true|none|
|» Prices|body|[object]|false|none|
|»» Vendor|body|integer|false|ID of a vendor|
|»» UnitPrice|body|object|false|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "Quantity": 0,
  "Prices": [
    {
      "Vendor": {
        "ID": 0,
        "Name": "string"
      },
      "UnitPrice": {
        "ExTax": 0,
        "Tax": 0,
        "IncTax": 0
      },
      "Total": {
        "ExTax": 0,
        "Tax": 0,
        "IncTax": 0
      }
    }
  ]
}
```

<h3 id="87314b11bc09b096b13c9bbb07e4d9f3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor Quote Catalog created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="87314b11bc09b096b13c9bbb07e4d9f3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» Quantity|number|true|none|none|
|» Prices|[object]|true|none|none|
|»» Vendor|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» UnitPrice|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a7ce29776fb30657c46acc496349606f

<a id="opIda7ce29776fb30657c46acc496349606f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}`

*Retrieve details for a specific vendor quote catalog.*

<h3 id="a7ce29776fb30657c46acc496349606f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|catalogID|path|integer|true|A valid catalog id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "Quantity": 0,
  "Prices": [
    {
      "Vendor": {
        "ID": 0,
        "Name": "string"
      },
      "UnitPrice": {
        "ExTax": 0,
        "Tax": 0,
        "IncTax": 0
      },
      "Total": {
        "ExTax": 0,
        "Tax": 0,
        "IncTax": 0
      }
    }
  ]
}
```

<h3 id="a7ce29776fb30657c46acc496349606f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor Quote Catalog details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Quote Catalog not found.|None|

<h3 id="a7ce29776fb30657c46acc496349606f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» Quantity|number|true|none|none|
|» Prices|[object]|true|none|none|
|»» Vendor|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» UnitPrice|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## fa0a38045922848b596b96cf11446476

<a id="opIdfa0a38045922848b596b96cf11446476"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Quantity": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}`

*Update a vendor quote catalog.*

> Body parameter

```json
{
  "Quantity": 0
}
```

<h3 id="fa0a38045922848b596b96cf11446476-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|catalogID|path|integer|true|A valid catalog id|
|body|body|object|true|Vendor Quote Catalog object|
|» Quantity|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="fa0a38045922848b596b96cf11446476-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor Quote Catalog updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 8d6f13fd1022b0c8c660bb93db10403c

<a id="opId8d6f13fd1022b0c8c660bb93db10403c"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}`

*Delete a vendor quote catalog.*

<h3 id="8d6f13fd1022b0c8c660bb93db10403c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|catalogID|path|integer|true|A valid catalog id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="8d6f13fd1022b0c8c660bb93db10403c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor Quote Catalog deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Quote Catalog does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>