# Invoices

In Simpro, an invoice is a list of goods sent or services provided and the sum due for these from your customer. After you have approved, emailed, and received payment for an invoice, you can apply the payment to the invoice in Simpro.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Invoicing.htm">External documentation</a>

## 14a8b9e3a01fe9ef9b647c55f63584ea

<a id="opId14a8b9e3a01fe9ef9b647c55f63584ea"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/`

*List all invoices.*

<h3 id="14a8b9e3a01fe9ef9b647c55f63584ea-parameters">Parameters</h3>

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
    "ID": 10001,
    "Type": "TaxInvoice",
    "Customer": {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    },
    "Jobs": [
      {
        "ID": 12345,
        "Description": "Fault/Request See customer's email.",
        "Total": {
          "ExTax": 1.57,
          "Tax": 1.57,
          "IncTax": 1.57
        }
      }
    ],
    "RecurringInvoice": {
      "ID": 12345,
      "Description": "Fault/Request See customer's email.",
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "Tax": 1.57,
      "ReverseChargeTax": 1.57,
      "AmountApplied": 1.57,
      "BalanceDue": 1.57
    },
    "IsPaid": true
  }
]
```

<h3 id="14a8b9e3a01fe9ef9b647c55f63584ea-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all invoices.|Inline|

<h3 id="14a8b9e3a01fe9ef9b647c55f63584ea-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|An invoice Number|
|» Type|string|true|none|Type of an invoice.|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Jobs|[object]|true|none|List of jobs invoiced. Empty for invoice generated from recurring invoice.|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» RecurringInvoice|object|true|none|Recurring invoice which generated a tax invoice. Empty for invoice generated from jobs.|
|»» ID|integer|true|none|This Recurring Invoice's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an invoice excluding tax and retainage.|
|»» IncTax|number|true|none|Total amount of an invoice including tax.|
|»» Tax|number|true|none|Total Tax amount of an Invoice.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|»» AmountApplied|number|true|none|Total amount applied on an Invoice.|
|»» BalanceDue|number|true|none|Total balance due on an Invoice.|
|» IsPaid|boolean|true|none|Indicates whether an invoice has been fully paid or still unpaid.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|TaxInvoice|
|Type|Deposit|
|Type|ProgressInvoice|
|Type|RequestForClaim|

<aside class="success">
This operation does not require authentication
</aside>

## 4ae796284a1a689da2c02021725e0474

