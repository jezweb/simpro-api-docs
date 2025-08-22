# Info

Info handler gives you values of setting that are system wide.

## 501822bc50323ec6c60db837fd2f1fa5

<a id="opId501822bc50323ec6c60db837fd2f1fa5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/info/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/info/',
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

r = requests.get('/api/v1.0/info/', headers = headers)

print(r.json())

```

`GET /api/v1.0/info/`

*Retrieve details for a specific info.*

<h3 id="501822bc50323ec6c60db837fd2f1fa5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

> Example responses

> 200 Response

```json
{
  "Version": "99.0.0.0.1.1",
  "Country": "Australia",
  "MaintenancePlanner": true,
  "MultiCompany": true,
  "SharedCatalog": true,
  "SharedStock": true,
  "SharedClients": true,
  "SharedSetup": true,
  "SharedDefaults": true,
  "SharedAccountsIntegration": true,
  "SharedVoip": true
}
```

<h3 id="501822bc50323ec6c60db837fd2f1fa5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Info details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Info not found.|None|

<h3 id="501822bc50323ec6c60db837fd2f1fa5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Version|string|true|none|Current version.|
|» Country|string|true|none|Current build's default country.|
|» MaintenancePlanner|boolean|true|none|True when Maintenance Planner feature is enabled.|
|» MultiCompany|boolean|true|none|True if a build is a multi-company build.|
|» SharedCatalog|boolean|true|none|True if Shared Catalog option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|
|» SharedStock|boolean|true|none|True if Shared Stock option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|
|» SharedClients|boolean|true|none|True if Shared Clients option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|
|» SharedSetup|boolean|true|none|True if Shared Setup option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|
|» SharedDefaults|boolean|true|none|True if Shared Defaults option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|
|» SharedAccountsIntegration|boolean|true|none|True if Shared Accounts Integration option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|
|» SharedVoip|boolean|true|none|True if Shared Voip option is enabled.<br />See https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm for more information.|

<aside class="success">
This operation does not require authentication
</aside>