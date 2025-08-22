# Prebuild Catalogs

## eb63718bc75a640b35e909cc5a93a804

<a id="opIdeb63718bc75a640b35e909cc5a93a804"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/`

*List all prebuild catalogs.*

<h3 id="eb63718bc75a640b35e909cc5a93a804-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|prebuildID|path|integer|true|A valid prebuild id|
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
      "Name": "string",
      "TradePrice": 0,
      "TradePriceEx": 0,
      "TradePriceInc": 0,
      "SplitPrice": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0
    },
    "Quantity": 1.57,
    "FitTime": {
      "ID": 12345,
      "Name": "string",
      "Multiplier": 1.57
    },
    "DisplayOrder": 0
  }
]
```

<h3 id="eb63718bc75a640b35e909cc5a93a804-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all prebuild catalogs.|Inline|

<h3 id="eb63718bc75a640b35e909cc5a93a804-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Quantity|number|true|none|none|
|» FitTime|object¦null|true|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|integer|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 821c8a98df52105e5af98fc6b6c1a1b3

<a id="opId821c8a98df52105e5af98fc6b6c1a1b3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Catalog": 0,
  "Quantity": 1.57,
  "FitTime": 0,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/`

*Create a new prebuild catalog.*

> Body parameter

```json
{
  "Catalog": 0,
  "Quantity": 1.57,
  "FitTime": 0,
  "DisplayOrder": 0
}
```

<h3 id="821c8a98df52105e5af98fc6b6c1a1b3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|prebuildID|path|integer|true|A valid prebuild id|
|body|body|object|true|Prebuild catalog object|
|» Catalog|body|integer|true|ID of a catalog item|
|» Quantity|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
|» DisplayOrder|body|integer|false|none|

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
    "Name": "string",
    "TradePrice": 0,
    "TradePriceEx": 0,
    "TradePriceInc": 0,
    "SplitPrice": 0,
    "SplitPriceEx": 0,
    "SplitPriceInc": 0
  },
  "Quantity": 1.57,
  "Cost": 1.57,
  "LaborTime": 1.57,
  "FitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "DisplayOrder": 0,
  "Total": {
    "Cost": 1.57,
    "LaborTime": 1.57
  }
}
```

<h3 id="821c8a98df52105e5af98fc6b6c1a1b3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Prebuild catalog created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="821c8a98df52105e5af98fc6b6c1a1b3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Quantity|number|true|none|none|
|» Cost|number|true|none|none|
|» LaborTime|number|true|none|none|
|» FitTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|integer|true|none|none|
|» Total|object|true|none|none|
|»» Cost|number|true|none|none|
|»» LaborTime|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## cf7d8c44f31f2a8f86936d387e5f8504

<a id="opIdcf7d8c44f31f2a8f86936d387e5f8504"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}`

*Retrieve details for a specific prebuild catalog.*

<h3 id="cf7d8c44f31f2a8f86936d387e5f8504-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|prebuildID|path|integer|true|A valid prebuild id|
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
    "Name": "string",
    "TradePrice": 0,
    "TradePriceEx": 0,
    "TradePriceInc": 0,
    "SplitPrice": 0,
    "SplitPriceEx": 0,
    "SplitPriceInc": 0
  },
  "Quantity": 1.57,
  "Cost": 1.57,
  "LaborTime": 1.57,
  "FitTime": {
    "ID": 12345,
    "Name": "string",
    "Multiplier": 1.57
  },
  "DisplayOrder": 0,
  "Total": {
    "Cost": 1.57,
    "LaborTime": 1.57
  }
}
```

<h3 id="cf7d8c44f31f2a8f86936d387e5f8504-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Prebuild catalog details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Prebuild catalog not found.|None|

<h3 id="cf7d8c44f31f2a8f86936d387e5f8504-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» Quantity|number|true|none|none|
|» Cost|number|true|none|none|
|» LaborTime|number|true|none|none|
|» FitTime|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Multiplier|number|false|none|This will multiply the amount of Time billed for the item it is assigned to. Please set a value greater than 0.|
|» DisplayOrder|integer|true|none|none|
|» Total|object|true|none|none|
|»» Cost|number|true|none|none|
|»» LaborTime|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 959d0303edb5c266bdfc99a71e83881c

<a id="opId959d0303edb5c266bdfc99a71e83881c"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Quantity": 1.57,
  "FitTime": 0,
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}`

*Update a prebuild catalog.*

> Body parameter

```json
{
  "Quantity": 1.57,
  "FitTime": 0,
  "DisplayOrder": 0
}
```

<h3 id="959d0303edb5c266bdfc99a71e83881c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|prebuildID|path|integer|true|A valid prebuild id|
|catalogID|path|integer|true|A valid catalog id|
|body|body|object|true|Prebuild catalog object|
|» Quantity|body|number|false|none|
|» FitTime|body|integer|false|ID of a fit time|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="959d0303edb5c266bdfc99a71e83881c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Prebuild catalog updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## b6af28ea1b66ab5113da63c23dc837a1

<a id="opIdb6af28ea1b66ab5113da63c23dc837a1"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/prebuilds/{prebuildID}/catalogs/{catalogID}`

*Delete a prebuild catalog.*

<h3 id="b6af28ea1b66ab5113da63c23dc837a1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|prebuildID|path|integer|true|A valid prebuild id|
|catalogID|path|integer|true|A valid catalog id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b6af28ea1b66ab5113da63c23dc837a1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Prebuild catalog deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Prebuild catalog does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>