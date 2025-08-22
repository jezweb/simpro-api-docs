# Security Groups

The purpose of a security group is to restrict or limit access to various functions within Simpro based on a user's role in your organisation. For example, your accounts department might not necessarily require access to quotes or pre-builds, or you might wish to limit the value of quotes or purchase orders issued by a particular user or user group.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Set-Up-Security-Groups.htm">External documentation</a>

## aead435befb1bb65ce16249c8065a138

<a id="opIdaead435befb1bb65ce16249c8065a138"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/securityGroups/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/securityGroups/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/securityGroups/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/securityGroups/`

*List all security groups.*

<h3 id="aead435befb1bb65ce16249c8065a138-parameters">Parameters</h3>

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

<h3 id="aead435befb1bb65ce16249c8065a138-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all security groups.|Inline|

<h3 id="aead435befb1bb65ce16249c8065a138-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Security group name|

<aside class="success">
This operation does not require authentication
</aside>

## 480ea4b6472528fe48f1c5eda96285ae

<a id="opId480ea4b6472528fe48f1c5eda96285ae"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/securityGroups/{securityGroupID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/securityGroups/{securityGroupID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/securityGroups/{securityGroupID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/securityGroups/{securityGroupID}`

*Retrieve details for a specific security group.*

<h3 id="480ea4b6472528fe48f1c5eda96285ae-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|securityGroupID|path|integer|true|A valid security group id|
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
  "BusinessGroup": {
    "ID": 12345,
    "Name": "string"
  },
  "Dashboards": [
    {
      "ID": 0,
      "Name": "string"
    }
  ]
}
```

<h3 id="480ea4b6472528fe48f1c5eda96285ae-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Security group details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Security group not found.|None|

<h3 id="480ea4b6472528fe48f1c5eda96285ae-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Security group name|
|» BusinessGroup|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Dashboards|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>