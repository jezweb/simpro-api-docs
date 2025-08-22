# Credit Notes

## eb06ee3cbad06670495ff8030caeecad

<a id="opIdeb06ee3cbad06670495ff8030caeecad"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/creditNotes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/creditNotes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/creditNotes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/creditNotes/`

*List all credit notes.*

<h3 id="eb06ee3cbad06670495ff8030caeecad-parameters">Parameters</h3>

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
      "FamilyName": "Smith",
      "Phone": "string",
      "Address": {
        "Address": "123 Example St",
        "City": "Sydney",
        "State": "NSW",
        "PostalCode": "2000",
        "Country": "AUS"
      }
    },
    "InvoiceNo": 0,
    "Jobs": [
      {
        "ID": 12345,
        "Site": {
          "ID": 12345,
          "Name": "string"
        },
        "Salesperson": {
          "ID": 123,
          "Name": "John Smith",
          "Type": "employee",
          "TypeId": 0
        },
        "ConvertedFromQuote": {
          "ID": 0,
          "Description": "string",
          "Total": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        },
        "Total": {
          "ExTax": 1.57,
          "Tax": 1.57,
          "IncTax": 1.57
        }
      }
    ],
    "Stage": "Approved",
    "Total": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57,
      "ReverseChargeTax": 1.57
    }
  }
]
```

<h3 id="eb06ee3cbad06670495ff8030caeecad-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all credit notes.|Inline|

<h3 id="eb06ee3cbad06670495ff8030caeecad-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Credit note ID|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|»» Phone|string|true|none|Telephone number|
|»» Address|object|true|none|The physical address of the customer's office|
|»»» Address|string|true|none|Address of the customer's office|
|»»» City|string|true|none|City of the customer's office|
|»»» State|string|true|none|State/territory of the customer's office|
|»»» PostalCode|string|true|none|Postcode of the customer's office|
|»»» Country|string|true|none|Country of the customer's office|
|» InvoiceNo|integer|true|none|none|
|» Jobs|[object]|true|none|List of jobs invoiced. Empty for invoice generated from recurring invoice.|
|»» ID|integer|true|none|This job's ID|
|»» Site|object|true|none|none|
|»»» ID|integer|true|none|ID of the site|
|»»» Name|string|true|none|none|
|»» Salesperson|object¦null|true|none|none|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» ConvertedFromQuote|object|true|none|Deprecated: Please use `ConvertedFrom` field.|
|»»» ID|integer|true|none|none|
|»»» Description|string|true|none|This column supports HTML formatting.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» Stage|string|true|none|Credit Note in simPRO can be set to have two approval stages: Approved,Pending.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an credit note excluding tax.|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|Total amount of an credit note including tax.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Stage|Approved|
|Stage|Pending|

<aside class="success">
This operation does not require authentication
</aside>

## 0fa96ec8502f8f65e8234d423a792561

