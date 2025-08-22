# Customer Payments

When customers make payments on invoices you have issued them for jobs, you can apply payments to their invoices in Simpro depending on your security group settings. If you have activated Simpro Payments, you can also apply payments made by credit card over the phone.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Invoice-Payments.htm">External documentation</a>

## f55be63a3d51373a65be6d42432b6d8a

<a id="opIdf55be63a3d51373a65be6d42432b6d8a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customerPayments/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerPayments/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customerPayments/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customerPayments/`

*List all customer payments.*

<h3 id="f55be63a3d51373a65be6d42432b6d8a-parameters">Parameters</h3>

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
    "Payment": {
      "PaymentMethod": {
        "ID": 12345,
        "Name": "string"
      },
      "Status": "Failed",
      "DepositAccount": "string",
      "Date": "2021-04-22",
      "FinanceCharge": 1.57,
      "CheckNo": "string",
      "Details": "string",
      "FinanceFeeBreakdown": [
        "string"
      ]
    }
  }
]
```

<h3 id="f55be63a3d51373a65be6d42432b6d8a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer payments.|Inline|

<h3 id="f55be63a3d51373a65be6d42432b6d8a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Payment|object|true|none|none|
|»» PaymentMethod|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Status|string|true|none|This column is only applicable to US builds.|
|»» DepositAccount|string|true|none|none|
|»» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» FinanceCharge|number|true|none|none|
|»» CheckNo|string|true|none|none|
|»» Details|string|true|none|none|
|»» FinanceFeeBreakdown|[string]|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Status|Failed|
|Status|Pending|
|Status|Complete|

<aside class="success">
This operation does not require authentication
</aside>

## 25dcf024aafb16b47b72d5f4f1ba5c87

<a id="opId25dcf024aafb16b47b72d5f4f1ba5c87"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customerPayments/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Payment": {
    "PaymentMethod": 0,
    "DepositAccount": "string",
    "Date": "2021-04-22",
    "FinanceCharge": 1.57,
    "CheckNo": "string",
    "Details": "string"
  },
  "Notes": "string",
  "Invoices": [
    {
      "Invoice": 0,
      "Amount": "1.57"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerPayments/',
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
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/api/v1.0/companies/{companyID}/customerPayments/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customerPayments/`

*Create a new customer payment.*

> Body parameter

```json
{
  "Payment": {
    "PaymentMethod": 0,
    "DepositAccount": "string",
    "Date": "2021-04-22",
    "FinanceCharge": 1.57,
    "CheckNo": "string",
    "Details": "string"
  },
  "Notes": "string",
  "Invoices": [
    {
      "Invoice": 0,
      "Amount": "1.57"
    }
  ]
}
```

