# Payable Invoices

## 3f88d1b98c39c05727161c21375dd423

<a id="opId3f88d1b98c39c05727161c21375dd423"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/payable/invoices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/payable/invoices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/payable/invoices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/payable/invoices/`

*List all payable invoices.*

<h3 id="3f88d1b98c39c05727161c21375dd423-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

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
    "OrderID": 123,
    "OrderNo": 123,
    "Reference": "string",
    "MailAddress": "123 Example St",
    "MailSuburb": "Sydney",
    "MailState": "NSW",
    "MailPostcode": "2000",
    "MailCountry": "AUS",
    "HomeAddress": "123 Example St",
    "HomeSuburb": "Sydney",
    "HomeState": "NSW",
    "HomePostcode": "2000",
    "HomeCountry": "AUS",
    "Phone1": "+61 3 1234 4321",
    "Phone2": "+61 3 4321 1234",
    "Fax": "+61 3 1234 4321",
    "CellPhone": "+61 123 456 789",
    "Email": "sales@simpro.com.au",
    "SecondaryEmail": "secondary.sales@simpro.com.au",
    "PaymentTermID": 0,
    "PaymentTerm": 0,
    "PaymentTermType": "Invoice",
    "PackingSlipNo": "string",
    "Notes": "string",
    "Currency": "AUD",
    "ExchangeRate": 1,
    "DateIssued": "2021-04-22",
    "Category": "string",
    "Exported": true,
    "DateDue": "2021-04-22",
    "CISDate": "2021-04-22",
    "CISAmount": 1.57,
    "CISAccount": "string",
    "CostCenters": {
      "Name": "Project",
      "Description": "Cost center description",
      "JobNo": 12345,
      "AmountExTax": 90,
      "AmountIncTax": 100,
      "Quantity": 5,
      "TaxCode": "GST",
      "TaxRate": 9.99,
      "AccountNo": "100-1",
      "Tracking": "Accounting category reference"
    },
    "FreightAmountExTax": 1.57,
    "FreightAmountIncTax": 1.57,
    "FreightAccount": 0,
    "FreightTaxCode": "string",
    "FreightTaxRate": 1.57,
    "CreditInvoiceID": 123,
    "CreditInvoiceNo": 123,
    "RestockingFeeAmountExTax": 1.57,
    "RestockingFeeAmountIncTax": 1.57,
    "RestockingFeeAccount": 0,
    "RestockingFeeTaxCode": "string",
    "RestockingFeeTaxRate": 1.57,
    "NotesFormatted": "string",
    "LaborAmountExTax": 1.57,
    "MaterialAmountExTax": 1.57,
    "VariancesAmountExTax": 1.57,
    "VariancesAmountIncTax": 1.57,
    "ContractorStaffID": 0,
    "AmountExTax": 1.57,
    "AmountIncTax": 1.57,
    "AccPayReceiptID": "string",
    "AccPayReceiptNo": 0,
    "AccPayInvoiceNo": 0,
    "AccPayContactID": 0,
    "AccPayContactName": "string",
    "Type": "Vendor Receipt",
    "DateModified": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="3f88d1b98c39c05727161c21375dd423-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all payable invoices.|Inline|

<h3 id="3f88d1b98c39c05727161c21375dd423-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» OrderID|integer|true|none|none|
|» OrderNo|integer|true|none|none|
|» Reference|string|true|none|none|
|» MailAddress|string|true|none|none|
|» MailSuburb|string|true|none|none|
|» MailState|string|true|none|none|
|» MailPostcode|string|true|none|none|
|» MailCountry|string|true|none|none|
|» HomeAddress|string|true|none|none|
|» HomeSuburb|string|true|none|none|
|» HomeState|string|true|none|none|
|» HomePostcode|string|true|none|none|
|» HomeCountry|string|true|none|none|
|» Phone1|string|true|none|none|
|» Phone2|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|none|
|» Email|string|true|none|none|
|» SecondaryEmail|string|true|none|none|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|» PaymentTerm|integer|true|none|none|
|» PaymentTermType|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» PackingSlipNo|string|true|none|none|
|» Notes|string|true|none|none|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Category|string|true|none|Accounting category reference.|
|» Exported|boolean|true|none|none|
|» DateDue|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» CISDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» CISAmount|number|true|none|none|
|» CISAccount|string|true|none|none|
|» CostCenters|object|true|none|none|
|»» Name|string|false|none|none|
|»» Description|string|false|none|none|
|»» JobNo|number|false|none|none|
|»» AmountExTax|number|false|none|none|
|»» AmountIncTax|number|false|none|none|
|»» Quantity|number|false|none|none|
|»» TaxCode|string|false|none|none|
|»» TaxRate|number|false|none|none|
|»» AccountNo|string|false|none|none|
|»» Tracking|string|false|none|none|
|» FreightAmountExTax|number|true|none|none|
|» FreightAmountIncTax|number|true|none|none|
|» FreightAccount|integer|true|none|none|
|» FreightTaxCode|string|true|none|none|
|» FreightTaxRate|number|true|none|none|
|» CreditInvoiceID|integer|true|none|none|
|» CreditInvoiceNo|integer|true|none|none|
|» RestockingFeeAmountExTax|number|true|none|none|
|» RestockingFeeAmountIncTax|number|true|none|none|
|» RestockingFeeAccount|integer|true|none|none|
|» RestockingFeeTaxCode|string|true|none|none|
|» RestockingFeeTaxRate|number|true|none|none|
|» NotesFormatted|string|true|none|none|
|» LaborAmountExTax|number|true|none|none|
|» MaterialAmountExTax|number|true|none|none|
|» VariancesAmountExTax|number|true|none|none|
|» VariancesAmountIncTax|number|true|none|none|
|» ContractorStaffID|integer|true|none|none|
|» AmountExTax|number|true|none|none|
|» AmountIncTax|number|true|none|none|
|» AccPayReceiptID|string|true|none|none|
|» AccPayReceiptNo|integer|true|none|none|
|» AccPayInvoiceNo|integer|true|none|none|
|» AccPayContactID|integer|true|none|none|
|» AccPayContactName|string|true|none|none|
|» Type|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|PaymentTermType|Invoice|
|PaymentTermType|Month|
|Type|Vendor Receipt|
|Type|Vendor Credit|
|Type|Contractor Invoice|

<aside class="success">
This operation does not require authentication
</aside>