<a id="opId0fa96ec8502f8f65e8234d423a792561"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/creditNotes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Credit",
  "InvoiceNo": 0,
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ],
  "DateIssued": "2021-04-22",
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "IncomeAccount": 0,
  "Category": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/creditNotes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/creditNotes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/creditNotes/`

*Create a new credit note.*

> Body parameter

```json
{
  "Type": "Credit",
  "InvoiceNo": 0,
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ],
  "DateIssued": "2021-04-22",
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "IncomeAccount": 0,
  "Category": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string"
}
```

<h3 id="0fa96ec8502f8f65e8234d423a792561-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Credit Note object|
|» Type|body|string|true|Type of an credit note.|
|» InvoiceNo|body|integer|true|none|
|» CostCenters|body|[object]|true|none|
|»» ID|body|integer|false|Cost center ID of a job section.|
|»» Claim|body|object|false|none|
|»»» ExTax|body|number|false|Claim invoice amount from cost center total excluding tax. N/A for consolidated tax invoices.|
|»»» IncTax|body|number|false|Claim invoice amount from cost center total including tax. N/A for consolidated tax invoices.|
|»» Items|body|[object]|false|none|
|»»» ID|body|integer|false|Item ID of a billable item of the invoice's cost center.|
|»»» Quantity|body|number|false|Quantity of an item in an invoice cost center.|
|» DateIssued|body|string(date)|true|Issue date of an credit note, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Stage|body|string|false|Credit Note in simPRO can be set to have two approval stages: Approved,Pending.|
|» PerItem|body|boolean|false|Indicates that billable items are credited per item.|
|» OrderNo|body|string|false|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|
|» Category|body|integer|false|ID of a accounting category|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|Comment of a credit note. This column supports HTML formatting.|
|» Notes|body|string|false|Footnote of a credit note. This column supports HTML formatting.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Credit|
|» Type|Void|
|» Type|NegativeJob|
|» Stage|Approved|
|» Stage|Pending|

> Example responses

> 201 Response

```json
{
  "ID": 10001,
  "Type": "Credit",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith",
    "Phone": "string",
    "Address": {
      "Address": "123 Example St",
      "City": "Sydney",
      "State": "NSW",
      "PostalCode": "2000",
      "Country": "AUS"
    }
  },
  "InvoiceNo": 0,
  "Jobs": [
    {
      "ID": 12345,
      "Site": {
        "ID": 12345,
        "Name": "string"
      },
      "Salesperson": {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      },
      "ConvertedFromQuote": {
        "ID": 0,
        "Description": "string",
        "Total": {
          "ExTax": 1.57,
          "Tax": 1.57,
          "IncTax": 1.57
        }
      },
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Name": "string",
      "JobID": 0,
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
        "IncTax": 1.57
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
  ],
  "DateIssued": "2021-04-22",
  "Period": {
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22"
  },
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "IncomeAccount": {
    "ID": 12345,
    "Name": "string"
  },
  "Category": {
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
    "Tax": 1.57,
    "IncTax": 1.57,
    "ReverseChargeTax": 1.57
  },
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DateCreated": "2018-05-21T19:53:39+10:00",
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
  ]
}
```

<h3 id="0fa96ec8502f8f65e8234d423a792561-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Credit Note created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="0fa96ec8502f8f65e8234d423a792561-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Credit note ID|
|» Type|string|true|none|Type of an credit note.|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|»» Phone|string|true|none|Telephone number|
|»» Address|object|true|none|The physical address of the customer's office|
|»»» Address|string|true|none|Address of the customer's office|
|»»» City|string|true|none|City of the customer's office|
|»»» State|string|true|none|State/territory of the customer's office|
|»»» PostalCode|string|true|none|Postcode of the customer's office|
|»»» Country|string|true|none|Country of the customer's office|
|» InvoiceNo|integer|true|none|none|
|» Jobs|[object]|true|none|List of jobs invoiced. Empty for invoice generated from recurring invoice.|
|»» ID|integer|true|none|This job's ID|
|»» Site|object|true|none|none|
|»»» ID|integer|true|none|ID of the site|
|»»» Name|string|true|none|none|
|»» Salesperson|object¦null|true|none|none|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» ConvertedFromQuote|object|true|none|Deprecated: Please use `ConvertedFrom` field.|
|»»» ID|integer|true|none|none|
|»»» Description|string|true|none|This column supports HTML formatting.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|Cost center ID of a job section.|
|»» Name|string|true|none|Cost center name of job section.|
|»» JobID|integer|true|none|Job ID of cost center.|
|»» CostCenter|object|true|none|Cost center account.|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|Total amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total amount of a cost center including tax.|
|»» Claim|object|true|none|none|
|»»» ExTax|number|true|none|Total invoiced amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total invoiced amount of a cost center including tax.|
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
|» DateIssued|string(date)|true|none|Issue date of an credit note, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Period|object|true|none|none|
|»» StartDate|string(date)|true|none|Date of a first job schedule. Empty when there is no schedule.|
|»» EndDate|string(date)|true|none|Date of a last job schedule. Empty when there is no schedule.|
|» Stage|string|true|none|Credit Note in simPRO can be set to have two approval stages: Approved,Pending.|
|» PerItem|boolean|true|none|Indicates that billable items are credited per item.|
|» OrderNo|string|true|none|none|
|» IncomeAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Status|object|true|none|Set the current status of this credit note in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» Description|string|true|none|Comment of a credit note. This column supports HTML formatting.|
|» Notes|string|true|none|Footnote of a credit note. This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an credit note excluding tax.|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|Total amount of an credit note including tax.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this credit note. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Credit|
|Type|Void|
|Type|NegativeJob|
|Type|employee|
|Type|contractor|
|Type|plant|
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

## ba495a7104e43a81b77a6f9da533897d

<a id="opIdba495a7104e43a81b77a6f9da533897d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/creditNotes/{creditNoteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}`

