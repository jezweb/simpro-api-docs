# Customer Contract Service Level Asset Types

## 857d97109916b4f464a9f1ca46550bcb

<a id="opId857d97109916b4f464a9f1ca46550bcb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID}`

*Retrieve details for a specific customer contract service level asset type.*

<h3 id="857d97109916b4f464a9f1ca46550bcb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|serviceLevelID|path|integer|true|A valid service level id|
|assetTypeID|path|integer|true|A valid asset type id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "AssetType": {
    "ID": 12345,
    "Name": "Fire Extinguisher"
  },
  "Prebuild": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string"
  },
  "ChargeRate": 1.57,
  "EstimatedTime": 1.57
}
```

<h3 id="857d97109916b4f464a9f1ca46550bcb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer contract service level asset type details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contract service level asset type not found.|None|

<h3 id="857d97109916b4f464a9f1ca46550bcb-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Prebuild|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|none|
|»» Name|string|true|none|none|
|» ChargeRate|number|true|none|none|
|» EstimatedTime|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 0d6c939cae12c7fde7cf5ecb889328ef

<a id="opId0d6c939cae12c7fde7cf5ecb889328ef"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Prebuild": 0,
  "ChargeRate": 1.57,
  "EstimatedTime": 1.57
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/{serviceLevelID}/assetTypes/{assetTypeID}`

*Update a customer contract service level asset type.*

> Body parameter

```json
{
  "Prebuild": 0,
  "ChargeRate": 1.57,
  "EstimatedTime": 1.57
}
```

<h3 id="0d6c939cae12c7fde7cf5ecb889328ef-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
|serviceLevelID|path|integer|true|A valid service level id|
|assetTypeID|path|integer|true|A valid asset type id|
|body|body|object|true|Customer contract service level asset type object|
|» Prebuild|body|integer|false|ID of a prebuild|
|» ChargeRate|body|number|false|none|
|» EstimatedTime|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="0d6c939cae12c7fde7cf5ecb889328ef-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contract service level asset type updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>