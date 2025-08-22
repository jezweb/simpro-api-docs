# Labor Rates

Labor rates are used to estimate the charges of labor for quotes and jobs. You can create different labor rates for different levels of experience, such as senior technicians and apprentices.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Labour-Rates.htm">External documentation</a>

## c3bbb82a79e1222438f1248001d2084d

<a id="opIdc3bbb82a79e1222438f1248001d2084d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/laborRates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/laborRates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/laborRates/`

*List all labor rates.*

<h3 id="c3bbb82a79e1222438f1248001d2084d-parameters">Parameters</h3>

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

<h3 id="c3bbb82a79e1222438f1248001d2084d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all labor rates.|Inline|

<h3 id="c3bbb82a79e1222438f1248001d2084d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 3fe0be0db4a97a92d062f52f42a54845

<a id="opId3fe0be0db4a97a92d062f52f42a54845"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/labor/laborRates/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "CostRate": 0,
  "Markup": 0,
  "Multiplier": 1.57,
  "TaxCode": 0,
  "IsDefault": true,
  "AddToAllCustomers": true,
  "IncOverhead": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/labor/laborRates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/labor/laborRates/`

*Create a new labor rate.*

> Body parameter

```json
{
  "Name": "string",
  "CostRate": 0,
  "Markup": 0,
  "Multiplier": 1.57,
  "TaxCode": 0,
  "IsDefault": true,
  "AddToAllCustomers": true,
  "IncOverhead": true
}
```

<h3 id="3fe0be0db4a97a92d062f52f42a54845-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Labor rate object|
|» Name|body|string|true|none|
|» CostRate|body|number|false|This includes, per hour, the total of three rates: the amount you pay your employee, their employment costs such as superannuation and annual leave, and your company overheads.|
|» Markup|body|number|false|none|
|» Multiplier|body|number|false|Use multipliers to account for technicians who take additional time to complete work. For example, a labor rate with a 1.5x multiplier means that an estimated time of 1 hour will be increased to 1.5 hours.|
|» TaxCode|body|integer|true|ID of a tax code|
|» IsDefault|body|boolean|false|none|
|» AddToAllCustomers|body|boolean|false|If YES, all new and existing customers that don't have labour type will be given this labour type. Any customers already with that labour type will not be affected.|
|» IncOverhead|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "CostRate": 0,
  "Markup": 0,
  "Multiplier": 1.57,
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "IsDefault": true,
  "AddToAllCustomers": true,
  "IncOverhead": true,
  "Plant": {
    "ID": 0,
    "Name": "string"
  },
  "Archived": true
}
```

<h3 id="3fe0be0db4a97a92d062f52f42a54845-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Labor rate created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="3fe0be0db4a97a92d062f52f42a54845-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CostRate|number|true|none|This includes, per hour, the total of three rates: the amount you pay your employee, their employment costs such as superannuation and annual leave, and your company overheads.|
|» Markup|number|true|none|none|
|» Multiplier|number|true|none|Use multipliers to account for technicians who take additional time to complete work. For example, a labor rate with a 1.5x multiplier means that an estimated time of 1 hour will be increased to 1.5 hours.|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» IsDefault|boolean|true|none|none|
|» AddToAllCustomers|boolean|true|none|If YES, all new and existing customers that don't have labour type will be given this labour type. Any customers already with that labour type will not be affected.|
|» IncOverhead|boolean|true|none|none|
|» Plant|object|true|none|Billable plant item.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## e0e8797332e30bb121c08efa0c5ff9ad

<a id="opIde0e8797332e30bb121c08efa0c5ff9ad"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}`

*Retrieve details for a specific labor rate.*

<h3 id="e0e8797332e30bb121c08efa0c5ff9ad-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|laborRateID|path|integer|true|A valid labor rate id|
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
  "Multiplier": 1.57,
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "IsDefault": true,
  "AddToAllCustomers": true,
  "IncOverhead": true,
  "Plant": {
    "ID": 0,
    "Name": "string"
  },
  "Archived": true
}
```

<h3 id="e0e8797332e30bb121c08efa0c5ff9ad-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Labor rate details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Labor rate not found.|None|

<h3 id="e0e8797332e30bb121c08efa0c5ff9ad-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CostRate|number|true|none|This includes, per hour, the total of three rates: the amount you pay your employee, their employment costs such as superannuation and annual leave, and your company overheads.|
|» Markup|number|true|none|none|
|» Multiplier|number|true|none|Use multipliers to account for technicians who take additional time to complete work. For example, a labor rate with a 1.5x multiplier means that an estimated time of 1 hour will be increased to 1.5 hours.|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» IsDefault|boolean|true|none|none|
|» AddToAllCustomers|boolean|true|none|If YES, all new and existing customers that don't have labour type will be given this labour type. Any customers already with that labour type will not be affected.|
|» IncOverhead|boolean|true|none|none|
|» Plant|object|true|none|Billable plant item.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 399b425418e2eaec555384660b8a6cd7

<a id="opId399b425418e2eaec555384660b8a6cd7"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "CostRate": 0,
  "Markup": 0,
  "Multiplier": 1.57,
  "TaxCode": 0,
  "IsDefault": true,
  "AddToAllCustomers": true,
  "UpdateChangesTo": "AllCustomers",
  "IncOverhead": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}`

*Update a labor rate.*

> Body parameter

```json
{
  "Name": "string",
  "CostRate": 0,
  "Markup": 0,
  "Multiplier": 1.57,
  "TaxCode": 0,
  "IsDefault": true,
  "AddToAllCustomers": true,
  "UpdateChangesTo": "AllCustomers",
  "IncOverhead": true
}
```

<h3 id="399b425418e2eaec555384660b8a6cd7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|laborRateID|path|integer|true|A valid labor rate id|
|body|body|object|true|Labor rate object|
|» Name|body|string|false|none|
|» CostRate|body|number|false|This includes, per hour, the total of three rates: the amount you pay your employee, their employment costs such as superannuation and annual leave, and your company overheads.|
|» Markup|body|number|false|none|
|» Multiplier|body|number|false|Use multipliers to account for technicians who take additional time to complete work. For example, a labor rate with a 1.5x multiplier means that an estimated time of 1 hour will be increased to 1.5 hours.|
|» TaxCode|body|integer|false|ID of a tax code|
|» IsDefault|body|boolean|false|none|
|» AddToAllCustomers|body|boolean|false|If YES, all new and existing customers that don't have labour type will be given this labour type. Any customers already with that labour type will not be affected.|
|» UpdateChangesTo|body|string|false|If YES, all customers with this labour type associated with them will be adjusted to the new rates.|
|» IncOverhead|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» UpdateChangesTo|AllCustomers|
|» UpdateChangesTo|AllCustomersWithTheCurrentRate|

<h3 id="399b425418e2eaec555384660b8a6cd7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Labor rate updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 2ea8f0a96d309ba104a2c163d41279ee

<a id="opId2ea8f0a96d309ba104a2c163d41279ee"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/labor/laborRates/{laborRateID}`

*Delete a labor rate.*

<h3 id="2ea8f0a96d309ba104a2c163d41279ee-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|laborRateID|path|integer|true|A valid labor rate id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="2ea8f0a96d309ba104a2c163d41279ee-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Labor rate deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Labor rate does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>