*Retrieve details for a specific credit note.*

<h3 id="ba495a7104e43a81b77a6f9da533897d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|creditNoteID|path|integer|true|A valid credit note id|
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
  "Type": "Credit",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith",
    "Phone": "string",
    "Address": {
      "Address": "123 Example St",
      "City": "Sydney",
      "State": "NSW",
      "PostalCode": "2000",
      "Country": "AUS"
    }
  },
  "InvoiceNo": 0,
  "Jobs": [
    {
      "ID": 12345,
      "Site": {
        "ID": 12345,
        "Name": "string"
      },
      "Salesperson": {
        "ID": 123,
        "Name": "John Smith",
        "Type": "employee",
        "TypeId": 0
      },
      "ConvertedFromQuote": {
        "ID": 0,
        "Description": "string",
        "Total": {
          "ExTax": 1.57,
          "Tax": 1.57,
          "IncTax": 1.57
        }
      },
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57
      }
    }
  ],
  "CostCenters": [
    {
      "ID": 0,
      "Name": "string",
      "JobID": 0,
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
        "IncTax": 1.57
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
  ],
  "DateIssued": "2021-04-22",
  "Period": {
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22"
  },
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "IncomeAccount": {
    "ID": 12345,
    "Name": "string"
  },
  "Category": {
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
    "Tax": 1.57,
    "IncTax": 1.57,
    "ReverseChargeTax": 1.57
  },
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DateCreated": "2018-05-21T19:53:39+10:00",
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
  ]
}
```

<h3 id="ba495a7104e43a81b77a6f9da533897d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Credit Note details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Credit Note not found.|None|

<h3 id="ba495a7104e43a81b77a6f9da533897d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Credit note ID|
|» Type|string|true|none|Type of an credit note.|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|»» Phone|string|true|none|Telephone number|
|»» Address|object|true|none|The physical address of the customer's office|
|»»» Address|string|true|none|Address of the customer's office|
|»»» City|string|true|none|City of the customer's office|
|»»» State|string|true|none|State/territory of the customer's office|
|»»» PostalCode|string|true|none|Postcode of the customer's office|
|»»» Country|string|true|none|Country of the customer's office|
|» InvoiceNo|integer|true|none|none|
|» Jobs|[object]|true|none|List of jobs invoiced. Empty for invoice generated from recurring invoice.|
|»» ID|integer|true|none|This job's ID|
|»» Site|object|true|none|none|
|»»» ID|integer|true|none|ID of the site|
|»»» Name|string|true|none|none|
|»» Salesperson|object¦null|true|none|none|
|»»» ID|integer|false|none|Employee ID of the staff member|
|»»» Name|string|false|none|Name of the staff member|
|»»» Type|string|false|none|Staff type|
|»»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|»» ConvertedFromQuote|object|true|none|Deprecated: Please use `ConvertedFrom` field.|
|»»» ID|integer|true|none|none|
|»»» Description|string|true|none|This column supports HTML formatting.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|Cost center ID of a job section.|
|»» Name|string|true|none|Cost center name of job section.|
|»» JobID|integer|true|none|Job ID of cost center.|
|»» CostCenter|object|true|none|Cost center account.|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|Total amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total amount of a cost center including tax.|
|»» Claim|object|true|none|none|
|»»» ExTax|number|true|none|Total invoiced amount of a cost center excluding tax.|
|»»» IncTax|number|true|none|Total invoiced amount of a cost center including tax.|
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
|» DateIssued|string(date)|true|none|Issue date of an credit note, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Period|object|true|none|none|
|»» StartDate|string(date)|true|none|Date of a first job schedule. Empty when there is no schedule.|
|»» EndDate|string(date)|true|none|Date of a last job schedule. Empty when there is no schedule.|
|» Stage|string|true|none|Credit Note in simPRO can be set to have two approval stages: Approved,Pending.|
|» PerItem|boolean|true|none|Indicates that billable items are credited per item.|
|» OrderNo|string|true|none|none|
|» IncomeAccount|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Status|object|true|none|Set the current status of this credit note in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» Description|string|true|none|Comment of a credit note. This column supports HTML formatting.|
|» Notes|string|true|none|Footnote of a credit note. This column supports HTML formatting.|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of an credit note excluding tax.|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|Total amount of an credit note including tax.|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this credit note. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Credit|
|Type|Void|
|Type|NegativeJob|
|Type|employee|
|Type|contractor|
|Type|plant|
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

## e18708de07e460a395c6ac4c89c65dfc

<a id="opIde18708de07e460a395c6ac4c89c65dfc"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/creditNotes/{creditNoteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ],
  "DateIssued": "2021-04-22",
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "IncomeAccount": 0,
  "Category": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}`

