# Job Lock

## 265f1683adddb925e6886e76ae225452

<a id="opId265f1683adddb925e6886e76ae225452"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/lock/

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/lock/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/lock/')

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/lock/`

*Create a new job lock.*

<h3 id="265f1683adddb925e6886e76ae225452-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="265f1683adddb925e6886e76ae225452-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job lock created successfully.|None|

<aside class="success">
This operation does not require authentication
</aside>

## c4fa22c096f5b01451b5168dbc6e93ec

<a id="opIdc4fa22c096f5b01451b5168dbc6e93ec"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/lock/

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/lock/',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/lock/')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/lock/`

*Delete a job lock.*

<h3 id="c4fa22c096f5b01451b5168dbc6e93ec-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job lock deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job lock does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>