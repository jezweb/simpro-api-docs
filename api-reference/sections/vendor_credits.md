# Vendor Credits

## aee136fd7aa53268a55ad3929e48a355

<a id="opIdaee136fd7aa53268a55ad3929e48a355"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorCredits/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorCredits/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorCredits/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorCredits/`

*List all vendor credits.*

<h3 id="aee136fd7aa53268a55ad3929e48a355-parameters">Parameters</h3>

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
    "VendorCreditNo": "string",
    "DateIssued": "2021-04-22",
    "OrderNo": 0,
    "ReceiptNo": 0,
    "Vendor": {
      "ID": 0,
      "Name": "string"
    }
  }
]
```

<h3 id="aee136fd7aa53268a55ad3929e48a355-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor credits.|Inline|

<h3 id="aee136fd7aa53268a55ad3929e48a355-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorCreditNo|string|true|none|none|
|» DateIssued|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» OrderNo|integer|true|none|none|
|» ReceiptNo|integer|true|none|none|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 83f5983f38db7f7cc607cc80978d6429

<a id="opId83f5983f38db7f7cc607cc80978d6429"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorCredits/{vendorCreditID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorCredits/{vendorCreditID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorCredits/{vendorCreditID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorCredits/{vendorCreditID}`

*Retrieve details for a specific vendor credit.*

<h3 id="83f5983f38db7f7cc607cc80978d6429-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorCreditID|path|integer|true|A valid vendor credit id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 0,
  "Type": "Price",
  "VendorCreditNo": "string",
  "DateIssued": "2021-04-22",
  "Notes": "string",
  "Currency": "string",
  "ExchangeRate": 1.57,
  "TaxRounding": 1.57,
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Rate": 10
    }
  },
  "RestockingFee": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Rate": 10
    }
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Catalogs": [
    {
      "Catalog": {
        "ID": 0,
        "PartNo": "string",
        "Name": "string"
      },
      "Received": 1.57,
      "UnitPrice": 1.57,
      "CreditAmount": 1.57,
      "Total": 1.57
    }
  ],
  "OrderNo": 0,
  "ReceiptNo": 0,
  "Vendor": {
    "ID": 0,
    "Name": "string"
  }
}
```

<h3 id="83f5983f38db7f7cc607cc80978d6429-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor Credit details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Credit not found.|None|

<h3 id="83f5983f38db7f7cc607cc80978d6429-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» VendorCreditNo|string|true|none|none|
|» DateIssued|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» TaxRounding|number|true|none|none|
|» Category|object|true|none|Accounting Category. Must be provided when category tracking is on within company's financial defaults.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» RestockingFee|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Catalogs|[object]|true|none|none|
|»» Catalog|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» PartNo|string|true|none|The vendor part number for the item.|
|»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Received|number|true|none|none|
|»» UnitPrice|number|true|none|none|
|»» CreditAmount|number¦null|true|none|none|
|»» Total|number|true|none|none|
|» OrderNo|integer|true|none|none|
|» ReceiptNo|integer|true|none|none|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Price|
|Type|Quantity|

<aside class="success">
This operation does not require authentication
</aside>