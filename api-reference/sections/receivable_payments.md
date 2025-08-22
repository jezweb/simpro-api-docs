# Receivable Payments

## 937f5272472f4d59835c68b58d27a61b

<a id="opId937f5272472f4d59835c68b58d27a61b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/receivable/payments/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/payments/',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/receivable/payments/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/receivable/payments/`

*List all receivable payments.*

<h3 id="937f5272472f4d59835c68b58d27a61b-parameters">Parameters</h3>

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
    "ID": 123,
    "FirstName": "string",
    "LastName": "string",
    "Address": {
      "Address": "123 Example St",
      "City": "Sydney",
      "State": "NSW",
      "PostalCode": "2000",
      "Country": "AUS"
    },
    "BillingAddress": {
      "Address": "123 Example St",
      "City": "Sydney",
      "State": "NSW",
      "PostalCode": "2000",
      "Country": "AUS"
    },
    "Phone1": "+61 3 1234 4321",
    "Phone2": "+61 3 4321 1234",
    "Fax": "+61 3 1234 4321",
    "Mobile": "+61 123 456 789",
    "Email": "sales@simpro.com.au",
    "SecondaryEmail": "secondary.sales@simpro.com.au",
    "DateIssued": "2021-04-22",
    "PaymentMethod": "string",
    "AccountNo": "string",
    "PaymentDetails": "string",
    "Notes": "string",
    "ExchangeRate": 1,
    "ChequeNo": "string",
    "Currency": "AUD",
    "Invoices": [
      {
        "InvoiceNo": 12345,
        "JobNo": "54321",
        "Amount": 99.99
      }
    ],
    "AccRecPaymentNo": 123,
    "AccRecContactID": 123,
    "AccRecContactName": "string",
    "DateModified": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="937f5272472f4d59835c68b58d27a61b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all receivable payments.|Inline|

<h3 id="937f5272472f4d59835c68b58d27a61b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» FirstName|string|true|none|none|
|» LastName|string|true|none|none|
|» Address|object|true|none|The physical address of the contact's office|
|»» Address|string|true|none|Address of the contact's office|
|»» City|string|true|none|City of the contact's office|
|»» State|string|true|none|State/territory of the contact's office|
|»» PostalCode|string|true|none|Postcode of the contact's office|
|»» Country|string|true|none|Country of the contact's office|
|» BillingAddress|object|true|none|The mailing address for the contact's bills|
|»» Address|string|true|none|Address for mailing the contact's bills|
|»» City|string|true|none|City for mailing the contact's bills|
|»» State|string|true|none|State/territory for mailing the contact's bills|
|»» PostalCode|string|true|none|Postcode for mailing the contact's bills|
|»» Country|string|true|none|Country for mailing the contact's bills|
|» Phone1|string|true|none|none|
|» Phone2|string|true|none|none|
|» Fax|string|true|none|none|
|» Mobile|string|true|none|none|
|» Email|string|true|none|none|
|» SecondaryEmail|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentMethod|string|true|none|none|
|» AccountNo|string|true|none|none|
|» PaymentDetails|string|true|none|none|
|» Notes|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» ChequeNo|string|true|none|none|
|» Currency|string|true|none|none|
|» Invoices|[object]|true|none|none|
|»» InvoiceNo|number|false|none|none|
|»» JobNo|string|false|none|Comma separated job IDs.|
|»» Amount|number|false|none|none|
|» AccRecPaymentNo|integer|true|none|none|
|» AccRecContactID|integer|true|none|none|
|» AccRecContactName|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>

## cd82d6f37997b1a7e8da52034fae46ea

<a id="opIdcd82d6f37997b1a7e8da52034fae46ea"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/receivable/payments/{paymentID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/payments/{paymentID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/receivable/payments/{paymentID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/receivable/payments/{paymentID}`

*Retrieve details for a specific receivable payment.*

<h3 id="cd82d6f37997b1a7e8da52034fae46ea-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|paymentID|path|integer|true|A valid payment id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 123,
  "FirstName": "string",
  "LastName": "string",
  "Address": {
    "Address": "123 Example St",
    "City": "Sydney",
    "State": "NSW",
    "PostalCode": "2000",
    "Country": "AUS"
  },
  "BillingAddress": {
    "Address": "123 Example St",
    "City": "Sydney",
    "State": "NSW",
    "PostalCode": "2000",
    "Country": "AUS"
  },
  "Phone1": "+61 3 1234 4321",
  "Phone2": "+61 3 4321 1234",
  "Fax": "+61 3 1234 4321",
  "Mobile": "+61 123 456 789",
  "Email": "sales@simpro.com.au",
  "SecondaryEmail": "secondary.sales@simpro.com.au",
  "DateIssued": "2021-04-22",
  "PaymentMethod": "string",
  "AccountNo": "string",
  "PaymentDetails": "string",
  "Notes": "string",
  "ExchangeRate": 1,
  "ChequeNo": "string",
  "Currency": "AUD",
  "Invoices": [
    {
      "InvoiceNo": 12345,
      "JobNo": "54321",
      "Amount": 99.99
    }
  ],
  "AccRecPaymentNo": 123,
  "AccRecContactID": 123,
  "AccRecContactName": "string",
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="cd82d6f37997b1a7e8da52034fae46ea-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Receivable Payment details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Receivable Payment not found.|None|

<h3 id="cd82d6f37997b1a7e8da52034fae46ea-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» FirstName|string|true|none|none|
|» LastName|string|true|none|none|
|» Address|object|true|none|The physical address of the contact's office|
|»» Address|string|true|none|Address of the contact's office|
|»» City|string|true|none|City of the contact's office|
|»» State|string|true|none|State/territory of the contact's office|
|»» PostalCode|string|true|none|Postcode of the contact's office|
|»» Country|string|true|none|Country of the contact's office|
|» BillingAddress|object|true|none|The mailing address for the contact's bills|
|»» Address|string|true|none|Address for mailing the contact's bills|
|»» City|string|true|none|City for mailing the contact's bills|
|»» State|string|true|none|State/territory for mailing the contact's bills|
|»» PostalCode|string|true|none|Postcode for mailing the contact's bills|
|»» Country|string|true|none|Country for mailing the contact's bills|
|» Phone1|string|true|none|none|
|» Phone2|string|true|none|none|
|» Fax|string|true|none|none|
|» Mobile|string|true|none|none|
|» Email|string|true|none|none|
|» SecondaryEmail|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentMethod|string|true|none|none|
|» AccountNo|string|true|none|none|
|» PaymentDetails|string|true|none|none|
|» Notes|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» ChequeNo|string|true|none|none|
|» Currency|string|true|none|none|
|» Invoices|[object]|true|none|none|
|»» InvoiceNo|number|false|none|none|
|»» JobNo|string|false|none|Comma separated job IDs.|
|»» Amount|number|false|none|none|
|» AccRecPaymentNo|integer|true|none|none|
|» AccRecContactID|integer|true|none|none|
|» AccRecContactName|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

<aside class="success">
This operation does not require authentication
</aside>