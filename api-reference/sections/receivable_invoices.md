# Receivable Invoices

## ce874e60121570f55dd6a6c50620233f

<a id="opIdce874e60121570f55dd6a6c50620233f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/receivable/invoices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/invoices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/receivable/invoices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/receivable/invoices/`

*List all receivable invoices.*

<h3 id="ce874e60121570f55dd6a6c50620233f-parameters">Parameters</h3>

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
    "AccRecInvoiceNo": 123,
    "ContractName": "string",
    "FirstName": "string",
    "LastName": "string",
    "BillingAddress": {
      "Address": "123 Example St",
      "City": "Sydney",
      "State": "NSW",
      "PostalCode": "2000",
      "Country": "AUS"
    },
    "Address": {
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
    "Site": {
      "Name": "string",
      "Address": "123 Example St",
      "City": "Sydney",
      "State": "NSW",
      "Postcode": "2000",
      "Country": "AUS"
    },
    "Salesperson": "John",
    "Currency": "AUD",
    "ExchangeRate": 1,
    "Description": "string",
    "DateIssued": "2021-04-22",
    "DateDue": "2021-04-22",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "Category": "string",
    "JobNo": "string",
    "OrderNo": "string",
    "RequestNo": "string",
    "InvoiceType": "TaxInvoice",
    "Paid": true,
    "DateApproved": "2021-04-22",
    "Voided": true,
    "Amount": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "Applied": 1.57
    },
    "Status": {
      "ID": 12345,
      "Name": "Sales: In-Progress"
    },
    "CostCenters": {
      "Name": "Chart of account name.",
      "CostCentreName": "Cost center name",
      "OriginalCostCentreName": "Original cost center name.",
      "Section": "Name of section.",
      "SectionCostCentreID": 123,
      "Description": "Job No. 123",
      "JobNo": 123,
      "AccountNo": "100-1",
      "TaxCode": "GST",
      "TaxRate": 9.99,
      "Tracking": "Accounting category reference",
      "Amount": {
        "ExTax": 90,
        "IncTax": 100
      },
      "TaxBreakdown": [
        {
          "Tax": 9.9,
          "AmountExTax": 90,
          "AmountIncTax": 100,
          "TaxCode": "GST",
          "TaxRate": 9.99,
          "TaxName": "GST",
          "TaxType": 1
        }
      ]
    },
    "AccRecContactID": 0,
    "AccRecContactName": "string",
    "Type": "credit",
    "DateModified": "2018-05-21T19:53:39+10:00",
    "Exported": true
  }
]
```

<h3 id="ce874e60121570f55dd6a6c50620233f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all receivable invoices.|Inline|

<h3 id="ce874e60121570f55dd6a6c50620233f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AccRecInvoiceNo|integer|true|none|Deprecated: AccRecInvoiceNo field is deprecated, please use ID field|
|» ContractName|string|true|none|none|
|» FirstName|string|true|none|none|
|» LastName|string|true|none|none|
|» BillingAddress|object|true|none|The mailing address for the contact's bills|
|»» Address|string|true|none|Address for mailing the contact's bills|
|»» City|string|true|none|City for mailing the contact's bills|
|»» State|string|true|none|State/territory for mailing the contact's bills|
|»» PostalCode|string|true|none|Postcode for mailing the contact's bills|
|»» Country|string|true|none|Country for mailing the contact's bills|
|» Address|object|true|none|The physical address of the contact's office|
|»» Address|string|true|none|Address of the contact's office|
|»» City|string|true|none|City of the contact's office|
|»» State|string|true|none|State/territory of the contact's office|
|»» PostalCode|string|true|none|Postcode of the contact's office|
|»» Country|string|true|none|Country of the contact's office|
|» Phone1|string|true|none|none|
|» Phone2|string|true|none|none|
|» Fax|string|true|none|none|
|» Mobile|string|true|none|none|
|» Email|string|true|none|none|
|» SecondaryEmail|string|true|none|none|
|» Site|object|true|none|Site details|
|»» Name|string|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» Postcode|string|true|none|none|
|»» Country|string|true|none|none|
|» Salesperson|string|true|none|none|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Description|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateDue|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|» PaymentTerms|object|true|none|Payment terms|
|»» Days|integer|true|none|none|
|»» Type|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» Category|string|true|none|Accounting category reference.|
|» JobNo|string|true|none|none|
|» OrderNo|string|true|none|none|
|» RequestNo|string|true|none|none|
|» InvoiceType|string|true|none|none|
|» Paid|boolean|true|none|none|
|» DateApproved|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Voided|boolean|true|none|none|
|» Amount|object|true|none|Invoice total|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Applied|number|true|none|none|
|» Status|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» CostCenters|object|true|none|none|
|»» Name|string|false|none|none|
|»» CostCentreName|string|false|none|none|
|»» OriginalCostCentreName|string|false|none|none|
|»» Section|string|false|none|none|
|»» SectionCostCentreID|number|false|none|none|
|»» Description|string|false|none|none|
|»» JobNo|number|false|none|none|
|»» AccountNo|string|false|none|none|
|»» TaxCode|string|false|none|none|
|»» TaxRate|number|false|none|none|
|»» Tracking|string|false|none|none|
|»» Amount|object|false|none|none|
|»»» ExTax|number|false|none|none|
|»»» IncTax|number|false|none|none|
|»» TaxBreakdown|[object]|false|none|none|
|»»» Tax|number|false|none|none|
|»»» AmountExTax|number|false|none|none|
|»»» AmountIncTax|number|false|none|none|
|»»» TaxCode|string|false|none|none|
|»»» TaxRate|number|false|none|none|
|»»» TaxName|string|false|none|none|
|»»» TaxType|number|false|none|none|
|» AccRecContactID|integer|true|none|none|
|» AccRecContactName|string|true|none|none|
|» Type|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Exported|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Invoice|
|Type|Month|
|InvoiceType|TaxInvoice|
|InvoiceType|Deposit|
|InvoiceType|ProgressClaim|
|InvoiceType|RequestForClaim|
|Type|credit|
|Type|invoice|

<aside class="success">
This operation does not require authentication
</aside>

## f17115a290c09023885ad917aec2727d

<a id="opIdf17115a290c09023885ad917aec2727d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID}`