<a id="opId4ae796284a1a689da2c02021725e0474"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/invoices/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "TaxInvoice",
  "Jobs": [
    0
  ],
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNumber": 0,
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "LatePaymentFee": true,
  "CISDeductionRate": 0,
  "AccountingCategory": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Retainage": [
    {
      "JobID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57,
        "Percent": 0
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/',
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

r = requests.post('/api/v1.0/companies/{companyID}/invoices/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/invoices/`

*Create a new invoice.*

> Body parameter

```json
{
  "Type": "TaxInvoice",
  "Jobs": [
    0
  ],
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNumber": 0,
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "LatePaymentFee": true,
  "CISDeductionRate": 0,
  "AccountingCategory": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Retainage": [
    {
      "JobID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57,
        "Percent": 0
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ]
}
```

<h3 id="4ae796284a1a689da2c02021725e0474-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Invoice object|
|» Type|body|string|false|Type of an invoice.|
|» Jobs|body|[integer]|false|Job ids to create invoice.|
|» DateIssued|body|string(date)|false|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|body|object|false|none|
|»» Days|body|integer|false|Number of days after which an invoice is due for payment.|
|»» Type|body|string|false|Whether number of days are from invoice date, or end of month.|
|»» DueDate|body|string(date)|false|Based on the payment terms type and days after an issue date of invoice.|
|» ProgressClaimNumber|body|integer|false|Progress claims are numbered in order of issue. The first claim you raise is named Progress Claim #1, subsequent claims are labelled as #2, #3 etc. If it is the final claim the column IsFinalClaim will return true. Not applicable for consolidated tax invoices.|
|» Stage|body|string|false|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» PerItem|body|boolean|false|Indicates whether billable items are invoiced together as consolidated or invoiced per item. Partially invoice a job using invoice per item to keep the cost centres unlocked and add additional billable items to the job.|
|» OrderNo|body|string|false|none|
|» LatePaymentFee|body|boolean|false|A default late payment fees can be setup in Financial Defaults for all customers or directly on individual customers.|
|» CISDeductionRate|body|number¦null|false|UK/Ireland Only: Contractor Industry Scheme (CIS) deduction rates for contractor and customer invoices.|
|» AccountingCategory|body|integer|false|ID of a accounting category|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|Description of an invoice. This column supports HTML formatting.|
|» Notes|body|string|false|Footnote of an invoice. This column supports HTML formatting.|
|» Retainage|body|[object]|false|Retainage amounts per job where enabled.|
|»» JobID|body|number|false|ID of a job.|
|»» ExTax|body|number|false|Retainage amount excluding tax.|
|»» IncTax|body|number|false|Retainage amount including tax.|
|» CostCenters|body|[object]|false|none|
|»» ID|body|integer|false|Cost center ID of a job section.|
|»» Claim|body|object|false|none|
|»»» ExTax|body|number|false|Claim invoice amount from cost center total excluding tax. N/A for consolidated tax invoices.|
|»»» IncTax|body|number|false|Claim invoice amount from cost center total including tax. N/A for consolidated tax invoices.|
|»»» Percent|body|number|false|Claim percentage of cost center total. N/A for consolidated tax invoices.|
|»» Items|body|[object]|false|none|
|»»» ID|body|integer|false|Item ID of a billable item of the invoice's cost center.|
|»»» Quantity|body|number|false|Quantity of an item in an invoice cost center.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|TaxInvoice|
|» Type|Deposit|
|» Type|ProgressInvoice|
|» Type|RequestForClaim|
|»» Type|Invoice|
|»» Type|Month|
|» Stage|Approved|
|» Stage|Pending|

> Example responses

> 201 Response

```json
{
  "ID": 10001,
  "InternalID": 12345,
  "Type": "TaxInvoice",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "Jobs": [
    {
      "ID": 12345,
      "Description": "Fault/Request See customer's email.",
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "RecurringInvoice": {
    "ID": 12345,
    "Description": "Fault/Request See customer's email.",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  },
  "DateIssued": "2021-04-22",
  "Period": {
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22"
  },
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNumber": 0,
  "IsFinalClaim": true,
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "LatePaymentFee": true,
  "CISDeductionRate": 0,
  "ExchangeRate": 1,
  "AccountingCategory": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Tax": 1.57,
    "ReverseChargeTax": 1.57,
    "AmountApplied": 1.57,
    "BalanceDue": 1.57
  },
  "IsRetainage": true,
  "Retainage": [
    {
      "JobID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "RetainageRebate": "string",
  "IsPaid": true,
  "DatePaid": "2021-04-22",
  "Currency": "USD",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ],
        "IsMandatory": true
      },
      "Value": "string"
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Name": "string",
      "JobID": 0,
      "RecurringInvoiceID": 0,
      "SectionID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "Total": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57,
        "Percent": 1.57
      },
      "Items": [
        {
          "ID": 0,
          "Item": {
            "ID": 0,
            "PartNo": "string",
            "Name": "string",
            "Type": "string"
          },
          "Quantity": {
            "Total": 1.57,
            "Remaining": 1.57,
            "Claimed": 1.57
          },
          "UnitPrice": {
            "ExTax": 1.57,
            "IncTax": 1.57
          },
          "Total": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        }
      ]
    }
  ]
}
```

<h3 id="4ae796284a1a689da2c02021725e0474-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Invoice created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="4ae796284a1a689da2c02021725e0474-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|An invoice Number|
|» InternalID|string|true|none|Internal invoice number used in Simpro URL|
|» Type|string|true|none|Type of an invoice.|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Jobs|[object]|true|none|List of jobs invoiced. Empty for invoice generated from recurring invoice.|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» RecurringInvoice|object|true|none|Recurring invoice which generated a tax invoice. Empty for invoice generated from jobs.|
|»» ID|integer|true|none|This Recurring Invoice's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» DateIssued|string(date)|true|none|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Period|object|true|none|none|
|»» StartDate|string(date)|true|none|Date of a first job schedule. Empty when there is no schedule.|
|»» EndDate|string(date)|true|none|Date of a last job schedule. Empty when there is no schedule.|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|object|true|none|none|
|»» Days|integer|true|none|Number of days after which an invoice is due for payment.|
|»» Type|string|true|none|Whether number of days are from invoice date, or end of month.|
|»» DueDate|string(date)|true|none|Based on the payment terms type and days after an issue date of invoice.|
|» ProgressClaimNumber|integer|true|none|Progress claims are numbered in order of issue. The first claim you raise is named Progress Claim #1, subsequent claims are labelled as #2, #3 etc. If it is the final claim the column IsFinalClaim will return true. Not applicable for consolidated tax invoices.|
|» IsFinalClaim|boolean|true|none|Return true if invoice is a progress claim and is marked as Final Claim.|
|» Stage|string|true|none|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» PerItem|boolean|true|none|Indicates whether billable items are invoiced together as consolidated or invoiced per item. Partially invoice a job using invoice per item to keep the cost centres unlocked and add additional billable items to the job.|
|» OrderNo|string|true|none|none|
|» LatePaymentFee|boolean|true|none|A default late payment fees can be setup in Financial Defaults for all customers or directly on individual customers.|
|» CISDeductionRate|number¦null|false|none|UK/Ireland Only: Contractor Industry Scheme (CIS) deduction rates for contractor and customer invoices.|
|» ExchangeRate|number|true|none|When default currency and invoice currency is different.|
|» AccountingCategory|object¦null|false|none|Available when category tracking is turned on in defaults financial.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» Description|string|true|none|Description of an invoice. This column supports HTML formatting.|
|» Notes|string|true|none|Footnote of an invoice. This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an invoice excluding tax and retainage.|
|»» IncTax|number|true|none|Total amount of an invoice including tax.|
|»» Tax|number|true|none|Total Tax amount of an Invoice.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|»» AmountApplied|number|true|none|Total amount applied on an Invoice.|
|»» BalanceDue|number|true|none|Total balance due on an Invoice.|
|» IsRetainage|boolean|true|none|Indicates whether an invoice is a retainage claim.|
|» Retainage|[object]|true|none|Retainage amounts per job where enabled.|
|»» JobID|number|false|none|ID of a job.|
|»» ExTax|number|false|none|Retainage amount excluding tax.|
|»» IncTax|number|false|none|Retainage amount including tax.|
|» RetainageRebate|string|true|none|Retainage Rebate amounts per job where enabled.|
|» IsPaid|boolean|true|none|Indicates whether an invoice has been fully paid or still unpaid.|
|» DatePaid|string(date)|true|none|Payment date when an invoice is fully paid.|
|» Currency|string|true|none|The currency for this invoice. See Setup -> Currencies.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this invoice. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|Cost center ID of a job section.|
|»» Name|string|true|none|Cost center name of job section.|
|»» JobID|integer|true|none|Job ID of cost center.|
|»» RecurringInvoiceID|integer|true|none|Recurring invoice ID of a cost center.|
|»» SectionID|integer|true|none|Section ID of a cost center.|
|»» CostCenter|object|true|none|Cost center account.|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|Total amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total amount of a cost center including tax.|
|»» Claim|object|true|none|none|
|»»» ExTax|number|true|none|Total invoiced amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total invoiced amount of a cost center including tax.|
|»»» Percent|number|true|none|Total invoiced percentage of a cost center.|
|»» Items|[object]|true|none|List of billable catalog, prebuild, one-offs and labour items in a cost center.|
|»»» ID|integer|true|none|Item ID of a billable item of the invoice's cost center.|
|»»» Item|object|true|none|Item could be one of Catalog, Prebuild, OneOff or Labor.|
|»»»» ID|integer|true|none|ID of an item.|
|»»»» PartNo|string|true|none|Part No. of an item.|
|»»»» Name|string|true|none|Name of an item.|
|»»»» Type|string|true|none|Type of an item.|
|»»» Quantity|object|true|none|none|
|»»»» Total|number|true|none|Total item quantity in job cost center.|
|»»»» Remaining|number|true|none|Claim-able remaining item quantity of jo cost center.|
|»»»» Claimed|number|true|none|Claimed/Invoiced item quantity when invoiced per item.|
|»»» UnitPrice|object|true|none|none|
|»»»» ExTax|number|true|none|Unit price of a cost center item excluding tax.|
|»»»» IncTax|number|true|none|Unit price of a cost center item including tax.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) excluding tax.|
|»»»» IncTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) including tax.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|TaxInvoice|
|Type|Deposit|
|Type|ProgressInvoice|
|Type|RequestForClaim|
|Type|Invoice|
|Type|Month|
|Stage|Approved|
|Stage|Pending|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 8d618f449f629452bd3bbea150acd7c8

