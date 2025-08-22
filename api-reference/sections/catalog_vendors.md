# Catalog Vendors

## cf8eb187b5d0c27af9882b77bb311916

<a id="opIdcf8eb187b5d0c27af9882b77bb311916"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/`

*List all catalog item vendors.*

<h3 id="cf8eb187b5d0c27af9882b77bb311916-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
    "VendorPartNo": "string",
    "SplitPriceEx": 0,
    "SplitPriceInc": 0,
    "Default": true
  }
]
```

<h3 id="cf8eb187b5d0c27af9882b77bb311916-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all catalog item vendors.|Inline|

<h3 id="cf8eb187b5d0c27af9882b77bb311916-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» VendorPartNo|string|true|none|none|
|» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Default|boolean|true|none|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|

<aside class="success">
This operation does not require authentication
</aside>

## d4d4217555c7c62466948bc37bf2eb8e

<a id="opIdd4d4217555c7c62466948bc37bf2eb8e"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Vendor": 0,
  "VendorPartNo": "string",
  "Discount": 0,
  "NettPrice": 0,
  "NettPriceEx": 0,
  "NettPriceInc": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "Default": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/',
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

r = requests.post('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/`

*Create a new catalog item vendor.*

> Body parameter

```json
{
  "Vendor": 0,
  "VendorPartNo": "string",
  "Discount": 0,
  "NettPrice": 0,
  "NettPriceEx": 0,
  "NettPriceInc": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "Default": true
}
```

<h3 id="d4d4217555c7c62466948bc37bf2eb8e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|body|body|object|true|Catalog item vendor object|
|» Vendor|body|integer|true|ID of a vendor|
|» VendorPartNo|body|string|false|none|
|» Discount|body|number|false|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPrice|body|number|false|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceEx|body|number|false|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceInc|body|number|false|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» SplitPriceEx|body|number|false|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|body|number|false|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Default|body|boolean|false|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|

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
  },
  "VendorPartNo": "string",
  "Discount": 0,
  "NettPrice": 0,
  "NettPriceEx": 0,
  "NettPriceInc": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "Default": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="d4d4217555c7c62466948bc37bf2eb8e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Catalog item vendor created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="d4d4217555c7c62466948bc37bf2eb8e-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» VendorPartNo|string|true|none|none|
|» Discount|number|true|none|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPrice|number|true|none|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceEx|number|true|none|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceInc|number|true|none|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Default|boolean|true|none|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## 161e3842642dc8f460c69293abc9b8b0

<a id="opId161e3842642dc8f460c69293abc9b8b0"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}`

*Retrieve details for a specific catalog item vendor.*

<h3 id="161e3842642dc8f460c69293abc9b8b0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|catalogVendorID|path|integer|true|A valid catalog vendor id|
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
  "VendorPartNo": "string",
  "Discount": 0,
  "NettPrice": 0,
  "NettPriceEx": 0,
  "NettPriceInc": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "Default": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="161e3842642dc8f460c69293abc9b8b0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Catalog item vendor details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog item vendor not found.|None|

<h3 id="161e3842642dc8f460c69293abc9b8b0-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» VendorPartNo|string|true|none|none|
|» Discount|number|true|none|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPrice|number|true|none|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceEx|number|true|none|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceInc|number|true|none|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Default|boolean|true|none|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## 2da4304434f9078e34fab2c60d2734eb

<a id="opId2da4304434f9078e34fab2c60d2734eb"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "VendorPartNo": "string",
  "Discount": 0,
  "NettPrice": 0,
  "NettPriceEx": 0,
  "NettPriceInc": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "Default": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}`

*Update a catalog item vendor.*

> Body parameter

```json
{
  "VendorPartNo": "string",
  "Discount": 0,
  "NettPrice": 0,
  "NettPriceEx": 0,
  "NettPriceInc": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "Default": true
}
```

<h3 id="2da4304434f9078e34fab2c60d2734eb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|catalogVendorID|path|integer|true|A valid catalog vendor id|
|body|body|object|true|Catalog item vendor object|
|» VendorPartNo|body|string|false|none|
|» Discount|body|number|false|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPrice|body|number|false|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceEx|body|number|false|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» NettPriceInc|body|number|false|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|» SplitPriceEx|body|number|false|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|body|number|false|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Default|body|boolean|false|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2da4304434f9078e34fab2c60d2734eb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog item vendor updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 67b15eb1663b3aafbf1d60edc9238fab

<a id="opId67b15eb1663b3aafbf1d60edc9238fab"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}/vendors/{catalogVendorID}`

*Delete a catalog item vendor.*

<h3 id="67b15eb1663b3aafbf1d60edc9238fab-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|catalogVendorID|path|integer|true|A valid catalog vendor id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="67b15eb1663b3aafbf1d60edc9238fab-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog item vendor deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog item vendor does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>