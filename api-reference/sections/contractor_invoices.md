# Contractor Invoices

When the work is complete and the contractor has sent you their invoice or agreed to have you create an RCTI, you can record the invoice in Simpro to put actual costs against jobs and send the invoice to your accounting package to apply payment. When the invoice has been paid in your accounting package, you can then mark it as paid in Simpro.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Contractor-Invoices.htm">External documentation</a>

## fa082a2fa1cba8b9429c3d7274579fad

<a id="opIdfa082a2fa1cba8b9429c3d7274579fad"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorInvoices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorInvoices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorInvoices/`

*List all contractor invoices.*

<h3 id="fa082a2fa1cba8b9429c3d7274579fad-parameters">Parameters</h3>

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
    "ContractorJobs": [
      0
    ],
    "InvoiceNo": "string"
  }
]
```

<h3 id="fa082a2fa1cba8b9429c3d7274579fad-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all contractor invoices.|Inline|

<h3 id="fa082a2fa1cba8b9429c3d7274579fad-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ContractorJobs|[integer]|true|none|none|
|» InvoiceNo|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## fdcc71b69bf992fd79caa23738899f5a

<a id="opIdfdcc71b69bf992fd79caa23738899f5a"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/contractorInvoices/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "ContractorJobs": [
    0
  ],
  "InvoiceNo": "string",
  "DateIssued": "2021-04-22",
  "DatePaid": "2021-04-22",
  "Category": 0,
  "Notes": "string",
  "CostCenters": [
    {
      "ContractorJob": 123,
      "CostCenter": 0,
      "Material": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Labour": {
        "ExTax": 9,
        "IncTax": 10
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Complete": true,
      "TaxCode": 0
    }
  ],
  "Retentions": [
    {
      "ContractorJob": 123,
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "Variances": [
    {
      "Contractor": 0,
      "CostCenter": 0,
      "DateIssued": "2021-04-22",
      "ApprovedBy": 0,
      "Description": "string",
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "CISDeduction": 10,
  "RCTDeduction": 10
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/',
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

r = requests.post('/api/v1.0/companies/{companyID}/contractorInvoices/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/contractorInvoices/`

*Create a new contractor invoice.*

> Body parameter

```json
{
  "ContractorJobs": [
    0
  ],
  "InvoiceNo": "string",
  "DateIssued": "2021-04-22",
  "DatePaid": "2021-04-22",
  "Category": 0,
  "Notes": "string",
  "CostCenters": [
    {
      "ContractorJob": 123,
      "CostCenter": 0,
      "Material": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Labour": {
        "ExTax": 9,
        "IncTax": 10
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Complete": true,
      "TaxCode": 0
    }
  ],
  "Retentions": [
    {
      "ContractorJob": 123,
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "Variances": [
    {
      "Contractor": 0,
      "CostCenter": 0,
      "DateIssued": "2021-04-22",
      "ApprovedBy": 0,
      "Description": "string",
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "CISDeduction": 10,
  "RCTDeduction": 10
}
```

<h3 id="fdcc71b69bf992fd79caa23738899f5a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Contractor invoice object|
|» ContractorJobs|body|[integer]|true|Contractor job ids to create contractor invoice.|
|» InvoiceNo|body|string|false|none|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DatePaid|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Category|body|integer|false|ID of a accounting category|
|» Notes|body|string|false|This column supports HTML formatting.|
|» CostCenters|body|[object]|false|none|
|»» ContractorJob|body|integer|false|ID of a valid contractor job.|
|»» CostCenter|body|integer|false|ID of a cost center|
|»» Material|body|object|false|none|
|»»» ExTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»» Labour|body|object|false|none|
|»»» ExTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»» LineTotal|body|object|false|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|
|»» Complete|body|boolean|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|
|» Retentions|body|[object]|false|none|
|»» ContractorJob|body|integer|false|ID of a valid contractor job.|
|»» LineTotal|body|object|false|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|
|» Variances|body|[object]|false|none|
|»» Contractor|body|integer|true|ID of a contractor|
|»» CostCenter|body|integer|true|ID of a cost center|
|»» DateIssued|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ApprovedBy|body|integer|true|ID of a staff|
|»» Description|body|string|false|none|
|»» LineTotal|body|object|true|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|
|» CISDeduction|body|number|false|This column information is only applicable to UK builds.|
|» RCTDeduction|body|number|false|This column information is only applicable to Ireland builds.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "ContractorJobs": [
    0
  ],
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "Address": {
      "Address": "string",
      "City": "string",
      "State": "string",
      "PostalCode": "string",
      "Country": "string"
    },
    "PrimaryContact": {
      "Email": "string",
      "SecondaryEmail": "string",
      "WorkPhone": "string",
      "Extension": "string",
      "CellPhone": "string",
      "Fax": "string",
      "PreferredNotificationMethod": "EmailAndSMS"
    },
    "ContactName": "string",
    "Banking": {
      "AccountName": "string",
      "RoutingNo": "string",
      "AccountNo": "string",
      "PaymentTermID": 0,
      "PaymentTerms": {
        "Days": 0,
        "Type": "Invoice"
      }
    }
  },
  "InvoiceNo": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DatePaid": "2021-04-22",
  "Currency": "USD",
  "ExchangeRate": 1.57,
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "Notes": "string",
  "CostCenters": [
    {
      "ContractorJob": 123,
      "CostCenter": {
        "ID": 12345,
        "Name": "string",
        "ExpenseAccountNo": "string"
      },
      "Description": "string",
      "JobNo": 12345,
      "Material": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Labour": {
        "ExTax": 9,
        "IncTax": 10
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Total": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Invoiced": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Complete": true,
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Rate": 10
      },
      "BusinessGroup": {
        "ID": 12345,
        "Name": "string"
      }
    }
  ],
  "Retentions": [
    {
      "ContractorJob": 123,
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Rate": 10
      }
    }
  ],
  "Variances": [
    {
      "ID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Rate": 10
      },
      "BusinessGroup": {
        "ID": 12345,
        "Name": "string"
      }
    }
  ],
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
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
  "DateModified": "2018-05-21T19:53:39+10:00",
  "CISDeduction": 10,
  "RCTDeduction": 10
}
```

<h3 id="fdcc71b69bf992fd79caa23738899f5a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contractor invoice created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="fdcc71b69bf992fd79caa23738899f5a-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ContractorJobs|[integer]|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» Address|object|true|none|none|
|»»» Address|string|true|none|none|
|»»» City|string|true|none|none|
|»»» State|string|true|none|none|
|»»» PostalCode|string|true|none|none|
|»»» Country|string|true|none|none|
|»» PrimaryContact|object|true|none|none|
|»»» Email|string|true|none|none|
|»»» SecondaryEmail|string|true|none|none|
|»»» WorkPhone|string|true|none|none|
|»»» Extension|string|true|none|none|
|»»» CellPhone|string|true|none|none|
|»»» Fax|string|true|none|none|
|»»» PreferredNotificationMethod|string¦null|false|none|none|
|»» ContactName|string|true|none|none|
|»» Banking|object|true|none|none|
|»»» AccountName|string|true|none|none|
|»»» RoutingNo|string|true|none|none|
|»»» AccountNo|string|true|none|none|
|»»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the contractor payment term|
|»»» PaymentTerms|object|true|none|none|
|»»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» InvoiceNo|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DatePaid|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Notes|string|true|none|This column supports HTML formatting.|
|» CostCenters|[object]|true|none|none|
|»» ContractorJob|integer|true|none|ID of a valid contractor job.|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» ExpenseAccountNo|string|true|none|none|
|»» Description|string|true|none|none|
|»» JobNo|number|true|none|none|
|»» Material|object|true|none|none|
|»»» ExTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»» Labour|object|true|none|none|
|»»» ExTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»» LineTotal|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Invoiced|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Complete|boolean|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|»» BusinessGroup|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Retentions|[object]|true|none|none|
|»» ContractorJob|integer|true|none|ID of a valid contractor job.|
|»» LineTotal|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» Variances|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» LineTotal|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|»» BusinessGroup|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this contractor invoice. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CISDeduction|number|true|none|This column information is only applicable to UK builds.|
|» RCTDeduction|number|true|none|This column information is only applicable to Ireland builds.|

#### Enumerated Values

|Property|Value|
|---|---|
|PreferredNotificationMethod|EmailAndSMS|
|PreferredNotificationMethod|Email|
|PreferredNotificationMethod|SMS|
|Type|Invoice|
|Type|Month|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 693bc32bcca05e67612af8365c4544ee

<a id="opId693bc32bcca05e67612af8365c4544ee"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}`

