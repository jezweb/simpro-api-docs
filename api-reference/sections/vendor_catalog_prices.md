# Vendor Catalog Prices

## bddb884041e9c7bee8b3b9dc7a031395

<a id="opIdbddb884041e9c7bee8b3b9dc7a031395"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/`

*List all vendor catalog prices.*

<h3 id="bddb884041e9c7bee8b3b9dc7a031395-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|catalogID|path|integer|true|A valid catalog id|
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
```

<h3 id="bddb884041e9c7bee8b3b9dc7a031395-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor catalog prices.|Inline|

<h3 id="bddb884041e9c7bee8b3b9dc7a031395-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» UnitPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e978f27593143cbe9bd0130f27a9ee58

<a id="opIde978f27593143cbe9bd0130f27a9ee58"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID}`

*Retrieve details for a specific vendor catalog price.*

<h3 id="e978f27593143cbe9bd0130f27a9ee58-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|catalogID|path|integer|true|A valid catalog id|
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
  },
  "Quantity": 0,
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
```

<h3 id="e978f27593143cbe9bd0130f27a9ee58-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor Catalog Price details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Catalog Price not found.|None|

<h3 id="e978f27593143cbe9bd0130f27a9ee58-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Quantity|number|true|none|none|
|» UnitPrice|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 259d3a6db1fd803ecd09151254779841

<a id="opId259d3a6db1fd803ecd09151254779841"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "UnitPrice": {
    "ExTax": 0,
    "IncTax": 0
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}/catalogs/{catalogID}/vendorPrices/{vendorID}`

*Update a vendor catalog price.*

> Body parameter

```json
{
  "UnitPrice": {
    "ExTax": 0,
    "IncTax": 0
  }
}
```

<h3 id="259d3a6db1fd803ecd09151254779841-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|catalogID|path|integer|true|A valid catalog id|
|vendorID|path|integer|true|A valid vendor id|
|body|body|object|true|Vendor Catalog Price object|
|» UnitPrice|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="259d3a6db1fd803ecd09151254779841-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor Catalog Price updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>