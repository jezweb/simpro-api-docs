# Site Labor Rates

## d479d6368d1c2f97b7689a39181abb75

<a id="opIdd479d6368d1c2f97b7689a39181abb75"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/`

*List all site labor rates.*

<h3 id="d479d6368d1c2f97b7689a39181abb75-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
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
    "LaborRate": {
      "ID": 12345,
      "Name": "string"
    },
    "IsDefault": true
  }
]
```

<h3 id="d479d6368d1c2f97b7689a39181abb75-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all site labor rates.|Inline|

<h3 id="d479d6368d1c2f97b7689a39181abb75-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» LaborRate|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» IsDefault|boolean|true|none|Default labor rate.|

<aside class="success">
This operation does not require authentication
</aside>

## 1424ac9eaaf40d8dd2012f65b7d06696

<a id="opId1424ac9eaaf40d8dd2012f65b7d06696"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "LaborRate": 0,
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/`

*Create a new site labor rate.*

> Body parameter

```json
{
  "LaborRate": 0,
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="1424ac9eaaf40d8dd2012f65b7d06696-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|body|body|object|true|Site Labor Rate object|
|» LaborRate|body|integer|true|ID of a labor rate|
|» Cost|body|number|false|Cost Rate (ex GST)|
|» Markup|body|number|false|Markup to calculate sell rate.|
|» IsDefault|body|boolean|false|Default labor rate.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "LaborRate": {
    "ID": 12345,
    "Name": "string"
  },
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="1424ac9eaaf40d8dd2012f65b7d06696-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Site Labor Rate created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="1424ac9eaaf40d8dd2012f65b7d06696-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» LaborRate|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Cost|number|true|none|Cost Rate (ex GST)|
|» Markup|number|true|none|Markup to calculate sell rate.|
|» IsDefault|boolean|true|none|Default labor rate.|

<aside class="success">
This operation does not require authentication
</aside>

## ecf8ee5a90d5f63a8ed93b4932eaf830

<a id="opIdecf8ee5a90d5f63a8ed93b4932eaf830"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}`

*Retrieve details for a specific site labor rate.*

<h3 id="ecf8ee5a90d5f63a8ed93b4932eaf830-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
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
  "LaborRate": {
    "ID": 12345,
    "Name": "string"
  },
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="ecf8ee5a90d5f63a8ed93b4932eaf830-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Site Labor Rate details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site Labor Rate not found.|None|

<h3 id="ecf8ee5a90d5f63a8ed93b4932eaf830-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» LaborRate|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Cost|number|true|none|Cost Rate (ex GST)|
|» Markup|number|true|none|Markup to calculate sell rate.|
|» IsDefault|boolean|true|none|Default labor rate.|

<aside class="success">
This operation does not require authentication
</aside>

## 48303aa7d799b91011e98028c4526a55

<a id="opId48303aa7d799b91011e98028c4526a55"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}`

*Update a site labor rate.*

> Body parameter

```json
{
  "Cost": 1.57,
  "Markup": 1.57,
  "IsDefault": true
}
```

<h3 id="48303aa7d799b91011e98028c4526a55-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|laborRateID|path|integer|true|A valid labor rate id|
|body|body|object|true|Site Labor Rate object|
|» Cost|body|number|false|Cost Rate (ex GST)|
|» Markup|body|number|false|Markup to calculate sell rate.|
|» IsDefault|body|boolean|false|Default labor rate.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="48303aa7d799b91011e98028c4526a55-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site Labor Rate updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e45e058a733d004c7b41d2e121a96b78

<a id="opIde45e058a733d004c7b41d2e121a96b78"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/laborRates/{laborRateID}`

*Delete a site labor rate.*

<h3 id="e45e058a733d004c7b41d2e121a96b78-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|laborRateID|path|integer|true|A valid labor rate id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e45e058a733d004c7b41d2e121a96b78-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site Labor Rate deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site Labor Rate does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>