*Retrieve details for a specific contractor invoice.*

<h3 id="693bc32bcca05e67612af8365c4544ee-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
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
  "ContractorJobs": [
    0
  ],
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "Address": {
      "Address": "string",
      "City": "string",
      "State": "string",
      "PostalCode": "string",
      "Country": "string"
    },
    "PrimaryContact": {
      "Email": "string",
      "SecondaryEmail": "string",
      "WorkPhone": "string",
      "Extension": "string",
      "CellPhone": "string",
      "Fax": "string",
      "PreferredNotificationMethod": "EmailAndSMS"
    },
    "ContactName": "string",
    "Banking": {
      "AccountName": "string",
      "RoutingNo": "string",
      "AccountNo": "string",
      "PaymentTermID": 0,
      "PaymentTerms": {
        "Days": 0,
        "Type": "Invoice"
      }
    }
  },
  "InvoiceNo": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "DatePaid": "2021-04-22",
  "Currency": "USD",
  "ExchangeRate": 1.57,
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "Notes": "string",
  "CostCenters": [
    {
      "ContractorJob": 123,
      "CostCenter": {
        "ID": 12345,
        "Name": "string",
        "ExpenseAccountNo": "string"
      },
      "Description": "string",
      "JobNo": 12345,
      "Material": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Labour": {
        "ExTax": 9,
        "IncTax": 10
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Total": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Invoiced": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Complete": true,
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Rate": 10
      },
      "BusinessGroup": {
        "ID": 12345,
        "Name": "string"
      }
    }
  ],
  "Retentions": [
    {
      "ContractorJob": 123,
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Rate": 10
      }
    }
  ],
  "Variances": [
    {
      "ID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "TaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Rate": 10
      },
      "BusinessGroup": {
        "ID": 12345,
        "Name": "string"
      }
    }
  ],
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
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
  "DateModified": "2018-05-21T19:53:39+10:00",
  "CISDeduction": 10,
  "RCTDeduction": 10
}
```

<h3 id="693bc32bcca05e67612af8365c4544ee-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contractor invoice details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor invoice not found.|None|

<h3 id="693bc32bcca05e67612af8365c4544ee-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ContractorJobs|[integer]|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» Address|object|true|none|none|
|»»» Address|string|true|none|none|
|»»» City|string|true|none|none|
|»»» State|string|true|none|none|
|»»» PostalCode|string|true|none|none|
|»»» Country|string|true|none|none|
|»» PrimaryContact|object|true|none|none|
|»»» Email|string|true|none|none|
|»»» SecondaryEmail|string|true|none|none|
|»»» WorkPhone|string|true|none|none|
|»»» Extension|string|true|none|none|
|»»» CellPhone|string|true|none|none|
|»»» Fax|string|true|none|none|
|»»» PreferredNotificationMethod|string¦null|false|none|none|
|»» ContactName|string|true|none|none|
|»» Banking|object|true|none|none|
|»»» AccountName|string|true|none|none|
|»»» RoutingNo|string|true|none|none|
|»»» AccountNo|string|true|none|none|
|»»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the contractor payment term|
|»»» PaymentTerms|object|true|none|none|
|»»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» InvoiceNo|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DatePaid|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Notes|string|true|none|This column supports HTML formatting.|
|» CostCenters|[object]|true|none|none|
|»» ContractorJob|integer|true|none|ID of a valid contractor job.|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» ExpenseAccountNo|string|true|none|none|
|»» Description|string|true|none|none|
|»» JobNo|number|true|none|none|
|»» Material|object|true|none|none|
|»»» ExTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»» Labour|object|true|none|none|
|»»» ExTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|number|true|none|This column information is only applicable to UK and Ireland builds.|
|»» LineTotal|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Invoiced|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» Complete|boolean|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|»» BusinessGroup|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Retentions|[object]|true|none|none|
|»» ContractorJob|integer|true|none|ID of a valid contractor job.|
|»» LineTotal|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|» Variances|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» LineTotal|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Rate|number|true|none|Tax rate|
|»» BusinessGroup|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this contractor invoice. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CISDeduction|number|true|none|This column information is only applicable to UK builds.|
|» RCTDeduction|number|true|none|This column information is only applicable to Ireland builds.|

#### Enumerated Values

|Property|Value|
|---|---|
|PreferredNotificationMethod|EmailAndSMS|
|PreferredNotificationMethod|Email|
|PreferredNotificationMethod|SMS|
|Type|Invoice|
|Type|Month|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## d4089e655be2f2c1f1ee77051f51917b

<a id="opIdd4089e655be2f2c1f1ee77051f51917b"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "InvoiceNo": "string",
  "DateIssued": "2021-04-22",
  "DatePaid": "2021-04-22",
  "Category": 0,
  "Notes": "string",
  "CostCenters": [
    {
      "ContractorJob": 123,
      "CostCenter": 0,
      "Material": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Labour": {
        "ExTax": 9,
        "IncTax": 10
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Complete": true,
      "TaxCode": 0
    }
  ],
  "Retentions": [
    {
      "ContractorJob": 123,
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "Variances": [
    {
      "Contractor": 0,
      "CostCenter": 0,
      "DateIssued": "2021-04-22",
      "ApprovedBy": 0,
      "Description": "string",
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "CISDeduction": 10,
  "RCTDeduction": 10
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}`

