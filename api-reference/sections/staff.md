# Staff

## d3720eada8d81443caacfab9a0fb39f2

<a id="opIdd3720eada8d81443caacfab9a0fb39f2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/staff/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/staff/',
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

r = requests.get('/api/v1.0/companies/{companyID}/staff/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/staff/`

*List all staff.*

<h3 id="d3720eada8d81443caacfab9a0fb39f2-parameters">Parameters</h3>

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
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  }
]
```

<h3 id="d3720eada8d81443caacfab9a0fb39f2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all staff.|Inline|

<h3 id="d3720eada8d81443caacfab9a0fb39f2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Employee ID of the staff member|
|» Name|string|true|none|Name of the staff member|
|» Type|string|true|none|Staff type|
|» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 757765db6e33ef069425ccd55edeb92c

<a id="opId757765db6e33ef069425ccd55edeb92c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/staff/{staffID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/staff/{staffID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/staff/{staffID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/staff/{staffID}`

*Retrieve details for a specific staff.*

<h3 id="757765db6e33ef069425ccd55edeb92c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|staffID|path|integer|true|A valid staff id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 123,
  "Name": "John Smith",
  "Type": "employee",
  "TypeId": 0,
  "_href": "string",
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="757765db6e33ef069425ccd55edeb92c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Staff details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Staff not found.|None|

<h3 id="757765db6e33ef069425ccd55edeb92c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Employee ID of the staff member|
|» Name|string|true|none|Name of the staff member|
|» Type|string|true|none|Staff type|
|» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» _href|string|true|none|Link to this staff member's details|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>