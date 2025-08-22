# Contractor Invoice Variances

## 886508bebaaf57dae3673c030b594750

<a id="opId886508bebaaf57dae3673c030b594750"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/contractorVariances/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Contractor": 0,
  "CostCenter": 0,
  "DateIssued": "2021-04-22",
  "ApprovedBy": 0,
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/contractorVariances/',
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

r = requests.post('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/contractorVariances/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/contractorVariances/`

*Create a new contractor invoice variance.*

> Body parameter

```json
{
  "Contractor": 0,
  "CostCenter": 0,
  "DateIssued": "2021-04-22",
  "ApprovedBy": 0,
  "Description": "string",
  "LineTotal": {
    "ExTax": 9,
    "IncTax": 10
  }
}
```

<h3 id="886508bebaaf57dae3673c030b594750-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|body|body|object|true|Contractor invoice variance object|
|» Contractor|body|integer|true|ID of a contractor|
|» CostCenter|body|integer|true|ID of a cost center|
|» DateIssued|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ApprovedBy|body|integer|true|ID of a staff|
|» Description|body|string|false|none|
|» LineTotal|body|object|true|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="886508bebaaf57dae3673c030b594750-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contractor invoice variance created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## f8f99fc1ea8c1d47b0340919414649c9

<a id="opIdf8f99fc1ea8c1d47b0340919414649c9"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/variances/{varianceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/variances/{varianceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/variances/{varianceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}/variances/{varianceID}`

*Delete a contractor invoice variance.*

<h3 id="f8f99fc1ea8c1d47b0340919414649c9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|varianceID|path|integer|true|A valid variance id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f8f99fc1ea8c1d47b0340919414649c9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor invoice variance deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor invoice variance does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>