*Update a credit note.*

> Body parameter

```json
{
  "CostCenters": [
    {
      "ID": 0,
      "Claim": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Items": [
        {
          "ID": 0,
          "Quantity": 0
        }
      ]
    }
  ],
  "DateIssued": "2021-04-22",
  "Stage": "Approved",
  "PerItem": true,
  "OrderNo": "string",
  "IncomeAccount": 0,
  "Category": 0,
  "Status": 0,
  "AutoAdjustStatus": true,
  "Description": "string",
  "Notes": "string"
}
```

<h3 id="e18708de07e460a395c6ac4c89c65dfc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|creditNoteID|path|integer|true|A valid credit note id|
|body|body|object|true|Credit Note object|
|» CostCenters|body|[object]|false|none|
|»» ID|body|integer|false|Cost center ID of a job section.|
|»» Claim|body|object|false|none|
|»»» ExTax|body|number|false|Claim invoice amount from cost center total excluding tax. N/A for consolidated tax invoices.|
|»»» IncTax|body|number|false|Claim invoice amount from cost center total including tax. N/A for consolidated tax invoices.|
|»» Items|body|[object]|false|none|
|»»» ID|body|integer|false|Item ID of a billable item of the invoice's cost center.|
|»»» Quantity|body|number|false|Quantity of an item in an invoice cost center.|
|» DateIssued|body|string(date)|false|Issue date of an credit note, defaults to the current date. Date in YYYY-MM-DD format eg. 2019-09-18|
|» Stage|body|string|false|Credit Note in simPRO can be set to have two approval stages: Approved,Pending.|
|» PerItem|body|boolean|false|Indicates that billable items are credited per item.|
|» OrderNo|body|string|false|none|
|» IncomeAccount|body|integer|false|ID of a chart of account|
|» Category|body|integer|false|ID of a accounting category|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|Comment of a credit note. This column supports HTML formatting.|
|» Notes|body|string|false|Footnote of a credit note. This column supports HTML formatting.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Approved|
|» Stage|Pending|

<h3 id="e18708de07e460a395c6ac4c89c65dfc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Credit Note updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 56e2d0c1b7f32048ea07e18a9d64f52e

<a id="opId56e2d0c1b7f32048ea07e18a9d64f52e"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/creditNotes/{creditNoteID}`

*Delete a credit note.*

<h3 id="56e2d0c1b7f32048ea07e18a9d64f52e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|creditNoteID|path|integer|true|A valid credit note id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="56e2d0c1b7f32048ea07e18a9d64f52e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Credit Note deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Credit Note does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>