*Retrieve details for a specific receivable invoice.*

<h3 id="f17115a290c09023885ad917aec2727d-parameters">Parameters</h3>

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
  "ID": 123,
  "AccRecInvoiceNo": 123,
  "ContractName": "string",
  "FirstName": "string",
  "LastName": "string",
  "BillingAddress": {
    "Address": "123 Example St",
    "City": "Sydney",
    "State": "NSW",
    "PostalCode": "2000",
    "Country": "AUS"
  },
  "Address": {
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
  "Site": {
    "Name": "string",
    "Address": "123 Example St",
    "City": "Sydney",
    "State": "NSW",
    "Postcode": "2000",
    "Country": "AUS"
  },
  "Salesperson": "John",
  "Currency": "AUD",
  "ExchangeRate": 1,
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DateDue": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice"
  },
  "Category": "string",
  "JobNo": "string",
  "OrderNo": "string",
  "RequestNo": "string",
  "InvoiceType": "TaxInvoice",
  "Paid": true,
  "DateApproved": "2021-04-22",
  "Voided": true,
  "Amount": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Applied": 1.57
  },
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
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "CostCenters": {
    "Name": "Chart of account name.",
    "CostCentreName": "Cost center name",
    "OriginalCostCentreName": "Original cost center name.",
    "Section": "Name of section.",
    "SectionCostCentreID": 123,
    "Description": "Job No. 123",
    "JobNo": 123,
    "AccountNo": "100-1",
    "TaxCode": "GST",
    "TaxRate": 9.99,
    "Tracking": "Accounting category reference",
    "Amount": {
      "ExTax": 90,
      "IncTax": 100
    },
    "TaxBreakdown": [
      {
        "Tax": 9.9,
        "AmountExTax": 90,
        "AmountIncTax": 100,
        "TaxCode": "GST",
        "TaxRate": 9.99,
        "TaxName": "GST",
        "TaxType": 1
      }
    ]
  },
  "AccRecContactID": 0,
  "AccRecContactName": "string",
  "Type": "credit",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Exported": true
}
```

<h3 id="f17115a290c09023885ad917aec2727d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Receivable Invoice details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Receivable Invoice not found.|None|

<h3 id="f17115a290c09023885ad917aec2727d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AccRecInvoiceNo|integer|true|none|Deprecated: AccRecInvoiceNo field is deprecated, please use ID field|
|» ContractName|string|true|none|none|
|» FirstName|string|true|none|none|
|» LastName|string|true|none|none|
|» BillingAddress|object|true|none|The mailing address for the contact's bills|
|»» Address|string|true|none|Address for mailing the contact's bills|
|»» City|string|true|none|City for mailing the contact's bills|
|»» State|string|true|none|State/territory for mailing the contact's bills|
|»» PostalCode|string|true|none|Postcode for mailing the contact's bills|
|»» Country|string|true|none|Country for mailing the contact's bills|
|» Address|object|true|none|The physical address of the contact's office|
|»» Address|string|true|none|Address of the contact's office|
|»» City|string|true|none|City of the contact's office|
|»» State|string|true|none|State/territory of the contact's office|
|»» PostalCode|string|true|none|Postcode of the contact's office|
|»» Country|string|true|none|Country of the contact's office|
|» Phone1|string|true|none|none|
|» Phone2|string|true|none|none|
|» Fax|string|true|none|none|
|» Mobile|string|true|none|none|
|» Email|string|true|none|none|
|» SecondaryEmail|string|true|none|none|
|» Site|object|true|none|Site details|
|»» Name|string|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» Postcode|string|true|none|none|
|»» Country|string|true|none|none|
|» Salesperson|string|true|none|none|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Description|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateDue|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|» PaymentTerms|object|true|none|Payment terms|
|»» Days|integer|true|none|none|
|»» Type|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» Category|string|true|none|Accounting category reference.|
|» JobNo|string|true|none|none|
|» OrderNo|string|true|none|none|
|» RequestNo|string|true|none|none|
|» InvoiceType|string|true|none|none|
|» Paid|boolean|true|none|none|
|» DateApproved|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Voided|boolean|true|none|none|
|» Amount|object|true|none|Invoice total|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Applied|number|true|none|none|
|» CustomFields|[object]|true|none|none|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Status|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» CostCenters|object|true|none|none|
|»» Name|string|false|none|none|
|»» CostCentreName|string|false|none|none|
|»» OriginalCostCentreName|string|false|none|none|
|»» Section|string|false|none|none|
|»» SectionCostCentreID|number|false|none|none|
|»» Description|string|false|none|none|
|»» JobNo|number|false|none|none|
|»» AccountNo|string|false|none|none|
|»» TaxCode|string|false|none|none|
|»» TaxRate|number|false|none|none|
|»» Tracking|string|false|none|none|
|»» Amount|object|false|none|none|
|»»» ExTax|number|false|none|none|
|»»» IncTax|number|false|none|none|
|»» TaxBreakdown|[object]|false|none|none|
|»»» Tax|number|false|none|none|
|»»» AmountExTax|number|false|none|none|
|»»» AmountIncTax|number|false|none|none|
|»»» TaxCode|string|false|none|none|
|»»» TaxRate|number|false|none|none|
|»»» TaxName|string|false|none|none|
|»»» TaxType|number|false|none|none|
|» AccRecContactID|integer|true|none|none|
|» AccRecContactName|string|true|none|none|
|» Type|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Exported|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Invoice|
|Type|Month|
|InvoiceType|TaxInvoice|
|InvoiceType|Deposit|
|InvoiceType|ProgressClaim|
|InvoiceType|RequestForClaim|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|
|Type|credit|
|Type|invoice|

<aside class="success">
This operation does not require authentication
</aside>

## 64396e4e30a9dc9133df169d71d305c8

<a id="opId64396e4e30a9dc9133df169d71d305c8"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Exported": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/accounts/receivable/invoices/{invoiceID}`

*Update a receivable invoice.*

> Body parameter

```json
{
  "Exported": true
}
```

<h3 id="64396e4e30a9dc9133df169d71d305c8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|body|body|object|true|Receivable Invoice object|
|» Exported|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="64396e4e30a9dc9133df169d71d305c8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Receivable Invoice updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>