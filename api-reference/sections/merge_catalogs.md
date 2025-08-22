# Merge Catalogs

Merge a catalogue item into another item and replace all pricing and suppliers. This is recommended if you have duplicated items in your catalogue.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Catalogue-Overview.htm">External documentation</a>

## ad15e52ddb81529db8b5e3bcc6e45925

<a id="opIdad15e52ddb81529db8b5e3bcc6e45925"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/catalogs/{catalogID}/mergeCatalogs/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Catalogs": [
    0
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/mergeCatalogs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/mergeCatalogs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/catalogs/{catalogID}/mergeCatalogs/`

*Create a new merge catalog.*

> Body parameter

```json
{
  "Catalogs": [
    0
  ]
}
```

<h3 id="ad15e52ddb81529db8b5e3bcc6e45925-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|body|body|object|true|Merge catalog object|
|» Catalogs|body|[integer]|true|Array of catalog IDs that needs to be merged.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="ad15e52ddb81529db8b5e3bcc6e45925-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Merge catalog created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>