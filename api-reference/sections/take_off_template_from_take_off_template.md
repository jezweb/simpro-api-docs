# Take Off Template From Take Off Template

## 1ce5538c5d2cee44413fd3a78b9797b2

<a id="opId1ce5538c5d2cee44413fd3a78b9797b2"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/takeOffTemplates/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "TakeOffTemplateID": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/takeOffTemplates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/takeOffTemplates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/takeOffTemplates/`

*Create a new take off template from take off template.*

> Body parameter

```json
{
  "TakeOffTemplateID": 0
}
```

<h3 id="1ce5538c5d2cee44413fd3a78b9797b2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|body|body|object|true|Take Off Template From Take Off Template object|
|» TakeOffTemplateID|body|integer|true|ID of a TakeOff Template.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="1ce5538c5d2cee44413fd3a78b9797b2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take Off Template From Take Off Template created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>