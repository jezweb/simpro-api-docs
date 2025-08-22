# Customer Contract Service Levels

## eb6718a7a9cd9ea3a8715613aea90f45

<a id="opIdeb6718a7a9cd9ea3a8715613aea90f45"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contracts/{contractID}/serviceLevels/`

*List all customer contract service levels.*

<h3 id="eb6718a7a9cd9ea3a8715613aea90f45-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contractID|path|integer|true|A valid contract id|
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
    "ServiceLevel": {
      "ID": 12345,
      "Name": "Annually Service"
    },
    "AssetType": {
      "ID": 12345,
      "Name": "Fire Extinguisher"
    }
  }
]
```

<h3 id="eb6718a7a9cd9ea3a8715613aea90f45-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer contract service levels.|Inline|

<h3 id="eb6718a7a9cd9ea3a8715613aea90f45-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ServiceLevel|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssetType|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>