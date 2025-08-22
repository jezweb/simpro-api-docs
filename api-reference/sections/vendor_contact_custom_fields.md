# Vendor Contact Custom Fields

## e43e28100f8ba5eeaf3585a59d1b149c

<a id="opIde43e28100f8ba5eeaf3585a59d1b149c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/`

*List all vendor contact custom fields.*

<h3 id="e43e28100f8ba5eeaf3585a59d1b149c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|contactID|path|integer|true|A valid contact id|
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
```

<h3 id="e43e28100f8ba5eeaf3585a59d1b149c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor contact custom fields.|Inline|

<h3 id="e43e28100f8ba5eeaf3585a59d1b149c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» CustomField|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 615cba8f5b1920c3ac67e085671e06dc

<a id="opId615cba8f5b1920c3ac67e085671e06dc"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID}`

*Retrieve details for a specific vendor contact custom field.*

<h3 id="615cba8f5b1920c3ac67e085671e06dc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|contactID|path|integer|true|A valid contact id|
|customFieldID|path|integer|true|A valid custom field id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
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
```

<h3 id="615cba8f5b1920c3ac67e085671e06dc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor contact custom field details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor contact custom field not found.|None|

<h3 id="615cba8f5b1920c3ac67e085671e06dc-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» CustomField|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Value|string¦null|false|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 3d762018d47857dc2016023de91ae4fa

<a id="opId3d762018d47857dc2016023de91ae4fa"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Value": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendors/{vendorID}/contacts/{contactID}/customFields/{customFieldID}`

*Update a vendor contact custom field.*

> Body parameter

```json
{
  "Value": "string"
}
```

