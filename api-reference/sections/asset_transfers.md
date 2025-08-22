# Asset Transfers

## a4c07f85ebc7327c15b4359574a98ffe

<a id="opIda4c07f85ebc7327c15b4359574a98ffe"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/transfer/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "SiteID": 0,
  "IncludeChildren": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/transfer/',
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
  'Content-Type': 'application/json'
}

r = requests.post('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/transfer/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/transfer/`

*Create a new asset transfer.*

> Body parameter

```json
{
  "SiteID": 0,
  "IncludeChildren": true
}
```

<h3 id="a4c07f85ebc7327c15b4359574a98ffe-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|body|body|object|true|Asset transfer object|
|» SiteID|body|integer|true|ID of the site to transfer to|
|» IncludeChildren|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a4c07f85ebc7327c15b4359574a98ffe-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Asset transfer created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>