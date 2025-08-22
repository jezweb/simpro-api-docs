# Plant Rates

## fda8a46464f5856037ba3d56c5649aa8

<a id="opIdfda8a46464f5856037ba3d56c5649aa8"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/plantRates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/plantRates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/plantRates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/plantRates/`

*List all plant rates.*

<h3 id="fda8a46464f5856037ba3d56c5649aa8-parameters">Parameters</h3>

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
    "Name": "string"
  }
]
```

<h3 id="fda8a46464f5856037ba3d56c5649aa8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all plant rates.|Inline|

<h3 id="fda8a46464f5856037ba3d56c5649aa8-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 45fdfb7f4a0d9a791363dec653be0509

<a id="opId45fdfb7f4a0d9a791363dec653be0509"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/plantRates/{plantRateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/plantRates/{plantRateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/plantRates/{plantRateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/plantRates/{plantRateID}`

*Retrieve details for a specific plant rate.*

<h3 id="45fdfb7f4a0d9a791363dec653be0509-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantRateID|path|integer|true|A valid plant rate id|
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
  "Name": "string",
  "CostRate": 0,
  "Markup": 0,
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "AddToAllCustomers": true,
  "Plant": {
    "ID": 0,
    "Name": "string"
  }
}
```

<h3 id="45fdfb7f4a0d9a791363dec653be0509-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Plant Rate details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant Rate not found.|None|

<h3 id="45fdfb7f4a0d9a791363dec653be0509-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CostRate|number|true|none|This includes, per hour, the total of three rates: the amount you pay your employee, their employment costs such as superannuation and annual leave, and your company overheads.|
|» Markup|number|true|none|none|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» AddToAllCustomers|boolean|true|none|If YES, all new and existing customers that don't have labour type will be given this labour type. Any customers already with that labour type will not be affected.|
|» Plant|object|true|none|Billable plant item.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>