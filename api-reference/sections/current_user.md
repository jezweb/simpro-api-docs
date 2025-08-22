# Current User

Current user details

## 8711175ad6581878b9ba1eb4e7635400

<a id="opId8711175ad6581878b9ba1eb4e7635400"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/currentUser/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/currentUser/',
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

r = requests.get('/api/v1.0/currentUser/', headers = headers)

print(r.json())

```

`GET /api/v1.0/currentUser/`

*List all current user.*

<h3 id="8711175ad6581878b9ba1eb4e7635400-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

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
    "ID": 0,
    "Name": "string",
    "Type": "string",
    "TypeID": "string",
    "PreferredLanguage": "en_US",
    "AccessibleCompanies": [
      {
        "ID": 0,
        "Name": "simPRO Software Australia"
      }
    ]
  }
]
```

<h3 id="8711175ad6581878b9ba1eb4e7635400-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all current user.|Inline|

<h3 id="8711175ad6581878b9ba1eb4e7635400-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of a user.|
|» Name|string|true|none|Name of a user.|
|» Type|string|true|none|Type of a user|
|» TypeID|string|true|none|Type ID of a user.|
|» PreferredLanguage|string|true|none|none|
|» AccessibleCompanies|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|PreferredLanguage|en_AU|
|PreferredLanguage|en_GB|
|PreferredLanguage|en_US|
|PreferredLanguage|es_ES|
|PreferredLanguage|es_US|
|PreferredLanguage|nl_NL|
|PreferredLanguage|de_DE|
|PreferredLanguage|fr_FR|
|PreferredLanguage|it_IT|
|PreferredLanguage|pl_PL|

<aside class="success">
This operation does not require authentication
</aside>