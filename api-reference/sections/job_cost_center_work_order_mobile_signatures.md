# Job Cost Center Work Order Mobile Signatures

## 7a323e4f98350c6a69bee300e9a03249

<a id="opId7a323e4f98350c6a69bee300e9a03249"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/mobileSignatures/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/mobileSignatures/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/mobileSignatures/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}/mobileSignatures/`

*List all job cost center work order mobile signatures.*

<h3 id="7a323e4f98350c6a69bee300e9a03249-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|workOrderID|path|integer|true|A valid work order id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
[
  {
    "Technician": "string",
    "Client": "string"
  }
]
```

<h3 id="7a323e4f98350c6a69bee300e9a03249-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center work order mobile signatures.|Inline|

<h3 id="7a323e4f98350c6a69bee300e9a03249-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Technician|string|true|none|none|
|» Client|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>