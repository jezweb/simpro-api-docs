# Schedule Rates

Create schedule rates in Simpro to keep track of actual costs. You may wish to create schedule rates for various levels of overtime, leave, and various activities.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Schedule-Rates.htm">External documentation</a>

## fa0192359519dc906878e851a24a33ba

<a id="opIdfa0192359519dc906878e851a24a33ba"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/`

*List all schedule rates.*

<h3 id="fa0192359519dc906878e851a24a33ba-parameters">Parameters</h3>

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
    "Name": "Overtime"
  }
]
```

<h3 id="fa0192359519dc906878e851a24a33ba-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all schedule rates.|Inline|

<h3 id="fa0192359519dc906878e851a24a33ba-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 913e2c7c1cec37fd629d5654e0f5a23a

<a id="opId913e2c7c1cec37fd629d5654e0f5a23a"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Overtime",
  "Multiplier": 2,
  "ShowInMobile": true,
  "ShowInConnect": true,
  "IncOverhead": true,
  "ActivityOnly": true,
  "ScheduleColor": "#0000FF",
  "DisplayOrder": 0,
  "Archived": true,
  "HourlyAllowance": 1.57,
  "PayRateOverride": 1.57
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/`

*Create a new schedule rate.*

> Body parameter

```json
{
  "Name": "Overtime",
  "Multiplier": 2,
  "ShowInMobile": true,
  "ShowInConnect": true,
  "IncOverhead": true,
  "ActivityOnly": true,
  "ScheduleColor": "#0000FF",
  "DisplayOrder": 0,
  "Archived": true,
  "HourlyAllowance": 1.57,
  "PayRateOverride": 1.57
}
```

<h3 id="913e2c7c1cec37fd629d5654e0f5a23a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Schedule rate object|
|» Name|body|string|true|none|
|» Multiplier|body|number|true|Enter the Multiplier up to two decimal places. This cannot be changed after creation and must be a positive value.|
|» ShowInMobile|body|boolean|false|To enable mobile app users to view and select this schedule rate.|
|» ShowInConnect|body|boolean|false|This field is <b>DEPRECATED</b> and will be removed in version 1.1<br />Use ShowInMobile instead.|
|» IncOverhead|body|boolean|false|To include the overhead cost, depending on your business needs.|
|» ActivityOnly|body|boolean|false|Set to true if the rate only applies to a non-billable activity|
|» ScheduleColor|body|string¦null|false|Color code in hex decimal format eg. #0000FF or #00F|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» HourlyAllowance|body|number|false|none|
|» PayRateOverride|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Overtime",
  "Multiplier": 2,
  "ShowInMobile": true,
  "ShowInConnect": true,
  "IncOverhead": true,
  "ActivityOnly": true,
  "ScheduleColor": "#0000FF",
  "DisplayOrder": 0,
  "Archived": true,
  "HourlyAllowance": 1.57,
  "PayRateOverride": 1.57
}
```

<h3 id="913e2c7c1cec37fd629d5654e0f5a23a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Schedule rate created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="913e2c7c1cec37fd629d5654e0f5a23a-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Multiplier|number|true|none|Enter the Multiplier up to two decimal places. This cannot be changed after creation and must be a positive value.|
|» ShowInMobile|boolean|true|none|To enable mobile app users to view and select this schedule rate.|
|» ShowInConnect|boolean|true|none|This field is <b>DEPRECATED</b> and will be removed in version 1.1<br />Use ShowInMobile instead.|
|» IncOverhead|boolean|true|none|To include the overhead cost, depending on your business needs.|
|» ActivityOnly|boolean|true|none|Set to true if the rate only applies to a non-billable activity|
|» ScheduleColor|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» HourlyAllowance|number|true|none|none|
|» PayRateOverride|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## d5b7a1fb4c63b1c87b300b1e0de08d8f

<a id="opIdd5b7a1fb4c63b1c87b300b1e0de08d8f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}`

*Retrieve details for a specific schedule rate.*

<h3 id="d5b7a1fb4c63b1c87b300b1e0de08d8f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|scheduleRateID|path|integer|true|A valid schedule rate id|
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
  "Name": "Overtime",
  "Multiplier": 2,
  "ShowInMobile": true,
  "ShowInConnect": true,
  "IncOverhead": true,
  "ActivityOnly": true,
  "ScheduleColor": "#0000FF",
  "DisplayOrder": 0,
  "Archived": true,
  "HourlyAllowance": 1.57,
  "PayRateOverride": 1.57
}
```

<h3 id="d5b7a1fb4c63b1c87b300b1e0de08d8f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Schedule rate details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Schedule rate not found.|None|

<h3 id="d5b7a1fb4c63b1c87b300b1e0de08d8f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Multiplier|number|true|none|Enter the Multiplier up to two decimal places. This cannot be changed after creation and must be a positive value.|
|» ShowInMobile|boolean|true|none|To enable mobile app users to view and select this schedule rate.|
|» ShowInConnect|boolean|true|none|This field is <b>DEPRECATED</b> and will be removed in version 1.1<br />Use ShowInMobile instead.|
|» IncOverhead|boolean|true|none|To include the overhead cost, depending on your business needs.|
|» ActivityOnly|boolean|true|none|Set to true if the rate only applies to a non-billable activity|
|» ScheduleColor|string¦null|true|none|Color code in hex decimal format eg. #0000FF or #00F|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» HourlyAllowance|number|true|none|none|
|» PayRateOverride|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 4d9e0b537a159694728b6c769d26cbdc

<a id="opId4d9e0b537a159694728b6c769d26cbdc"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Overtime",
  "ShowInMobile": true,
  "ShowInConnect": true,
  "IncOverhead": true,
  "ActivityOnly": true,
  "ScheduleColor": "#0000FF",
  "DisplayOrder": 0,
  "Archived": true,
  "HourlyAllowance": 1.57,
  "PayRateOverride": 1.57
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}`

*Update a schedule rate.*

> Body parameter

```json
{
  "Name": "Overtime",
  "ShowInMobile": true,
  "ShowInConnect": true,
  "IncOverhead": true,
  "ActivityOnly": true,
  "ScheduleColor": "#0000FF",
  "DisplayOrder": 0,
  "Archived": true,
  "HourlyAllowance": 1.57,
  "PayRateOverride": 1.57
}
```

<h3 id="4d9e0b537a159694728b6c769d26cbdc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|scheduleRateID|path|integer|true|A valid schedule rate id|
|body|body|object|true|Schedule rate object|
|» Name|body|string|false|none|
|» ShowInMobile|body|boolean|false|To enable mobile app users to view and select this schedule rate.|
|» ShowInConnect|body|boolean|false|This field is <b>DEPRECATED</b> and will be removed in version 1.1<br />Use ShowInMobile instead.|
|» IncOverhead|body|boolean|false|To include the overhead cost, depending on your business needs.|
|» ActivityOnly|body|boolean|false|Set to true if the rate only applies to a non-billable activity|
|» ScheduleColor|body|string¦null|false|Color code in hex decimal format eg. #0000FF or #00F|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» HourlyAllowance|body|number|false|none|
|» PayRateOverride|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="4d9e0b537a159694728b6c769d26cbdc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Schedule rate updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 161f14764d5bc8030f86e91792d28d49

<a id="opId161f14764d5bc8030f86e91792d28d49"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/labor/scheduleRates/{scheduleRateID}`

*Delete a schedule rate.*

<h3 id="161f14764d5bc8030f86e91792d28d49-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|scheduleRateID|path|integer|true|A valid schedule rate id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="161f14764d5bc8030f86e91792d28d49-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Schedule rate deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Schedule rate does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>