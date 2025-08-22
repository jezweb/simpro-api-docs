# Catalog PricingTiers

## 46be78f8c2b70a4b9518b0c4b0afc984

<a id="opId46be78f8c2b70a4b9518b0c4b0afc984"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/`

*List all catalog pricingtiers.*

<h3 id="46be78f8c2b70a4b9518b0c4b0afc984-parameters">Parameters</h3>

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
    "ID": 12345,
    "Name": "Tier 1 (Service name)",
    "PriceBased": "Buy",
    "ScaledPricing": true
  }
]
```

<h3 id="46be78f8c2b70a4b9518b0c4b0afc984-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all catalog pricingtiers.|Inline|

<h3 id="46be78f8c2b70a4b9518b0c4b0afc984-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» PriceBased|string|true|none|Set the price based of the pricing tier|
|» ScaledPricing|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|PriceBased|Buy|
|PriceBased|Trade|

<aside class="success">
This operation does not require authentication
</aside>

## 002cde383ffc3f04c8a459de9ec1ffc7

<a id="opId002cde383ffc3f04c8a459de9ec1ffc7"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/pricingTiers/{pricingTierID}`

*Retrieve details for a specific catalog pricingtier.*

<h3 id="002cde383ffc3f04c8a459de9ec1ffc7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
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
  "ScaledPricing": true
}
```

<h3 id="002cde383ffc3f04c8a459de9ec1ffc7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Catalog PricingTier details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog PricingTier not found.|None|

<h3 id="002cde383ffc3f04c8a459de9ec1ffc7-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» PriceBased|string|true|none|Set the price based of the pricing tier|
|» ScaledPricing|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|PriceBased|Buy|
|PriceBased|Trade|

<aside class="success">
This operation does not require authentication
</aside>