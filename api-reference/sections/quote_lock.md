# Quote Lock

## 04ab2c94821ca6dbafb66b3355220533

<a id="opId04ab2c94821ca6dbafb66b3355220533"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/

```

```javascript

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/',
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

r = requests.post('/api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/')

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/`

*Create a new quote lock.*

<h3 id="04ab2c94821ca6dbafb66b3355220533-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|quoteID|path|integer|true|A valid quote id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="04ab2c94821ca6dbafb66b3355220533-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Quote lock created successfully.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 3bbb85a5757d1cc27f33ccb432dad158

<a id="opId3bbb85a5757d1cc27f33ccb432dad158"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/

```

```javascript

fetch('/api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/',
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

r = requests.delete('/api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/quotes/{quoteID}/lock/`

*Delete a quote lock.*

<h3 id="3bbb85a5757d1cc27f33ccb432dad158-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Quote lock deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Quote lock does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>