# Activities

You can use activities to schedule and keep track of non-billable time, such as annual leave, training, and toolbox talks.

Once an activity is created, you can schedule it the same way you schedule quotes and jobs in Simpro.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Activities.htm">External documentation</a>

## d6f8643f50d427781b9be54c3bd70c76

<a id="opIdd6f8643f50d427781b9be54c3bd70c76"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/activities/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/activities/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/activities/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/activities/`

*List all activities.*

<h3 id="d6f8643f50d427781b9be54c3bd70c76-parameters">Parameters</h3>

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
    "Name": "Annual Leave"
  }
]
```

<h3 id="d6f8643f50d427781b9be54c3bd70c76-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all activities.|Inline|

<h3 id="d6f8643f50d427781b9be54c3bd70c76-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 525dd3126f1bd681ac1dc115f1ab78d5

<a id="opId525dd3126f1bd681ac1dc115f1ab78d5"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/activities/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Annual Leave",
  "Billable": true,
  "ScheduleRate": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/activities/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/activities/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/activities/`

*Create a new activity.*

> Body parameter

```json
{
  "Name": "Annual Leave",
  "Billable": true,
  "ScheduleRate": 0
}
```

<h3 id="525dd3126f1bd681ac1dc115f1ab78d5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Activity object|
|» Name|body|string|true|none|
|» Billable|body|boolean|false|Set this to true if this activity is associated to a labor cost|
|» ScheduleRate|body|integer|false|ID of a schedule rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Annual Leave",
  "Billable": true,
  "ScheduleRate": {
    "ID": 12345,
    "Name": "Overtime"
  },
  "Archived": true
}
```

<h3 id="525dd3126f1bd681ac1dc115f1ab78d5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Activity created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="525dd3126f1bd681ac1dc115f1ab78d5-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Billable|boolean|true|none|Set this to true if this activity is associated to a labor cost|
|» ScheduleRate|object¦null|false|none|Set the associated schedule rate if this is a billable activity|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## c88605b27f7e8a3873047d9af3a93574

<a id="opIdc88605b27f7e8a3873047d9af3a93574"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/activities/{activityID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/activities/{activityID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/activities/{activityID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/activities/{activityID}`

*Retrieve details for a specific activity.*

<h3 id="c88605b27f7e8a3873047d9af3a93574-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|activityID|path|integer|true|A valid activity id|
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
  "Name": "Annual Leave",
  "Billable": true,
  "ScheduleRate": {
    "ID": 12345,
    "Name": "Overtime"
  },
  "Archived": true
}
```

<h3 id="c88605b27f7e8a3873047d9af3a93574-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Activity details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Activity not found.|None|

<h3 id="c88605b27f7e8a3873047d9af3a93574-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Billable|boolean|true|none|Set this to true if this activity is associated to a labor cost|
|» ScheduleRate|object¦null|false|none|Set the associated schedule rate if this is a billable activity|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 9a5f47de3a4614754a6dcabfec8c7c40

<a id="opId9a5f47de3a4614754a6dcabfec8c7c40"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/activities/{activityID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Annual Leave",
  "Billable": true,
  "ScheduleRate": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/activities/{activityID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/activities/{activityID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/activities/{activityID}`

*Update a activity.*

> Body parameter

```json
{
  "Name": "Annual Leave",
  "Billable": true,
  "ScheduleRate": 0
}
```

<h3 id="9a5f47de3a4614754a6dcabfec8c7c40-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|activityID|path|integer|true|A valid activity id|
|body|body|object|true|Activity object|
|» Name|body|string|false|none|
|» Billable|body|boolean|false|Set this to true if this activity is associated to a labor cost|
|» ScheduleRate|body|integer|false|ID of a schedule rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9a5f47de3a4614754a6dcabfec8c7c40-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Activity updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 06244c0852f6f17632bdf9706d8eff93

<a id="opId06244c0852f6f17632bdf9706d8eff93"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/activities/{activityID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/activities/{activityID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/activities/{activityID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/activities/{activityID}`

*Delete a activity.*

<h3 id="06244c0852f6f17632bdf9706d8eff93-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|activityID|path|integer|true|A valid activity id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="06244c0852f6f17632bdf9706d8eff93-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Activity deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Activity does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>