# Labor Rate Overhead

The default overhead represents the corporate overhead for all estimates, and may cover expenses including, but not limited to, rent, accounting fees, marketing, vehicles, internal staff and management wages, and other costs.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Labour-Rates.htm">External documentation</a>

## 9a5c2c24622836cb969c164a9ebeba5c

<a id="opId9a5c2c24622836cb969c164a9ebeba5c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/`

*Retrieve details for a specific labor rate overhead.*

> Example responses

> 200 Response

```json
{
  "Overhead": 0
}
```

<h3 id="9a5c2c24622836cb969c164a9ebeba5c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Labor Rate Overhead details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Labor Rate Overhead not found.|None|

<h3 id="9a5c2c24622836cb969c164a9ebeba5c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Overhead|number|true|none|Default labor overhead.|

<aside class="success">
This operation does not require authentication
</aside>

## b72d90deed3caded0288c0203eabc3a5

<a id="opIdb72d90deed3caded0288c0203eabc3a5"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Overhead": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/',
{
  method: 'PATCH',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/labor/laborRates/overhead/`

*Update a labor rate overhead.*

> Body parameter

```json
{
  "Overhead": 0
}
```

<h3 id="b72d90deed3caded0288c0203eabc3a5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Labor Rate Overhead object|
|» Overhead|body|number|false|Default labor overhead.|

<h3 id="b72d90deed3caded0288c0203eabc3a5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Labor Rate Overhead updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>