<a id="opId8d618f449f629452bd3bbea150acd7c8"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}`

*Retrieve details for a specific invoice.*

<h3 id="8d618f449f629452bd3bbea150acd7c8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 10001,
  "InternalID": 12345,
  "Type": "TaxInvoice",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "Jobs": [
    {
      "ID": 12345,
      "Description": "Fault/Request See customer's email.",
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "RecurringInvoice": {
    "ID": 12345,
    "Description": "Fault/Request See customer's email.",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  },
  "DateIssued": "2021-04-22",
  "Period": {
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22"
  },
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNumber": 0,
  "IsFinalClaim": true,
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "LatePaymentFee": true,
  "CISDeductionRate": 0,
  "ExchangeRate": 1,
  "AccountingCategory": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Tax": 1.57,
    "ReverseChargeTax": 1.57,
    "AmountApplied": 1.57,
    "BalanceDue": 1.57
  },
  "IsRetainage": true,
  "Retainage": [
    {
      "JobID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "RetainageRebate": "string",
  "IsPaid": true,
  "DatePaid": "2021-04-22",
  "Currency": "USD",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "CustomFields": [
    {
      "CustomField": {
        "ID": 12345,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ],
        "IsMandatory": true
      },
      "Value": "string"
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Name": "string",
      "JobID": 0,
      "RecurringInvoiceID": 0,
      "SectionID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "Total": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57,
        "Percent": 1.57
      },
      "Items": [
        {
          "ID": 0,
          "Item": {
            "ID": 0,
            "PartNo": "string",
            "Name": "string",
            "Type": "string"
          },
          "Quantity": {
            "Total": 1.57,
            "Remaining": 1.57,
            "Claimed": 1.57
          },
          "UnitPrice": {
            "ExTax": 1.57,
            "IncTax": 1.57
          },
          "Total": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        }
      ]
    }
  ]
}
```