<h3 id="3d762018d47857dc2016023de91ae4fa-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorID|path|integer|true|A valid vendor id|
|contactID|path|integer|true|A valid contact id|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Vendor contact custom field object|
|» Value|body|string¦null|false|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="3d762018d47857dc2016023de91ae4fa-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor contact custom field updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_Accounts">Accounts</h2>
<!-- backwards compatibility -->
<a id="schemaaccounts"></a>
<a id="schema_Accounts"></a>
<a id="tocSaccounts"></a>
<a id="tocsaccounts"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_ActivitySchedules">ActivitySchedules</h2>
<!-- backwards compatibility -->
<a id="schemaactivityschedules"></a>
<a id="schema_ActivitySchedules"></a>
<a id="tocSactivityschedules"></a>
<a id="tocsactivityschedules"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Assets">Assets</h2>
<!-- backwards compatibility -->
<a id="schemaassets"></a>
<a id="schema_Assets"></a>
<a id="tocSassets"></a>
<a id="tocsassets"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Catalogs">Catalogs</h2>
<!-- backwards compatibility -->
<a id="schemacatalogs"></a>
<a id="schema_Catalogs"></a>
<a id="tocScatalogs"></a>
<a id="tocscatalogs"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Common">Common</h2>
<!-- backwards compatibility -->
<a id="schemacommon"></a>
<a id="schema_Common"></a>
<a id="tocScommon"></a>
<a id="tocscommon"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Companies">Companies</h2>
<!-- backwards compatibility -->
<a id="schemacompanies"></a>
<a id="schema_Companies"></a>
<a id="tocScompanies"></a>
<a id="tocscompanies"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Contacts">Contacts</h2>
<!-- backwards compatibility -->
<a id="schemacontacts"></a>
<a id="schema_Contacts"></a>
<a id="tocScontacts"></a>
<a id="tocscontacts"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_ContractorInvoices">ContractorInvoices</h2>
<!-- backwards compatibility -->
<a id="schemacontractorinvoices"></a>
<a id="schema_ContractorInvoices"></a>
<a id="tocScontractorinvoices"></a>
<a id="tocscontractorinvoices"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_ContractorJobs">ContractorJobs</h2>
<!-- backwards compatibility -->
<a id="schemacontractorjobs"></a>
<a id="schema_ContractorJobs"></a>
<a id="tocScontractorjobs"></a>
<a id="tocscontractorjobs"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_ContractorVariances">ContractorVariances</h2>
<!-- backwards compatibility -->
<a id="schemacontractorvariances"></a>
<a id="schema_ContractorVariances"></a>
<a id="tocScontractorvariances"></a>
<a id="tocscontractorvariances"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Contractors">Contractors</h2>
<!-- backwards compatibility -->
<a id="schemacontractors"></a>
<a id="schema_Contractors"></a>
<a id="tocScontractors"></a>
<a id="tocscontractors"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CostCenters">CostCenters</h2>
<!-- backwards compatibility -->
<a id="schemacostcenters"></a>
<a id="schema_CostCenters"></a>
<a id="tocScostcenters"></a>
<a id="tocscostcenters"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CreditNotes">CreditNotes</h2>
<!-- backwards compatibility -->
<a id="schemacreditnotes"></a>
<a id="schema_CreditNotes"></a>
<a id="tocScreditnotes"></a>
<a id="tocscreditnotes"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CurrentUser">CurrentUser</h2>
<!-- backwards compatibility -->
<a id="schemacurrentuser"></a>
<a id="schema_CurrentUser"></a>
<a id="tocScurrentuser"></a>
<a id="tocscurrentuser"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CustomerAssets">CustomerAssets</h2>
<!-- backwards compatibility -->
<a id="schemacustomerassets"></a>
<a id="schema_CustomerAssets"></a>
<a id="tocScustomerassets"></a>
<a id="tocscustomerassets"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CustomerContracts">CustomerContracts</h2>
<!-- backwards compatibility -->
<a id="schemacustomercontracts"></a>
<a id="schema_CustomerContracts"></a>
<a id="tocScustomercontracts"></a>
<a id="tocscustomercontracts"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CustomerInvoices">CustomerInvoices</h2>
<!-- backwards compatibility -->
<a id="schemacustomerinvoices"></a>
<a id="schema_CustomerInvoices"></a>
<a id="tocScustomerinvoices"></a>
<a id="tocscustomerinvoices"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_CustomerPayments">CustomerPayments</h2>
<!-- backwards compatibility -->
<a id="schemacustomerpayments"></a>
<a id="schema_CustomerPayments"></a>
<a id="tocScustomerpayments"></a>
<a id="tocscustomerpayments"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Customers">Customers</h2>
<!-- backwards compatibility -->
<a id="schemacustomers"></a>
<a id="schema_Customers"></a>
<a id="tocScustomers"></a>
<a id="tocscustomers"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_DataFeed">DataFeed</h2>
<!-- backwards compatibility -->
<a id="schemadatafeed"></a>
<a id="schema_DataFeed"></a>
<a id="tocSdatafeed"></a>
<a id="tocsdatafeed"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Employees">Employees</h2>
<!-- backwards compatibility -->
<a id="schemaemployees"></a>
<a id="schema_Employees"></a>
<a id="tocSemployees"></a>
<a id="tocsemployees"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Info">Info</h2>
<!-- backwards compatibility -->
<a id="schemainfo"></a>
<a id="schema_Info"></a>
<a id="tocSinfo"></a>
<a id="tocsinfo"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Inventories">Inventories</h2>
<!-- backwards compatibility -->
<a id="schemainventories"></a>
<a id="schema_Inventories"></a>
<a id="tocSinventories"></a>
<a id="tocsinventories"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_InventoryJournals">InventoryJournals</h2>
<!-- backwards compatibility -->
<a id="schemainventoryjournals"></a>
<a id="schema_InventoryJournals"></a>
<a id="tocSinventoryjournals"></a>
<a id="tocsinventoryjournals"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_InvoiceJobs">InvoiceJobs</h2>
<!-- backwards compatibility -->
<a id="schemainvoicejobs"></a>
<a id="schema_InvoiceJobs"></a>
<a id="tocSinvoicejobs"></a>
<a id="tocsinvoicejobs"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Invoices">Invoices</h2>
<!-- backwards compatibility -->
<a id="schemainvoices"></a>
<a id="schema_Invoices"></a>
<a id="tocSinvoices"></a>
<a id="tocsinvoices"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Jobs">Jobs</h2>
<!-- backwards compatibility -->
<a id="schemajobs"></a>
<a id="schema_Jobs"></a>
<a id="tocSjobs"></a>
<a id="tocsjobs"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Leads">Leads</h2>
<!-- backwards compatibility -->
<a id="schemaleads"></a>
<a id="schema_Leads"></a>
<a id="tocSleads"></a>
<a id="tocsleads"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Logs">Logs</h2>
<!-- backwards compatibility -->
<a id="schemalogs"></a>
<a id="schema_Logs"></a>
<a id="tocSlogs"></a>
<a id="tocslogs"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Notes">Notes</h2>
<!-- backwards compatibility -->
<a id="schemanotes"></a>
<a id="schema_Notes"></a>
<a id="tocSnotes"></a>
<a id="tocsnotes"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_PlantTypes">PlantTypes</h2>
<!-- backwards compatibility -->
<a id="schemaplanttypes"></a>
<a id="schema_PlantTypes"></a>
<a id="tocSplanttypes"></a>
<a id="tocsplanttypes"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Plants">Plants</h2>
<!-- backwards compatibility -->
<a id="schemaplants"></a>
<a id="schema_Plants"></a>
<a id="tocSplants"></a>
<a id="tocsplants"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Prebuilds">Prebuilds</h2>
<!-- backwards compatibility -->
<a id="schemaprebuilds"></a>
<a id="schema_Prebuilds"></a>
<a id="tocSprebuilds"></a>
<a id="tocsprebuilds"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Quotes">Quotes</h2>
<!-- backwards compatibility -->
<a id="schemaquotes"></a>
<a id="schema_Quotes"></a>
<a id="tocSquotes"></a>
<a id="tocsquotes"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_RecurringInvoices">RecurringInvoices</h2>
<!-- backwards compatibility -->
<a id="schemarecurringinvoices"></a>
<a id="schema_RecurringInvoices"></a>
<a id="tocSrecurringinvoices"></a>
<a id="tocsrecurringinvoices"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_RecurringJobs">RecurringJobs</h2>
<!-- backwards compatibility -->
<a id="schemarecurringjobs"></a>
<a id="schema_RecurringJobs"></a>
<a id="tocSrecurringjobs"></a>
<a id="tocsrecurringjobs"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Reports">Reports</h2>
<!-- backwards compatibility -->
<a id="schemareports"></a>
<a id="schema_Reports"></a>
<a id="tocSreports"></a>
<a id="tocsreports"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Schedules">Schedules</h2>
<!-- backwards compatibility -->
<a id="schemaschedules"></a>
<a id="schema_Schedules"></a>
<a id="tocSschedules"></a>
<a id="tocsschedules"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Setup">Setup</h2>
<!-- backwards compatibility -->
<a id="schemasetup"></a>
<a id="schema_Setup"></a>
<a id="tocSsetup"></a>
<a id="tocssetup"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Sites">Sites</h2>
<!-- backwards compatibility -->
<a id="schemasites"></a>
<a id="schema_Sites"></a>
<a id="tocSsites"></a>
<a id="tocssites"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Staff">Staff</h2>
<!-- backwards compatibility -->
<a id="schemastaff"></a>
<a id="schema_Staff"></a>
<a id="tocSstaff"></a>
<a id="tocsstaff"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_StockAllocations">StockAllocations</h2>
<!-- backwards compatibility -->
<a id="schemastockallocations"></a>
<a id="schema_StockAllocations"></a>
<a id="tocSstockallocations"></a>
<a id="tocsstockallocations"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_StockTakes">StockTakes</h2>
<!-- backwards compatibility -->
<a id="schemastocktakes"></a>
<a id="schema_StockTakes"></a>
<a id="tocSstocktakes"></a>
<a id="tocsstocktakes"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Stocks">Stocks</h2>
<!-- backwards compatibility -->
<a id="schemastocks"></a>
<a id="schema_Stocks"></a>
<a id="tocSstocks"></a>
<a id="tocsstocks"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_TakeOffTemplates">TakeOffTemplates</h2>
<!-- backwards compatibility -->
<a id="schematakeofftemplates"></a>
<a id="schema_TakeOffTemplates"></a>
<a id="tocStakeofftemplates"></a>
<a id="tocstakeofftemplates"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Tasks">Tasks</h2>
<!-- backwards compatibility -->
<a id="schematasks"></a>
<a id="schema_Tasks"></a>
<a id="tocStasks"></a>
<a id="tocstasks"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_VendorCredits">VendorCredits</h2>
<!-- backwards compatibility -->
<a id="schemavendorcredits"></a>
<a id="schema_VendorCredits"></a>
<a id="tocSvendorcredits"></a>
<a id="tocsvendorcredits"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_VendorOrders">VendorOrders</h2>
<!-- backwards compatibility -->
<a id="schemavendororders"></a>
<a id="schema_VendorOrders"></a>
<a id="tocSvendororders"></a>
<a id="tocsvendororders"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_VendorQuotes">VendorQuotes</h2>
<!-- backwards compatibility -->
<a id="schemavendorquotes"></a>
<a id="schema_VendorQuotes"></a>
<a id="tocSvendorquotes"></a>
<a id="tocsvendorquotes"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_VendorReceipts">VendorReceipts</h2>
<!-- backwards compatibility -->
<a id="schemavendorreceipts"></a>
<a id="schema_VendorReceipts"></a>
<a id="tocSvendorreceipts"></a>
<a id="tocsvendorreceipts"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_Vendors">Vendors</h2>
<!-- backwards compatibility -->
<a id="schemavendors"></a>
<a id="schema_Vendors"></a>
<a id="tocSvendors"></a>
<a id="tocsvendors"></a>

```json
null

```

### Properties

*None*

<h2 id="tocS_WorkOrders">WorkOrders</h2>
<!-- backwards compatibility -->
<a id="schemaworkorders"></a>
<a id="schema_WorkOrders"></a>
<a id="tocSworkorders"></a>
<a id="tocsworkorders"></a>

```json
null

```

### Properties

*None*