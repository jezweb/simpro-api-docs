# Pricing Tiers

Use pricing tiers to create a set of tiered percentage markup levels. These levels can be applied to catalogue items, catalogue groups and subgroups, customers, contracts, and or jobs.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Pricing-Tiers.htm">External documentation</a>

## 8ed3d831b7bb80a41c701e87340ae7a0

<a id="opId8ed3d831b7bb80a41c701e87340ae7a0"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/`

*List all pricing tiers.*

<h3 id="8ed3d831b7bb80a41c701e87340ae7a0-parameters">Parameters</h3>

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
    "Name": "Tier 1 (Service name)",
    "DisplayOrder": 0
  }
]
```

<h3 id="8ed3d831b7bb80a41c701e87340ae7a0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all pricing tiers.|Inline|

<h3 id="8ed3d831b7bb80a41c701e87340ae7a0-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a5578007df8d78be69ce7ca389fd589f

<a id="opIda5578007df8d78be69ce7ca389fd589f"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Tier 1 (Service name)",
  "PriceBased": "Buy",
  "DefaultMarkup": 10,
  "TierType": "Quantity",
  "ScaledTierPricing": [
    {
      "ScaledPrice": 0,
      "Markup": 100
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/`

*Create a new pricing tier.*

> Body parameter

```json
{
  "Name": "Tier 1 (Service name)",
  "PriceBased": "Buy",
  "DefaultMarkup": 10,
  "TierType": "Quantity",
  "ScaledTierPricing": [
    {
      "ScaledPrice": 0,
      "Markup": 100
    }
  ]
}
```

<h3 id="a5578007df8d78be69ce7ca389fd589f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|makeDefault|query|boolean|false|Making Pricing Tier Default|
|updateCustomers|query|boolean|false|Update customers default pricing tier, only works with makeDefault parameter|
|body|body|object|true|Pricing tier object|
|» Name|body|string|true|none|
|» PriceBased|body|string|false|Set the price based of the pricing tier|
|» DefaultMarkup|body|number|false|Set the default markup of the pricing tier|
|» TierType|body|string|false|Set the type of the pricing tier|
|» ScaledTierPricing|body|[object]|false|none|
|»» ScaledPrice|body|number|true|Scaled price in float|
|»» Markup|body|number|true|Markup percentage|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» PriceBased|Buy|
|» PriceBased|Trade|
|» TierType|Quantity|
|» TierType|Scaled|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Tier 1 (Service name)",
  "PriceBased": "Buy",
  "DefaultMarkup": 10,
  "Default": true,
  "TierType": "Quantity",
  "ScaledTierPricing": [
    {
      "ScaledPrice": 0,
      "Markup": 100
    }
  ],
  "DisplayOrder": 0,
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="a5578007df8d78be69ce7ca389fd589f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Pricing tier created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="a5578007df8d78be69ce7ca389fd589f-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» PriceBased|string|true|none|Set the price based of the pricing tier|
|» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|» Default|boolean|true|none|True if pricing tiers is default, false otherwise|
|» TierType|string|true|none|Set the type of the pricing tier|
|» ScaledTierPricing|[object]|true|none|none|
|»» ScaledPrice|number|true|none|Scaled price in float|
|»» Markup|number|true|none|Markup percentage|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|PriceBased|Buy|
|PriceBased|Trade|
|TierType|Quantity|
|TierType|Scaled|

<aside class="success">
This operation does not require authentication
</aside>

## 2fdd6cef3e71a89666cefb4ab8313bb4

<a id="opId2fdd6cef3e71a89666cefb4ab8313bb4"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}`

*Retrieve details for a specific pricing tier.*

<h3 id="2fdd6cef3e71a89666cefb4ab8313bb4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|pricingTierID|path|integer|true|A valid pricing tier id|
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
  "Name": "Tier 1 (Service name)",
  "PriceBased": "Buy",
  "DefaultMarkup": 10,
  "Default": true,
  "TierType": "Quantity",
  "ScaledTierPricing": [
    {
      "ScaledPrice": 0,
      "Markup": 100
    }
  ],
  "DisplayOrder": 0,
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="2fdd6cef3e71a89666cefb4ab8313bb4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Pricing tier details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Pricing tier not found.|None|

<h3 id="2fdd6cef3e71a89666cefb4ab8313bb4-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» PriceBased|string|true|none|Set the price based of the pricing tier|
|» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|» Default|boolean|true|none|True if pricing tiers is default, false otherwise|
|» TierType|string|true|none|Set the type of the pricing tier|
|» ScaledTierPricing|[object]|true|none|none|
|»» ScaledPrice|number|true|none|Scaled price in float|
|»» Markup|number|true|none|Markup percentage|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|PriceBased|Buy|
|PriceBased|Trade|
|TierType|Quantity|
|TierType|Scaled|

<aside class="success">
This operation does not require authentication
</aside>

## 2545971df3437fcf613b4d1bd8b3d3fe

<a id="opId2545971df3437fcf613b4d1bd8b3d3fe"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Tier 1 (Service name)",
  "PriceBased": "Buy",
  "DefaultMarkup": 10,
  "TierType": "Quantity",
  "ScaledTierPricing": [
    {
      "ScaledPrice": 0,
      "Markup": 100
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}`

*Update a pricing tier.*

> Body parameter

```json
{
  "Name": "Tier 1 (Service name)",
  "PriceBased": "Buy",
  "DefaultMarkup": 10,
  "TierType": "Quantity",
  "ScaledTierPricing": [
    {
      "ScaledPrice": 0,
      "Markup": 100
    }
  ]
}
```

<h3 id="2545971df3437fcf613b4d1bd8b3d3fe-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|pricingTierID|path|integer|true|A valid pricing tier id|
|makeDefault|query|boolean|false|Making Pricing Tier Default|
|updateCustomers|query|boolean|false|Update customers default pricing tier, only works with makeDefault parameter|
|body|body|object|true|Pricing tier object|
|» Name|body|string|false|none|
|» PriceBased|body|string|false|Set the price based of the pricing tier|
|» DefaultMarkup|body|number|false|Set the default markup of the pricing tier|
|» TierType|body|string|false|Set the type of the pricing tier|
|» ScaledTierPricing|body|[object]|false|none|
|»» ScaledPrice|body|number|true|Scaled price in float|
|»» Markup|body|number|true|Markup percentage|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» PriceBased|Buy|
|» PriceBased|Trade|
|» TierType|Quantity|
|» TierType|Scaled|

<h3 id="2545971df3437fcf613b4d1bd8b3d3fe-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Pricing tier updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 6ae89142b93bf80763888331fb9577d3

<a id="opId6ae89142b93bf80763888331fb9577d3"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/materials/pricingTiers/{pricingTierID}`

*Delete a pricing tier.*

<h3 id="6ae89142b93bf80763888331fb9577d3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|pricingTierID|path|integer|true|A valid pricing tier id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="6ae89142b93bf80763888331fb9577d3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Pricing tier deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Pricing tier does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>