<h3 id="8d618f449f629452bd3bbea150acd7c8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Invoice details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Invoice not found.|None|

<h3 id="8d618f449f629452bd3bbea150acd7c8-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|An invoice Number|
|» InternalID|string|true|none|Internal invoice number used in Simpro URL|
|» Type|string|true|none|Type of an invoice.|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Jobs|[object]|true|none|List of jobs invoiced. Empty for invoice generated from recurring invoice.|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» RecurringInvoice|object|true|none|Recurring invoice which generated a tax invoice. Empty for invoice generated from jobs.|
|»» ID|integer|true|none|This Recurring Invoice's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» DateIssued|string(date)|true|none|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Period|object|true|none|none|
|»» StartDate|string(date)|true|none|Date of a first job schedule. Empty when there is no schedule.|
|»» EndDate|string(date)|true|none|Date of a last job schedule. Empty when there is no schedule.|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|object|true|none|none|
|»» Days|integer|true|none|Number of days after which an invoice is due for payment.|
|»» Type|string|true|none|Whether number of days are from invoice date, or end of month.|
|»» DueDate|string(date)|true|none|Based on the payment terms type and days after an issue date of invoice.|
|» ProgressClaimNumber|integer|true|none|Progress claims are numbered in order of issue. The first claim you raise is named Progress Claim #1, subsequent claims are labelled as #2, #3 etc. If it is the final claim the column IsFinalClaim will return true. Not applicable for consolidated tax invoices.|
|» IsFinalClaim|boolean|true|none|Return true if invoice is a progress claim and is marked as Final Claim.|
|» Stage|string|true|none|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» PerItem|boolean|true|none|Indicates whether billable items are invoiced together as consolidated or invoiced per item. Partially invoice a job using invoice per item to keep the cost centres unlocked and add additional billable items to the job.|
|» OrderNo|string|true|none|none|
|» LatePaymentFee|boolean|true|none|A default late payment fees can be setup in Financial Defaults for all customers or directly on individual customers.|
|» CISDeductionRate|number¦null|false|none|UK/Ireland Only: Contractor Industry Scheme (CIS) deduction rates for contractor and customer invoices.|
|» ExchangeRate|number|true|none|When default currency and invoice currency is different.|
|» AccountingCategory|object¦null|false|none|Available when category tracking is turned on in defaults financial.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» Description|string|true|none|Description of an invoice. This column supports HTML formatting.|
|» Notes|string|true|none|Footnote of an invoice. This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an invoice excluding tax and retainage.|
|»» IncTax|number|true|none|Total amount of an invoice including tax.|
|»» Tax|number|true|none|Total Tax amount of an Invoice.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|»» AmountApplied|number|true|none|Total amount applied on an Invoice.|
|»» BalanceDue|number|true|none|Total balance due on an Invoice.|
|» IsRetainage|boolean|true|none|Indicates whether an invoice is a retainage claim.|
|» Retainage|[object]|true|none|Retainage amounts per job where enabled.|
|»» JobID|number|false|none|ID of a job.|
|»» ExTax|number|false|none|Retainage amount excluding tax.|
|»» IncTax|number|false|none|Retainage amount including tax.|
|» RetainageRebate|string|true|none|Retainage Rebate amounts per job where enabled.|
|» IsPaid|boolean|true|none|Indicates whether an invoice has been fully paid or still unpaid.|
|» DatePaid|string(date)|true|none|Payment date when an invoice is fully paid.|
|» Currency|string|true|none|The currency for this invoice. See Setup -> Currencies.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this invoice. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|Cost center ID of a job section.|
|»» Name|string|true|none|Cost center name of job section.|
|»» JobID|integer|true|none|Job ID of cost center.|
|»» RecurringInvoiceID|integer|true|none|Recurring invoice ID of a cost center.|
|»» SectionID|integer|true|none|Section ID of a cost center.|
|»» CostCenter|object|true|none|Cost center account.|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|Total amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total amount of a cost center including tax.|
|»» Claim|object|true|none|none|
|»»» ExTax|number|true|none|Total invoiced amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total invoiced amount of a cost center including tax.|
|»»» Percent|number|true|none|Total invoiced percentage of a cost center.|
|»» Items|[object]|true|none|List of billable catalog, prebuild, one-offs and labour items in a cost center.|
|»»» ID|integer|true|none|Item ID of a billable item of the invoice's cost center.|
|»»» Item|object|true|none|Item could be one of Catalog, Prebuild, OneOff or Labor.|
|»»»» ID|integer|true|none|ID of an item.|
|»»»» PartNo|string|true|none|Part No. of an item.|
|»»»» Name|string|true|none|Name of an item.|
|»»»» Type|string|true|none|Type of an item.|
|»»» Quantity|object|true|none|none|
|»»»» Total|number|true|none|Total item quantity in job cost center.|
|»»»» Remaining|number|true|none|Claim-able remaining item quantity of jo cost center.|
|»»»» Claimed|number|true|none|Claimed/Invoiced item quantity when invoiced per item.|
|»»» UnitPrice|object|true|none|none|
|»»»» ExTax|number|true|none|Unit price of a cost center item excluding tax.|
|»»»» IncTax|number|true|none|Unit price of a cost center item including tax.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) excluding tax.|
|»»»» IncTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) including tax.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|TaxInvoice|
|Type|Deposit|
|Type|ProgressInvoice|
|Type|RequestForClaim|
|Type|Invoice|
|Type|Month|
|Stage|Approved|
|Stage|Pending|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 7bc19bce7ba1eccae283f8148795d42b