<h3 id="25dcf024aafb16b47b72d5f4f1ba5c87-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Customer payment object|
|» Payment|body|object|true|none|
|»» PaymentMethod|body|integer|true|ID of a payment method|
|»» DepositAccount|body|string|true|none|
|»» Date|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» FinanceCharge|body|number|false|none|
|»» CheckNo|body|string|false|none|
|»» Details|body|string|false|none|
|» Notes|body|string|false|This column supports HTML formatting.|
|» Invoices|body|[object]|true|none|
|»» Invoice|body|integer|true|ID of a customer invoice|
|»» Amount|body|number|true|Amount to be paid to the customer invoice.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Payment": {
    "PaymentMethod": {
      "ID": 12345,
      "Name": "string"
    },
    "Status": "Failed",
    "DepositAccount": "string",
    "Date": "2021-04-22",
    "FinanceCharge": 1.57,
    "CheckNo": "string",
    "Details": "string",
    "FinanceFeeBreakdown": [
      "string"
    ]
  },
  "Notes": "string",
  "Invoices": [
    {
      "Invoice": {
        "ID": 0,
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
        "Currency": "USD"
      },
      "Amount": 1.57
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="25dcf024aafb16b47b72d5f4f1ba5c87-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer payment created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="25dcf024aafb16b47b72d5f4f1ba5c87-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Payment|object|true|none|none|
|»» PaymentMethod|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Status|string|true|none|This column is only applicable to US builds.|
|»» DepositAccount|string|true|none|none|
|»» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» FinanceCharge|number|true|none|none|
|»» CheckNo|string|true|none|none|
|»» Details|string|true|none|none|
|»» FinanceFeeBreakdown|[string]|true|none|none|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Invoices|[object]|true|none|none|
|»» Invoice|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Customer|object|true|none|none|
|»»»» ID|integer|true|none|This customer's ID|
|»»»» CompanyName|string|true|none|Company name (Company customers)|
|»»»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»»»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|»»» Jobs|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Site|object|true|none|none|
|»»»»» ID|integer|true|none|ID of the site|
|»»»»» Name|string|true|none|none|
|»»»» Comment|string|true|none|none|
|»»»» Description|string|true|none|deprecated|
|»»»» Total|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»» Currency|object|true|none|The currency for this invoice. See Setup -> Currencies.|
|»»»» ID|string|true|none|none|
|»»»» Name|string|true|none|none|
|»» Amount|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Status|Failed|
|Status|Pending|
|Status|Complete|

<aside class="success">
This operation does not require authentication
</aside>

## 87058d78ae39e56f120e0116333ead43

<a id="opId87058d78ae39e56f120e0116333ead43"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}`

*Retrieve details for a specific customer payment.*

<h3 id="87058d78ae39e56f120e0116333ead43-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerPaymentID|path|integer|true|A valid customer payment id|
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
  "Payment": {
    "PaymentMethod": {
      "ID": 12345,
      "Name": "string"
    },
    "Status": "Failed",
    "DepositAccount": "string",
    "Date": "2021-04-22",
    "FinanceCharge": 1.57,
    "CheckNo": "string",
    "Details": "string",
    "FinanceFeeBreakdown": [
      "string"
    ]
  },
  "Notes": "string",
  "Invoices": [
    {
      "Invoice": {
        "ID": 0,
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
        "Currency": "USD"
      },
      "Amount": 1.57
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="87058d78ae39e56f120e0116333ead43-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer payment details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer payment not found.|None|

<h3 id="87058d78ae39e56f120e0116333ead43-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Payment|object|true|none|none|
|»» PaymentMethod|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Status|string|true|none|This column is only applicable to US builds.|
|»» DepositAccount|string|true|none|none|
|»» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» FinanceCharge|number|true|none|none|
|»» CheckNo|string|true|none|none|
|»» Details|string|true|none|none|
|»» FinanceFeeBreakdown|[string]|true|none|none|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Invoices|[object]|true|none|none|
|»» Invoice|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Customer|object|true|none|none|
|»»»» ID|integer|true|none|This customer's ID|
|»»»» CompanyName|string|true|none|Company name (Company customers)|
|»»»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»»»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|»»» Jobs|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Site|object|true|none|none|
|»»»»» ID|integer|true|none|ID of the site|
|»»»»» Name|string|true|none|none|
|»»»» Comment|string|true|none|none|
|»»»» Description|string|true|none|deprecated|
|»»»» Total|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»» Currency|object|true|none|The currency for this invoice. See Setup -> Currencies.|
|»»»» ID|string|true|none|none|
|»»»» Name|string|true|none|none|
|»» Amount|number|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Status|Failed|
|Status|Pending|
|Status|Complete|

<aside class="success">
This operation does not require authentication
</aside>

## 303f3791eb97a2d56e3260fe3172134b

<a id="opId303f3791eb97a2d56e3260fe3172134b"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Payment": {
    "PaymentMethod": 0,
    "DepositAccount": "string",
    "Date": "2021-04-22",
    "FinanceCharge": 1.57,
    "CheckNo": "string",
    "Details": "string"
  },
  "Notes": "string",
  "Invoices": [
    {
      "Invoice": 0,
      "Amount": "1.57"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}`

*Update a customer payment.*

> Body parameter

```json
{
  "Payment": {
    "PaymentMethod": 0,
    "DepositAccount": "string",
    "Date": "2021-04-22",
    "FinanceCharge": 1.57,
    "CheckNo": "string",
    "Details": "string"
  },
  "Notes": "string",
  "Invoices": [
    {
      "Invoice": 0,
      "Amount": "1.57"
    }
  ]
}
```

<h3 id="303f3791eb97a2d56e3260fe3172134b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerPaymentID|path|integer|true|A valid customer payment id|
|body|body|object|true|Customer payment object|
|» Payment|body|object|false|none|
|»» PaymentMethod|body|integer|false|ID of a payment method|
|»» DepositAccount|body|string|false|none|
|»» Date|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» FinanceCharge|body|number|false|none|
|»» CheckNo|body|string|false|none|
|»» Details|body|string|false|none|
|» Notes|body|string|false|This column supports HTML formatting.|
|» Invoices|body|[object]|false|none|
|»» Invoice|body|integer|true|ID of a customer invoice|
|»» Amount|body|number|true|Amount to be paid to the customer invoice.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="303f3791eb97a2d56e3260fe3172134b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer payment updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 10f1db8da805438f87a72ef62652a250

<a id="opId10f1db8da805438f87a72ef62652a250"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customerPayments/{customerPaymentID}`

*Delete a customer payment.*

<h3 id="10f1db8da805438f87a72ef62652a250-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerPaymentID|path|integer|true|A valid customer payment id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="10f1db8da805438f87a72ef62652a250-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer payment deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer payment does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>