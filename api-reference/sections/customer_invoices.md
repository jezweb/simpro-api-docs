# Customer Invoices

In Simpro, an invoice is a list of goods sent or services provided and the sum due for these from your customer. After you have approved, emailed, and received payment for an invoice, you can apply the payment to the invoice in Simpro.

Please see **Jobs > Customer Invoices** if you wish to create/update/delete an invoice.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Invoicing.htm">External documentation</a>

## cbd88ee3134183e810347958338cf092

<a id="opIdcbd88ee3134183e810347958338cf092"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customerInvoices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerInvoices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customerInvoices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customerInvoices/`

*List all customer invoices.*

<h3 id="cbd88ee3134183e810347958338cf092-parameters">Parameters</h3>

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
    "RecurringInvoice": true,
    "Customer": {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    },
    "Jobs": [
      {
        "ID": 0,
        "Site": {
          "ID": 12345,
          "Name": "string"
        },
        "Comment": "Fault/Request See customer's email.",
        "Description": "Fault/Request See customer's email.",
        "Total": {
          "ExTax": 1.57,
          "IncTax": 1.57
        }
      }
    ],
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "Paid": 1.57
    },
    "IsCredit": true,
    "IsPaid": true,
    "DueDate": "2021-04-22"
  }
]
```

<h3 id="cbd88ee3134183e810347958338cf092-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer invoices.|Inline|

<h3 id="cbd88ee3134183e810347958338cf092-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» RecurringInvoice|boolean|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Jobs|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Site|object|true|none|none|
|»»» ID|integer|true|none|ID of the site|
|»»» Name|string|true|none|none|
|»» Comment|string|true|none|none|
|»» Description|string|true|none|deprecated|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Paid|number|true|none|none|
|» IsCredit|boolean|true|none|none|
|» IsPaid|boolean|true|none|none|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## ce6638c5fe8ba4c6766b116445a38dc2

<a id="opIdce6638c5fe8ba4c6766b116445a38dc2"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customerInvoices/{customerInvoiceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerInvoices/{customerInvoiceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customerInvoices/{customerInvoiceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customerInvoices/{customerInvoiceID}`

*Retrieve details for a specific customer invoice.*

<h3 id="ce6638c5fe8ba4c6766b116445a38dc2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerInvoiceID|path|integer|true|A valid customer invoice id|
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
  "RecurringInvoice": true,
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "Jobs": [
    {
      "ID": 0,
      "Site": {
        "ID": 12345,
        "Name": "string"
      },
      "Comment": "Fault/Request See customer's email.",
      "Description": "Fault/Request See customer's email.",
      "Total": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "Stage": "Approved",
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Paid": 1.57
  },
  "Currency": "USD",
  "DateIssued": "2021-04-22",
  "IsCredit": true,
  "IsPaid": true,
  "IsRetainage": true,
  "DueDate": "2021-04-22",
  "DatePaid": "2021-04-22",
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="ce6638c5fe8ba4c6766b116445a38dc2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer invoice details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer invoice not found.|None|

<h3 id="ce6638c5fe8ba4c6766b116445a38dc2-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» RecurringInvoice|boolean|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Jobs|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Site|object|true|none|none|
|»»» ID|integer|true|none|ID of the site|
|»»» Name|string|true|none|none|
|»» Comment|string|true|none|none|
|»» Description|string|true|none|deprecated|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Stage|string|true|none|none|
|» Status|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Paid|number|true|none|none|
|» Currency|object|true|none|The currency for this invoice. See Setup -> Currencies.|
|»» ID|string|true|none|none|
|»» Name|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» IsCredit|boolean|true|none|none|
|» IsPaid|boolean|true|none|none|
|» IsRetainage|boolean|true|none|none|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DatePaid|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Approved|
|Stage|Pending|

<aside class="success">
This operation does not require authentication
</aside>