<a id="opId7bc19bce7ba1eccae283f8148795d42b"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/invoices/{invoiceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Type": "TaxInvoice",
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNumber": 0,
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "LatePaymentFee": true,
  "CISDeductionRate": 0,
  "AccountingCategory": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Retainage": [
    {
      "JobID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57,
        "Percent": 0
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/invoices/{invoiceID}`

*Update a invoice.*

> Body parameter

```json
{
  "Type": "TaxInvoice",
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNumber": 0,
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "LatePaymentFee": true,
  "CISDeductionRate": 0,
  "AccountingCategory": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Retainage": [
    {
      "JobID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57,
        "Percent": 0
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ]
}
```

<h3 id="7bc19bce7ba1eccae283f8148795d42b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|body|body|object|true|Invoice object|
|» Type|body|string|false|Type of an invoice.|
|» DateIssued|body|string(date)|false|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|body|object|false|none|
|»» Days|body|integer|false|Number of days after which an invoice is due for payment.|
|»» Type|body|string|false|Whether number of days are from invoice date, or end of month.|
|»» DueDate|body|string(date)|false|Based on the payment terms type and days after an issue date of invoice.|
|» ProgressClaimNumber|body|integer|false|Progress claims are numbered in order of issue. The first claim you raise is named Progress Claim #1, subsequent claims are labelled as #2, #3 etc. If it is the final claim the column IsFinalClaim will return true. Not applicable for consolidated tax invoices.|
|» Stage|body|string|false|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» PerItem|body|boolean|false|Indicates whether billable items are invoiced together as consolidated or invoiced per item. Partially invoice a job using invoice per item to keep the cost centres unlocked and add additional billable items to the job.|
|» OrderNo|body|string|false|none|
|» LatePaymentFee|body|boolean|false|A default late payment fees can be setup in Financial Defaults for all customers or directly on individual customers.|
|» CISDeductionRate|body|number¦null|false|UK/Ireland Only: Contractor Industry Scheme (CIS) deduction rates for contractor and customer invoices.|
|» AccountingCategory|body|integer|false|ID of a accounting category|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|Description of an invoice. This column supports HTML formatting.|
|» Notes|body|string|false|Footnote of an invoice. This column supports HTML formatting.|
|» Retainage|body|[object]|false|Retainage amounts per job where enabled.|
|»» JobID|body|number|false|ID of a job.|
|»» ExTax|body|number|false|Retainage amount excluding tax.|
|»» IncTax|body|number|false|Retainage amount including tax.|
|» CostCenters|body|[object]|false|none|
|»» ID|body|integer|false|Cost center ID of a job section.|
|»» Claim|body|object|false|none|
|»»» ExTax|body|number|false|Claim invoice amount from cost center total excluding tax. N/A for consolidated tax invoices.|
|»»» IncTax|body|number|false|Claim invoice amount from cost center total including tax. N/A for consolidated tax invoices.|
|»»» Percent|body|number|false|Claim percentage of cost center total. N/A for consolidated tax invoices.|
|»» Items|body|[object]|false|none|
|»»» ID|body|integer|false|Item ID of a billable item of the invoice's cost center.|
|»»» Quantity|body|number|false|Quantity of an item in an invoice cost center.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|TaxInvoice|
|» Type|Deposit|
|» Type|ProgressInvoice|
|» Type|RequestForClaim|
|»» Type|Invoice|
|»» Type|Month|
|» Stage|Approved|
|» Stage|Pending|

<h3 id="7bc19bce7ba1eccae283f8148795d42b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Invoice updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## dfc83e56859bd23ed31abbbe6585cde9

<a id="opIddfc83e56859bd23ed31abbbe6585cde9"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/invoices/{invoiceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/invoices/{invoiceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/invoices/{invoiceID}`

*Delete a invoice.*

<h3 id="dfc83e56859bd23ed31abbbe6585cde9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="dfc83e56859bd23ed31abbbe6585cde9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Invoice deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Invoice does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>