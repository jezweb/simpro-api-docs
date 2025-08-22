# Take Off Template Lock

## 28a00e0f4988a815dbf7b9e76d16bc79

<a id="opId28a00e0f4988a815dbf7b9e76d16bc79"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/',
{
  method: 'POST'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```python
import requests

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/')

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/`

*Create a new take off template lock.*

<h3 id="28a00e0f4988a815dbf7b9e76d16bc79-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="28a00e0f4988a815dbf7b9e76d16bc79-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take off template lock created successfully.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 1061d1760392dd9bc3167c3fac597923

<a id="opId1061d1760392dd9bc3167c3fac597923"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/',
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

r = requests.delete('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}/lock/`

*Delete a take off template lock.*

<h3 id="1061d1760392dd9bc3167c3fac597923-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take off template lock deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take off template lock does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>