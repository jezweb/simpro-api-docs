# Teams

## 27e5e046415ff0c4a85c7c087bd56e3c

<a id="opId27e5e046415ff0c4a85c7c087bd56e3c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/teams/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/teams/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/teams/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/teams/`

*List all teams.*

<h3 id="27e5e046415ff0c4a85c7c087bd56e3c-parameters">Parameters</h3>

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

<h3 id="27e5e046415ff0c4a85c7c087bd56e3c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all teams.|Inline|

<h3 id="27e5e046415ff0c4a85c7c087bd56e3c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Team name|

<aside class="success">
This operation does not require authentication
</aside>

## a6798bf1816ff662f3a1e8039644fa9c

<a id="opIda6798bf1816ff662f3a1e8039644fa9c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/teams/{teamID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/teams/{teamID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/teams/{teamID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/teams/{teamID}`

*Retrieve details for a specific team.*

<h3 id="a6798bf1816ff662f3a1e8039644fa9c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|teamID|path|integer|true|A valid team id|
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
  "Availability": [
    {
      "StartDay": "Monday",
      "StartTime": "string",
      "EndDay": "Monday",
      "EndTime": "string"
    }
  ],
  "CostCenters": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Members": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Zones": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ]
}
```

<h3 id="a6798bf1816ff662f3a1e8039644fa9c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Team details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Team not found.|None|

<h3 id="a6798bf1816ff662f3a1e8039644fa9c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Team name|
|» Availability|[object]|true|none|none|
|»» StartDay|string|true|none|A full textual representation of the day of the week|
|»» StartTime|string|true|none|24-hour format of an hour and minutes eg 00:00|
|»» EndDay|string|true|none|A full textual representation of the day of the week|
|»» EndTime|string|true|none|24-hour format of an hour and minutes eg 00:00|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Members|[object]|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Zones|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|StartDay|Monday|
|StartDay|Tuesday|
|StartDay|Wednesday|
|StartDay|Thursday|
|StartDay|Friday|
|StartDay|Saturday|
|StartDay|Sunday|
|EndDay|Monday|
|EndDay|Tuesday|
|EndDay|Wednesday|
|EndDay|Thursday|
|EndDay|Friday|
|EndDay|Saturday|
|EndDay|Sunday|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>