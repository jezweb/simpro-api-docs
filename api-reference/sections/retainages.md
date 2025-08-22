# Retainages

Retainage is the percentage of payment held by the customer to ensure the job is completed to specific standards and to safeguard against defects in workmanship.

Retainage settings are usually defined at the beginning of a project to ensure amounts are calculated correctly for each progress claim

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Retention-Claim.htm">External documentation</a>

## 07a0dbc10fa61fbfd40eb49b9da1ce34

<a id="opId07a0dbc10fa61fbfd40eb49b9da1ce34"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/retainages/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/retainages/',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/retainages/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/retainages/`

*List all retainages.*

<h3 id="07a0dbc10fa61fbfd40eb49b9da1ce34-parameters">Parameters</h3>

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
    "Customer": {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    },
    "IsPaid": true,
    "Job": {
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
    }
  }
]
```

<h3 id="07a0dbc10fa61fbfd40eb49b9da1ce34-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all retainages.|Inline|

<h3 id="07a0dbc10fa61fbfd40eb49b9da1ce34-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|An invoice Number|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» IsPaid|boolean|true|none|Indicates whether an invoice has been fully paid or still unpaid.|
|» Job|object|true|none|Retainage claim job.|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an invoice excluding tax.|
|»» IncTax|number|true|none|Total amount of an invoice including tax.|
|»» Tax|number|true|none|Total Tax amount of an Invoice.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|»» AmountApplied|number|true|none|Total amount applied on an Invoice.|
|»» BalanceDue|number|true|none|Total balance due on an Invoice.|

<aside class="success">
This operation does not require authentication
</aside>

## 35b57f91d8c618f70e1d24ba9956d158

<a id="opId35b57f91d8c618f70e1d24ba9956d158"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/invoices/retainages/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Approved",
  "OrderNo": "string",
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Job": 0,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/retainages/',
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

r = requests.post('/api/v1.0/companies/{companyID}/invoices/retainages/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/invoices/retainages/`

*Create a new retainage.*

> Body parameter

```json
{
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Approved",
  "OrderNo": "string",
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Job": 0,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="35b57f91d8c618f70e1d24ba9956d158-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Retainage object|
|» DateIssued|body|string(date)|false|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|body|object|false|none|
|»» Days|body|integer|false|Number of days after which an invoice is due for payment.|
|»» Type|body|string|false|Whether number of days are from invoice date, or end of month.|
|»» DueDate|body|string(date)|false|Based on the payment terms type and days after an issue date of invoice.|
|» Stage|body|string|false|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» OrderNo|body|string|false|none|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|Description of an invoice. This column supports HTML formatting.|
|» Notes|body|string|false|Footnote of an invoice. This column supports HTML formatting.|
|» Job|body|integer|true|ID of a job|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|Total amount of an invoice excluding tax.|
|»» IncTax|body|number|false|Total amount of an invoice including tax.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
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
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
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
  "IsFinalClaim": true,
  "Stage": "Approved",
  "OrderNo": "string",
  "ExchangeRate": 1,
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
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
  "Job": {
    "ID": 12345,
    "Description": "Fault/Request See customer's email.",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  },
  "RetainagesHeld": [
    {
      "ProgressClaimNumber": 0,
      "InvoiceID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Tax": 1.57,
    "ReverseChargeTax": 1.57,
    "AmountApplied": 1.57,
    "BalanceDue": 1.57
  }
}
```

<h3 id="35b57f91d8c618f70e1d24ba9956d158-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Retainage created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="35b57f91d8c618f70e1d24ba9956d158-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|An invoice Number|
|» InternalID|string|true|none|Internal invoice number used in Simpro URL|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» DateIssued|string(date)|true|none|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Period|object|true|none|none|
|»» StartDate|string(date)|true|none|Date of a first job schedule. Empty when there is no schedule.|
|»» EndDate|string(date)|true|none|Date of a last job schedule. Empty when there is no schedule.|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|object|true|none|none|
|»» Days|integer|true|none|Number of days after which an invoice is due for payment.|
|»» Type|string|true|none|Whether number of days are from invoice date, or end of month.|
|»» DueDate|string(date)|true|none|Based on the payment terms type and days after an issue date of invoice.|
|» IsFinalClaim|boolean|true|none|Return true if invoice is a progress claim and is marked as Final Claim.|
|» Stage|string|true|none|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» OrderNo|string|true|none|none|
|» ExchangeRate|number|true|none|When default currency and invoice currency is different.|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» Description|string|true|none|Description of an invoice. This column supports HTML formatting.|
|» Notes|string|true|none|Footnote of an invoice. This column supports HTML formatting.|
|» RetainageRebate|string|true|none|Retainage Rebate amounts per job where enabled.|
|» IsPaid|boolean|true|none|Indicates whether an invoice has been fully paid or still unpaid.|
|» DatePaid|string(date)|true|none|Payment date when an invoice is fully paid.|
|» Currency|string|true|none|The currency for this invoice. See Setup -> Currencies.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this retainage. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Job|object|true|none|Retainage claim job.|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» RetainagesHeld|[object]|true|none|Retainage amounts held per invoice.|
|»» ProgressClaimNumber|number|false|none|Claim number|
|»» InvoiceID|number|false|none|ID of an invoice.|
|»» ExTax|number|false|none|Retainage amount excluding tax.|
|»» IncTax|number|false|none|Retainage amount including tax.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an invoice excluding tax.|
|»» IncTax|number|true|none|Total amount of an invoice including tax.|
|»» Tax|number|true|none|Total Tax amount of an Invoice.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|»» AmountApplied|number|true|none|Total amount applied on an Invoice.|
|»» BalanceDue|number|true|none|Total balance due on an Invoice.|

