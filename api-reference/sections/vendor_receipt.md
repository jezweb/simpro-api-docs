# Vendor Receipt

Search vendor receipts.

<a href="https://helpguide.simprogroup.com/">External documentation</a>

## 290abbc22a0116e4d84ec2ca483ed53c

<a id="opId290abbc22a0116e4d84ec2ca483ed53c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorReceipts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorReceipts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorReceipts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorReceipts/`

*Search vendor receipt.*

<h3 id="290abbc22a0116e4d84ec2ca483ed53c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|pageSize|query|integer|false|The maximum number of results to be returned by a request.|
|page|query|integer|false|Set the page number on paginated request|
|orderby|query|array[string]|false|Set the order of the requested records, by prefixing '-' on the column name you can get records by descending order. Comma separated list can also be provided.|
|limit|query|integer|false|Set the limit of number of records in a request|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|search|all|
|search|any|

> Example responses

> 200 Response

```json
[
  {
    "ID": 0,
    "VendorInvoiceNo": "string",
    "DateIssued": "2021-04-22",
    "DueDate": "2021-04-22",
    "Vendor": {
      "ID": 0,
      "Name": "string"
    },
    "VendorOrder": {
      "ID": 0,
      "Stage": "Pending",
      "Reference": "string",
      "ShowItemDueDate": true,
      "Totals": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    },
    "_href": "/api/{version}/companies/{companyID}/vendorOrders/{VendorOrderNo}/receipts/{VendorOrderReceiptNo}"
  }
]
```

<h3 id="290abbc22a0116e4d84ec2ca483ed53c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Search vendor receipt.|Inline|

<h3 id="290abbc22a0116e4d84ec2ca483ed53c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorInvoiceNo|string|true|none|none|
|» DateIssued|string(date)|true|none|This date cannot be in the future|
|» DueDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» VendorOrder|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Stage|string|true|none|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|»» Reference|string|true|none|none|
|»» ShowItemDueDate|boolean|true|none|none|
|»» Totals|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» _href|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Pending|
|Stage|Approved|
|Stage|Archived|
|Stage|Voided|

<aside class="success">
This operation does not require authentication
</aside>