*Update a contractor invoice.*

> Body parameter

```json
{
  "InvoiceNo": "string",
  "DateIssued": "2021-04-22",
  "DatePaid": "2021-04-22",
  "Category": 0,
  "Notes": "string",
  "CostCenters": [
    {
      "ContractorJob": 123,
      "CostCenter": 0,
      "Material": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Labour": {
        "ExTax": 9,
        "IncTax": 10
      },
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      },
      "Complete": true,
      "TaxCode": 0
    }
  ],
  "Retentions": [
    {
      "ContractorJob": 123,
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "Variances": [
    {
      "Contractor": 0,
      "CostCenter": 0,
      "DateIssued": "2021-04-22",
      "ApprovedBy": 0,
      "Description": "string",
      "LineTotal": {
        "ExTax": 9,
        "IncTax": 10
      }
    }
  ],
  "CISDeduction": 10,
  "RCTDeduction": 10
}
```

<h3 id="d4089e655be2f2c1f1ee77051f51917b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|
|body|body|object|true|Contractor invoice object|
|» InvoiceNo|body|string|false|none|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DatePaid|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Category|body|integer|false|ID of a accounting category|
|» Notes|body|string|false|This column supports HTML formatting.|
|» CostCenters|body|[object]|false|none|
|»» ContractorJob|body|integer|false|ID of a valid contractor job.|
|»» CostCenter|body|integer|false|ID of a cost center|
|»» Material|body|object|false|none|
|»»» ExTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»» Labour|body|object|false|none|
|»»» ExTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»»» IncTax|body|number|false|This column information is only applicable to UK and Ireland builds.|
|»» LineTotal|body|object|false|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|
|»» Complete|body|boolean|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|
|» Retentions|body|[object]|false|none|
|»» ContractorJob|body|integer|false|ID of a valid contractor job.|
|»» LineTotal|body|object|false|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|
|» Variances|body|[object]|false|none|
|»» Contractor|body|integer|true|ID of a contractor|
|»» CostCenter|body|integer|true|ID of a cost center|
|»» DateIssued|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ApprovedBy|body|integer|true|ID of a staff|
|»» Description|body|string|false|none|
|»» LineTotal|body|object|true|none|
|»»» ExTax|body|number|false|none|
|»»» IncTax|body|number|false|none|
|» CISDeduction|body|number|false|This column information is only applicable to UK builds.|
|» RCTDeduction|body|number|false|This column information is only applicable to Ireland builds.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="d4089e655be2f2c1f1ee77051f51917b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor invoice updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 6adf5e373219131581b21848440d4b05

<a id="opId6adf5e373219131581b21848440d4b05"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/contractorInvoices/{contractorInvoiceID}`

*Delete a contractor invoice.*

<h3 id="6adf5e373219131581b21848440d4b05-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorInvoiceID|path|integer|true|A valid contractor invoice id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="6adf5e373219131581b21848440d4b05-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor invoice deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor invoice does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>