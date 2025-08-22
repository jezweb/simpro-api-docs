# Catalog Currencies

## 5f56aa79a7c7fb86317ee9f862bc7af5

<a id="opId5f56aa79a7c7fb86317ee9f862bc7af5"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}/currencies/{currencyID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/currencies/{currencyID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/currencies/{currencyID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}/currencies/{currencyID}`

*Delete a catalog currencies.*

<h3 id="5f56aa79a7c7fb86317ee9f862bc7af5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|currencyID|path|string|true|A valid currency id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|currencyID|ILS|
|currencyID|AED|
|currencyID|ZAR|
|currencyID|KYD|
|currencyID|CRC|
|currencyID|SEK|
|currencyID|MXN|
|currencyID|KRW|
|currencyID|TRY|
|currencyID|RUB|
|currencyID|BRL|
|currencyID|PLN|
|currencyID|BIF|
|currencyID|KES|
|currencyID|EUR|
|currencyID|GBP|
|currencyID|JPY|
|currencyID|NZD|
|currencyID|CAD|
|currencyID|AUD|
|currencyID|USD|
|currencyID|SGD|
|currencyID|CHF|
|currencyID|HKD|
|currencyID|VND|
|currencyID|MYR|
|currencyID|IDR|
|currencyID|PKR|
|currencyID|INR|
|currencyID|NOK|
|currencyID|RWF|

<h3 id="5f56aa79a7c7fb86317ee9f862bc7af5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog Currencies deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog Currencies does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>