#### Enumerated Values

|Property|Value|
|---|---|
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

## 9806df17c349c46940313db9587e04ed

<a id="opId9806df17c349c46940313db9587e04ed"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/retainages/{retainageID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}`

*Retrieve details for a specific retainage.*

<h3 id="9806df17c349c46940313db9587e04ed-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|retainageID|path|integer|true|A valid retainage id|
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
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
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
  "IsFinalClaim": true,
  "Stage": "Approved",
  "OrderNo": "string",
  "ExchangeRate": 1,
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
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
  "Job": {
    "ID": 12345,
    "Description": "Fault/Request See customer's email.",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    }
  },
  "RetainagesHeld": [
    {
      "ProgressClaimNumber": 0,
      "InvoiceID": 0,
      "ExTax": 0,
      "IncTax": 0
    }
  ],
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Tax": 1.57,
    "ReverseChargeTax": 1.57,
    "AmountApplied": 1.57,
    "BalanceDue": 1.57
  }
}
```

<h3 id="9806df17c349c46940313db9587e04ed-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retainage details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Retainage not found.|None|

<h3 id="9806df17c349c46940313db9587e04ed-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|An invoice Number|
|» InternalID|string|true|none|Internal invoice number used in Simpro URL|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» DateIssued|string(date)|true|none|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Period|object|true|none|none|
|»» StartDate|string(date)|true|none|Date of a first job schedule. Empty when there is no schedule.|
|»» EndDate|string(date)|true|none|Date of a last job schedule. Empty when there is no schedule.|
|» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|object|true|none|none|
|»» Days|integer|true|none|Number of days after which an invoice is due for payment.|
|»» Type|string|true|none|Whether number of days are from invoice date, or end of month.|
|»» DueDate|string(date)|true|none|Based on the payment terms type and days after an issue date of invoice.|
|» IsFinalClaim|boolean|true|none|Return true if invoice is a progress claim and is marked as Final Claim.|
|» Stage|string|true|none|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» OrderNo|string|true|none|none|
|» ExchangeRate|number|true|none|When default currency and invoice currency is different.|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» Description|string|true|none|Description of an invoice. This column supports HTML formatting.|
|» Notes|string|true|none|Footnote of an invoice. This column supports HTML formatting.|
|» RetainageRebate|string|true|none|Retainage Rebate amounts per job where enabled.|
|» IsPaid|boolean|true|none|Indicates whether an invoice has been fully paid or still unpaid.|
|» DatePaid|string(date)|true|none|Payment date when an invoice is fully paid.|
|» Currency|string|true|none|The currency for this invoice. See Setup -> Currencies.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this retainage. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Job|object|true|none|Retainage claim job.|
|»» ID|integer|true|none|This job's ID|
|»» Description|string|true|none|This column supports HTML formatting.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» RetainagesHeld|[object]|true|none|Retainage amounts held per invoice.|
|»» ProgressClaimNumber|number|false|none|Claim number|
|»» InvoiceID|number|false|none|ID of an invoice.|
|»» ExTax|number|false|none|Retainage amount excluding tax.|
|»» IncTax|number|false|none|Retainage amount including tax.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an invoice excluding tax.|
|»» IncTax|number|true|none|Total amount of an invoice including tax.|
|»» Tax|number|true|none|Total Tax amount of an Invoice.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|»» AmountApplied|number|true|none|Total amount applied on an Invoice.|
|»» BalanceDue|number|true|none|Total balance due on an Invoice.|

#### Enumerated Values

|Property|Value|
|---|---|
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

## 46ba8dfcadd51617ccc32330a150252f

<a id="opId46ba8dfcadd51617ccc32330a150252f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/invoices/retainages/{retainageID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Approved",
  "OrderNo": "string",
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}`

*Update a retainage.*

> Body parameter

```json
{
  "DateIssued": "2021-04-22",
  "PaymentTermID": 0,
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Approved",
  "OrderNo": "string",
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string",
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="46ba8dfcadd51617ccc32330a150252f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|retainageID|path|integer|true|A valid retainage id|
|body|body|object|true|Retainage object|
|» DateIssued|body|string(date)|false|Issue date of an invoice, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the invoice payment term|
|» PaymentTerms|body|object|false|none|
|»» Days|body|integer|false|Number of days after which an invoice is due for payment.|
|»» Type|body|string|false|Whether number of days are from invoice date, or end of month.|
|»» DueDate|body|string(date)|false|Based on the payment terms type and days after an issue date of invoice.|
|» Stage|body|string|false|Many businesses require an invoice to be approved internally before it is sent to customers, to ensure quality and accuracy of billing. To assist with this process, invoices in simPRO can be set to have two approval stages: Pending and Approved.|
|» OrderNo|body|string|false|none|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|Description of an invoice. This column supports HTML formatting.|
|» Notes|body|string|false|Footnote of an invoice. This column supports HTML formatting.|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|Total amount of an invoice excluding tax.|
|»» IncTax|body|number|false|Total amount of an invoice including tax.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» Type|Invoice|
|»» Type|Month|
|» Stage|Approved|
|» Stage|Pending|

<h3 id="46ba8dfcadd51617ccc32330a150252f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Retainage updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 7be7e5e50f37e8bf39e9901af6a8b559

<a id="opId7be7e5e50f37e8bf39e9901af6a8b559"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/invoices/retainages/{retainageID}`

*Delete a retainage.*

<h3 id="7be7e5e50f37e8bf39e9901af6a8b559-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|retainageID|path|integer|true|A valid retainage id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="7be7e5e50f37e8bf39e9901af6a8b559-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Retainage deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Retainage does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>