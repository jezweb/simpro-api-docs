# Catalog PricingTier Prices

## 8d68d32c7dd54aa6fd6f99947bdcb387

<a id="opId8d68d32c7dd54aa6fd6f99947bdcb387"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/`

*List all catalog pricingtier prices.*

<h3 id="8d68d32c7dd54aa6fd6f99947bdcb387-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|pricingTierID|path|integer|true|A valid pricing tier id|
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
    "ID": 1.57,
    "Quantity": 1.57,
    "Markup": 1.57,
    "SellPrice": 1.57,
    "Setting": "Fixed Markup"
  }
]
```

<h3 id="8d68d32c7dd54aa6fd6f99947bdcb387-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all catalog pricingtier prices.|Inline|

<h3 id="8d68d32c7dd54aa6fd6f99947bdcb387-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|number|true|none|none|
|» Quantity|number|true|none|none|
|» Markup|number|true|none|none|
|» SellPrice|number|true|none|none|
|» Setting|string|true|none|This column is not allowed on POST request.|

#### Enumerated Values

|Property|Value|
|---|---|
|Setting|Fixed Markup|
|Setting|Fixed Sell Price|

<aside class="success">
This operation does not require authentication
</aside>

## f6b60bb284f654d1e173228cf686ed8f

<a id="opIdf6b60bb284f654d1e173228cf686ed8f"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Quantity": 1.57,
  "Markup": 1.57,
  "SellPrice": 1.57,
  "MarkupAddOn": 1.57,
  "SellPriceAddOn": 1.57
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/',
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

r = requests.post('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/`

*Create a new catalog pricingtier price.*

> Body parameter

```json
{
  "Quantity": 1.57,
  "Markup": 1.57,
  "SellPrice": 1.57,
  "MarkupAddOn": 1.57,
  "SellPriceAddOn": 1.57
}
```

<h3 id="f6b60bb284f654d1e173228cf686ed8f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|pricingTierID|path|integer|true|A valid pricing tier id|
|body|body|object|true|Catalog PricingTier Price object|
|» Quantity|body|number|true|none|
|» Markup|body|number|false|none|
|» SellPrice|body|number|false|none|
|» MarkupAddOn|body|number|false|none|
|» SellPriceAddOn|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 1.57,
  "Quantity": 1.57,
  "QuantityInString": "string",
  "Markup": 1.57,
  "SellPrice": 1.57,
  "MarkupAddOn": 1.57,
  "SellPriceAddOn": 1.57,
  "Setting": "Fixed Markup"
}
```

<h3 id="f6b60bb284f654d1e173228cf686ed8f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Catalog PricingTier Price created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="f6b60bb284f654d1e173228cf686ed8f-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|number|true|none|none|
|» Quantity|number|true|none|none|
|» QuantityInString|string|true|none|none|
|» Markup|number|true|none|none|
|» SellPrice|number|true|none|none|
|» MarkupAddOn|number|true|none|none|
|» SellPriceAddOn|number|true|none|none|
|» Setting|string|true|none|This column is not allowed on POST request.|

#### Enumerated Values

|Property|Value|
|---|---|
|Setting|Fixed Markup|
|Setting|Fixed Sell Price|

<aside class="success">
This operation does not require authentication
</aside>

## 6773c7e92d498cd0d1e9c83c5b768658

<a id="opId6773c7e92d498cd0d1e9c83c5b768658"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}`

*Retrieve details for a specific catalog pricingtier price.*

<h3 id="6773c7e92d498cd0d1e9c83c5b768658-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|pricingTierID|path|integer|true|A valid pricing tier id|
|priceID|path|integer|true|A valid price id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 1.57,
  "Quantity": 1.57,
  "QuantityInString": "string",
  "Markup": 1.57,
  "SellPrice": 1.57,
  "MarkupAddOn": 1.57,
  "SellPriceAddOn": 1.57,
  "Setting": "Fixed Markup"
}
```

<h3 id="6773c7e92d498cd0d1e9c83c5b768658-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Catalog PricingTier Price details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog PricingTier Price not found.|None|

<h3 id="6773c7e92d498cd0d1e9c83c5b768658-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|number|true|none|none|
|» Quantity|number|true|none|none|
|» QuantityInString|string|true|none|none|
|» Markup|number|true|none|none|
|» SellPrice|number|true|none|none|
|» MarkupAddOn|number|true|none|none|
|» SellPriceAddOn|number|true|none|none|
|» Setting|string|true|none|This column is not allowed on POST request.|

#### Enumerated Values

|Property|Value|
|---|---|
|Setting|Fixed Markup|
|Setting|Fixed Sell Price|

<aside class="success">
This operation does not require authentication
</aside>

## eb23b621786686e4bd5ff076182ea0b5

<a id="opIdeb23b621786686e4bd5ff076182ea0b5"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Quantity": 1.57,
  "Markup": 1.57,
  "SellPrice": 1.57,
  "MarkupAddOn": 1.57,
  "SellPriceAddOn": 1.57,
  "Setting": "Fixed Markup"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}`

*Update a catalog pricingtier price.*

> Body parameter

```json
{
  "Quantity": 1.57,
  "Markup": 1.57,
  "SellPrice": 1.57,
  "MarkupAddOn": 1.57,
  "SellPriceAddOn": 1.57,
  "Setting": "Fixed Markup"
}
```

<h3 id="eb23b621786686e4bd5ff076182ea0b5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|pricingTierID|path|integer|true|A valid pricing tier id|
|priceID|path|integer|true|A valid price id|
|body|body|object|true|Catalog PricingTier Price object|
|» Quantity|body|number|false|none|
|» Markup|body|number|false|none|
|» SellPrice|body|number|false|none|
|» MarkupAddOn|body|number|false|none|
|» SellPriceAddOn|body|number|false|none|
|» Setting|body|string|false|This column is not allowed on POST request.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Setting|Fixed Markup|
|» Setting|Fixed Sell Price|

<h3 id="eb23b621786686e4bd5ff076182ea0b5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog PricingTier Price updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## ed00770b429ae2c7deba14679afddede

<a id="opIded00770b429ae2c7deba14679afddede"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}/prices/{priceID}`

*Delete a catalog pricingtier price.*

<h3 id="ed00770b429ae2c7deba14679afddede-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|pricingTierID|path|integer|true|A valid pricing tier id|
|priceID|path|integer|true|A valid price id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ed00770b429ae2c7deba14679afddede-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog PricingTier Price deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog PricingTier Price does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>