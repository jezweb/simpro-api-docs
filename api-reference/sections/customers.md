# Customers

In Simpro, a customer is an entity, such as a company or individual, that receives your invoice for the work performed.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Customers.htm">External documentation</a>

## c77095724ba74c7dbfab2348d3e9a581

<a id="opIdc77095724ba74c7dbfab2348d3e9a581"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/`

*List all customers.*

<h3 id="c77095724ba74c7dbfab2348d3e9a581-parameters">Parameters</h3>

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
    "ID": 12345,
    "_href": "/api/v1.0/companies/0/customers/companies/123",
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  }
]
```

<h3 id="c77095724ba74c7dbfab2348d3e9a581-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customers.|Inline|

<h3 id="c77095724ba74c7dbfab2348d3e9a581-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» _href|string|true|none|Link to this customer's details|
|» CompanyName|string|true|none|Company name (Company customers)|
|» GivenName|string|true|none|Given name / First name (Individual customers)|
|» FamilyName|string|true|none|Family name / Last name (Individual customers)|

<aside class="success">
This operation does not require authentication
</aside>

## 43177fb5fc1867f82b50ea82fbb622b8

<a id="opId43177fb5fc1867f82b50ea82fbb622b8"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/companies/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/companies/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/companies/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/companies/`

*List all company customers.*

<h3 id="43177fb5fc1867f82b50ea82fbb622b8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
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
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd"
  }
]
```

<h3 id="43177fb5fc1867f82b50ea82fbb622b8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all company customers.|Inline|

<h3 id="43177fb5fc1867f82b50ea82fbb622b8-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» CompanyName|string|true|none|Company name (Company customers)|

<aside class="success">
This operation does not require authentication
</aside>

## 345fa0996f7f790e1103bebdea233fc3

<a id="opId345fa0996f7f790e1103bebdea233fc3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/companies/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "CompanyName": "John Smith Pty Ltd",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "EIN": "string",
  "Website": "https://simprogroup.com/au/",
  "Fax": "+61 7 3147 8777",
  "CompanyNumber": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/companies/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/companies/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/companies/`

*Create a new company customer.*

> Body parameter

```json
{
  "CompanyName": "John Smith Pty Ltd",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "EIN": "string",
  "Website": "https://simprogroup.com/au/",
  "Fax": "+61 7 3147 8777",
  "CompanyNumber": "string"
}
```

<h3 id="345fa0996f7f790e1103bebdea233fc3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|createSite|query|boolean|false|Add an associated site when creating the customer|
|body|body|object|true|Company customer object|
|» CompanyName|body|string|true|Company name (Company customers)|
|» PreferredTechs|body|[integer]|false|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|» Phone|body|string|false|Telephone number|
|» DoNotCall|body|boolean|false|Do not contact through phone|
|» AltPhone|body|string|false|Alternative telephone number|
|» Address|body|object|false|The physical address of the customer's office|
|»» Address|body|string|false|Address of the customer's office|
|»» City|body|string|false|City of the customer's office|
|»» State|body|string|false|State/territory of the customer's office|
|»» PostalCode|body|string|false|Postcode of the customer's office|
|»» Country|body|string|false|Country of the customer's office|
|» BillingAddress|body|object|false|The mailing address for the customer's bills|
|»» Address|body|string|false|Address for mailing the customer's bills|
|»» City|body|string|false|City for mailing the customer's bills|
|»» State|body|string|false|State/territory for mailing the customer's bills|
|»» PostalCode|body|string|false|Postcode for mailing the customer's bills|
|»» Country|body|string|false|Country for mailing the customer's bills|
|» CustomerType|body|string|false|Whether this is a customer or a lead|
|» Tags|body|[integer]|false|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|» Rates|body|object|false|none|
|»» PartTaxCode|body|integer|false|ID of a tax code|
|»» LabourTaxCode|body|integer|false|ID of a tax code|
|»» DiscountFee|body|number|false|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|body|boolean|false|This column information is only applicable to UK builds.|
|»» ServiceFee|body|integer|false|ID of a service fee|
|»» Material|body|object|false|none|
|»»» PricingTier|body|integer|false|ID of a pricing tier|
|»»» Markup|body|number|false|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|body|object|false|none|
|»» Notes|body|string|false|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|body|integer|false|ID of a customer profile|
|»» CustomerGroup|body|integer|false|ID of a customer group|
|»» AccountManager|body|integer|false|ID of a employee|
|»» Currency|body|string|false|ID of a currency|
|»» ServiceJobCostCenter|body|integer|false|ID of a cost center|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|Account name|
|»» RoutingNo|body|string|false|BSB / Routing number|
|»» AccountNo|body|string|false|Account number|
|»» PaymentMethod|body|integer|false|ID of a payment method|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|body|number|false|Credit limit|
|»» OnStop|body|boolean|false|Whether the credit in on stop|
|»» Retention|body|string|false|Type of retention|
|»» VendorOrderNoRequired|body|boolean|false|Whether a purchase order number is required|
|» Archived|body|boolean|false|Whether this customer is archived|
|» Sites|body|[integer]|false|Array of sites to which this customer is linked. See People -> Sites|
|» Email|body|string|false|none|
|» EIN|body|string|false|EIN / ABN / GST No / Vat Reg No|
|» Website|body|string|false|none|
|» Fax|body|string|false|none|
|» CompanyNumber|body|string|false|Company Number (UK Only).|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» CustomerType|Customer|
|» CustomerType|Lead|
|»»» Type|Invoice|
|»»» Type|Month|
|»» Retention|incGST|
|»» Retention|exGST|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "CompanyName": "John Smith Pty Ltd",
  "PreferredTechs": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    "[1, 2, 3]"
  ],
  "AmountOwing": 1.57,
  "Rates": {
    "PartTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "LabourTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
    "Material": {
      "PricingTier": {
        "ID": 12345,
        "Name": "Tier 1 (Service name)",
        "DefaultMarkup": 10
      },
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": {
      "ID": 12345,
      "Name": "string"
    },
    "CustomerGroup": {
      "ID": 12345,
      "Name": "string"
    },
    "AccountManager": {
      "ID": 0,
      "Name": "string"
    },
    "Currency": "USD",
    "ServiceJobCostCenter": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": {
      "ID": 12345,
      "Name": "string"
    },
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Contracts": [
    {
      "ID": 0,
      "Name": "string",
      "StartDate": "2021-04-22",
      "EndDate": "2021-04-22",
      "ContractNo": "string",
      "Expired": true
    }
  ],
  "Contacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "ResponseTimes": [
    {
      "ID": 12345,
      "Name": "24 Hours Emergency Response"
    }
  ],
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
  "Email": "sales@simpro.com.au",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "EIN": "string",
  "Website": "https://simprogroup.com/au/",
  "Fax": "+61 7 3147 8777",
  "CompanyNumber": "string"
}
```

<h3 id="345fa0996f7f790e1103bebdea233fc3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Company customer created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="345fa0996f7f790e1103bebdea233fc3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» CompanyName|string|true|none|Company name (Company customers)|
|» PreferredTechs|[object]|true|none|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Phone|string|true|none|Telephone number|
|» DoNotCall|boolean|true|none|Do not contact through phone|
|» AltPhone|string|true|none|Alternative telephone number|
|» Address|object|true|none|The physical address of the customer's office|
|»» Address|string|true|none|Address of the customer's office|
|»» City|string|true|none|City of the customer's office|
|»» State|string|true|none|State/territory of the customer's office|
|»» PostalCode|string|true|none|Postcode of the customer's office|
|»» Country|string|true|none|Country of the customer's office|
|» BillingAddress|object|true|none|The mailing address for the customer's bills|
|»» Address|string|true|none|Address for mailing the customer's bills|
|»» City|string|true|none|City for mailing the customer's bills|
|»» State|string|true|none|State/territory for mailing the customer's bills|
|»» PostalCode|string|true|none|Postcode for mailing the customer's bills|
|»» Country|string|true|none|Country for mailing the customer's bills|
|» CustomerType|string|true|none|Whether this is a customer or a lead|
|» Tags|[object]|true|none|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AmountOwing|number|true|none|none|
|» Rates|object|true|none|none|
|»» PartTaxCode|object¦null|false|none|Set to null to use the default part tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» LabourTaxCode|object¦null|false|none|Set to null to use the default labour tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» DiscountFee|number|true|none|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|boolean|true|none|This column information is only applicable to UK builds.|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» Material|object|true|none|none|
|»»» PricingTier|object|true|none|Pricing tier of the customer.|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|»»» Markup|number|true|none|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|object|true|none|none|
|»» Notes|string|true|none|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|object¦null|false|none|The quality or maturity of your relationship with this customer. See Setup -> Customer Profiles|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» CustomerGroup|object¦null|false|none|Categorise customers to assist with reporting. See Setup -> Customer Groups|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» AccountManager|object¦null|false|none|Account manager of the customer|
|»»» ID|integer|false|none|ID of an employee|
|»»» Name|string|false|none|none|
|»» Currency|object|true|none|The default currency for this customer. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»»» ID|string|true|none|none|
|»»» Name|string|true|none|none|
|»»» Visible|boolean|true|none|none|
|»» ServiceJobCostCenter|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentMethod|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|number|true|none|Credit limit|
|»» OnStop|boolean|true|none|Whether the credit in on stop|
|»» Retention|string|true|none|Type of retention|
|»» VendorOrderNoRequired|boolean|true|none|Whether a purchase order number is required|
|» Archived|boolean|true|none|Whether this customer is archived|
|» Sites|[object]|true|none|Array of sites to which this customer is linked. See People -> Sites|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Contracts|[object]¦null|false|none|Collection of customer contracts|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|true|none|none|
|»» Expired|boolean|true|none|none|
|» Contacts|[object]¦null|false|none|Collection of customer contacts|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» ResponseTimes|[object]¦null|false|none|Customer Response Times|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this company customer. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Email|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» EIN|string|true|none|EIN / ABN / GST No / Vat Reg No|
|» Website|string|true|none|none|
|» Fax|string|true|none|none|
|» CompanyNumber|string|true|none|Company Number (UK Only).|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|CustomerType|Customer|
|CustomerType|Lead|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Invoice|
|Type|Month|
|Retention|incGST|
|Retention|exGST|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 4d0880832fafa3a4e8ec2c8ba56cae54

<a id="opId4d0880832fafa3a4e8ec2c8ba56cae54"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/companies/{customerID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/companies/{customerID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/companies/{customerID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/companies/{customerID}`

*Retrieve details for a specific company customer.*

<h3 id="4d0880832fafa3a4e8ec2c8ba56cae54-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|customerID|path|integer|true|A valid customer id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "CompanyName": "John Smith Pty Ltd",
  "PreferredTechs": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    "[1, 2, 3]"
  ],
  "AmountOwing": 1.57,
  "Rates": {
    "PartTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "LabourTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
    "Material": {
      "PricingTier": {
        "ID": 12345,
        "Name": "Tier 1 (Service name)",
        "DefaultMarkup": 10
      },
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": {
      "ID": 12345,
      "Name": "string"
    },
    "CustomerGroup": {
      "ID": 12345,
      "Name": "string"
    },
    "AccountManager": {
      "ID": 0,
      "Name": "string"
    },
    "Currency": "USD",
    "ServiceJobCostCenter": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": {
      "ID": 12345,
      "Name": "string"
    },
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Contracts": [
    {
      "ID": 0,
      "Name": "string",
      "StartDate": "2021-04-22",
      "EndDate": "2021-04-22",
      "ContractNo": "string",
      "Expired": true
    }
  ],
  "Contacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "ResponseTimes": [
    {
      "ID": 12345,
      "Name": "24 Hours Emergency Response"
    }
  ],
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
  "Email": "sales@simpro.com.au",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "EIN": "string",
  "Website": "https://simprogroup.com/au/",
  "Fax": "+61 7 3147 8777",
  "CompanyNumber": "string"
}
```

<h3 id="4d0880832fafa3a4e8ec2c8ba56cae54-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Company customer details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Company customer not found.|None|

<h3 id="4d0880832fafa3a4e8ec2c8ba56cae54-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» CompanyName|string|true|none|Company name (Company customers)|
|» PreferredTechs|[object]|true|none|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Phone|string|true|none|Telephone number|
|» DoNotCall|boolean|true|none|Do not contact through phone|
|» AltPhone|string|true|none|Alternative telephone number|
|» Address|object|true|none|The physical address of the customer's office|
|»» Address|string|true|none|Address of the customer's office|
|»» City|string|true|none|City of the customer's office|
|»» State|string|true|none|State/territory of the customer's office|
|»» PostalCode|string|true|none|Postcode of the customer's office|
|»» Country|string|true|none|Country of the customer's office|
|» BillingAddress|object|true|none|The mailing address for the customer's bills|
|»» Address|string|true|none|Address for mailing the customer's bills|
|»» City|string|true|none|City for mailing the customer's bills|
|»» State|string|true|none|State/territory for mailing the customer's bills|
|»» PostalCode|string|true|none|Postcode for mailing the customer's bills|
|»» Country|string|true|none|Country for mailing the customer's bills|
|» CustomerType|string|true|none|Whether this is a customer or a lead|
|» Tags|[object]|true|none|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AmountOwing|number|true|none|none|
|» Rates|object|true|none|none|
|»» PartTaxCode|object¦null|false|none|Set to null to use the default part tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» LabourTaxCode|object¦null|false|none|Set to null to use the default labour tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» DiscountFee|number|true|none|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|boolean|true|none|This column information is only applicable to UK builds.|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» Material|object|true|none|none|
|»»» PricingTier|object|true|none|Pricing tier of the customer.|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|»»» Markup|number|true|none|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|object|true|none|none|
|»» Notes|string|true|none|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|object¦null|false|none|The quality or maturity of your relationship with this customer. See Setup -> Customer Profiles|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» CustomerGroup|object¦null|false|none|Categorise customers to assist with reporting. See Setup -> Customer Groups|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» AccountManager|object¦null|false|none|Account manager of the customer|
|»»» ID|integer|false|none|ID of an employee|
|»»» Name|string|false|none|none|
|»» Currency|object|true|none|The default currency for this customer. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»»» ID|string|true|none|none|
|»»» Name|string|true|none|none|
|»»» Visible|boolean|true|none|none|
|»» ServiceJobCostCenter|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentMethod|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|number|true|none|Credit limit|
|»» OnStop|boolean|true|none|Whether the credit in on stop|
|»» Retention|string|true|none|Type of retention|
|»» VendorOrderNoRequired|boolean|true|none|Whether a purchase order number is required|
|» Archived|boolean|true|none|Whether this customer is archived|
|» Sites|[object]|true|none|Array of sites to which this customer is linked. See People -> Sites|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Contracts|[object]¦null|false|none|Collection of customer contracts|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|true|none|none|
|»» Expired|boolean|true|none|none|
|» Contacts|[object]¦null|false|none|Collection of customer contacts|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» ResponseTimes|[object]¦null|false|none|Customer Response Times|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this company customer. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Email|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» EIN|string|true|none|EIN / ABN / GST No / Vat Reg No|
|» Website|string|true|none|none|
|» Fax|string|true|none|none|
|» CompanyNumber|string|true|none|Company Number (UK Only).|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|CustomerType|Customer|
|CustomerType|Lead|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Invoice|
|Type|Month|
|Retention|incGST|
|Retention|exGST|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 073ac988186b8cf884432b3425eaf5f1

<a id="opId073ac988186b8cf884432b3425eaf5f1"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/companies/{customerID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "CompanyName": "John Smith Pty Ltd",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "EIN": "string",
  "Website": "https://simprogroup.com/au/",
  "Fax": "+61 7 3147 8777",
  "CompanyNumber": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/companies/{customerID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/companies/{customerID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/companies/{customerID}`

*Update a company customer.*

> Body parameter

```json
{
  "CompanyName": "John Smith Pty Ltd",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "EIN": "string",
  "Website": "https://simprogroup.com/au/",
  "Fax": "+61 7 3147 8777",
  "CompanyNumber": "string"
}
```

<h3 id="073ac988186b8cf884432b3425eaf5f1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|customerID|path|integer|true|A valid customer id|
|createSite|query|boolean|false|Add an associated site when creating the customer|
|body|body|object|true|Company customer object|
|» CompanyName|body|string|false|Company name (Company customers)|
|» PreferredTechs|body|[integer]|false|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|» Phone|body|string|false|Telephone number|
|» DoNotCall|body|boolean|false|Do not contact through phone|
|» AltPhone|body|string|false|Alternative telephone number|
|» Address|body|object|false|The physical address of the customer's office|
|»» Address|body|string|false|Address of the customer's office|
|»» City|body|string|false|City of the customer's office|
|»» State|body|string|false|State/territory of the customer's office|
|»» PostalCode|body|string|false|Postcode of the customer's office|
|»» Country|body|string|false|Country of the customer's office|
|» BillingAddress|body|object|false|The mailing address for the customer's bills|
|»» Address|body|string|false|Address for mailing the customer's bills|
|»» City|body|string|false|City for mailing the customer's bills|
|»» State|body|string|false|State/territory for mailing the customer's bills|
|»» PostalCode|body|string|false|Postcode for mailing the customer's bills|
|»» Country|body|string|false|Country for mailing the customer's bills|
|» CustomerType|body|string|false|Whether this is a customer or a lead|
|» Tags|body|[integer]|false|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|» Rates|body|object|false|none|
|»» PartTaxCode|body|integer|false|ID of a tax code|
|»» LabourTaxCode|body|integer|false|ID of a tax code|
|»» DiscountFee|body|number|false|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|body|boolean|false|This column information is only applicable to UK builds.|
|»» ServiceFee|body|integer|false|ID of a service fee|
|»» Material|body|object|false|none|
|»»» PricingTier|body|integer|false|ID of a pricing tier|
|»»» Markup|body|number|false|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|body|object|false|none|
|»» Notes|body|string|false|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|body|integer|false|ID of a customer profile|
|»» CustomerGroup|body|integer|false|ID of a customer group|
|»» AccountManager|body|integer|false|ID of a employee|
|»» Currency|body|string|false|ID of a currency|
|»» ServiceJobCostCenter|body|integer|false|ID of a cost center|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|Account name|
|»» RoutingNo|body|string|false|BSB / Routing number|
|»» AccountNo|body|string|false|Account number|
|»» PaymentMethod|body|integer|false|ID of a payment method|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|body|number|false|Credit limit|
|»» OnStop|body|boolean|false|Whether the credit in on stop|
|»» Retention|body|string|false|Type of retention|
|»» VendorOrderNoRequired|body|boolean|false|Whether a purchase order number is required|
|» Archived|body|boolean|false|Whether this customer is archived|
|» Sites|body|[integer]|false|Array of sites to which this customer is linked. See People -> Sites|
|» Email|body|string|false|none|
|» EIN|body|string|false|EIN / ABN / GST No / Vat Reg No|
|» Website|body|string|false|none|
|» Fax|body|string|false|none|
|» CompanyNumber|body|string|false|Company Number (UK Only).|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» CustomerType|Customer|
|» CustomerType|Lead|
|»»» Type|Invoice|
|»»» Type|Month|
|»» Retention|incGST|
|»» Retention|exGST|

<h3 id="073ac988186b8cf884432b3425eaf5f1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Company customer updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## b8c57400b62db0a319de4128391c76d9

<a id="opIdb8c57400b62db0a319de4128391c76d9"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/companies/{customerID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/companies/{customerID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/companies/{customerID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/companies/{customerID}`

*Delete a company customer.*

<h3 id="b8c57400b62db0a319de4128391c76d9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|customerID|path|integer|true|A valid customer id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="b8c57400b62db0a319de4128391c76d9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Company customer deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Company customer does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 03d235b964335884b3d295ed6493287f

<a id="opId03d235b964335884b3d295ed6493287f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/individuals/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/individuals/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/individuals/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/individuals/`

*List all individual customers.*

<h3 id="03d235b964335884b3d295ed6493287f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
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
    "ID": 12345,
    "GivenName": "John",
    "FamilyName": "Smith"
  }
]
```

<h3 id="03d235b964335884b3d295ed6493287f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all individual customers.|Inline|

<h3 id="03d235b964335884b3d295ed6493287f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» GivenName|string|true|none|Given name / First name (Individual customers)|
|» FamilyName|string|true|none|Family name / Last name (Individual customers)|

<aside class="success">
This operation does not require authentication
</aside>

## 97665aecca605d007f3c0496883a171c

<a id="opId97665aecca605d007f3c0496883a171c"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/individuals/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Title": "",
  "GivenName": "John",
  "FamilyName": "Smith",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "CellPhone": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/individuals/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/individuals/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/individuals/`

*Create a new individual customer.*

> Body parameter

```json
{
  "Title": "",
  "GivenName": "John",
  "FamilyName": "Smith",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "CellPhone": "string"
}
```

<h3 id="97665aecca605d007f3c0496883a171c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|createSite|query|boolean|false|Add an associated site when creating the customer|
|body|body|object|true|Individual customer object|
|» Title|body|string|false|This customer's title (Individual customers)|
|» GivenName|body|string|true|Given name / First name (Individual customers)|
|» FamilyName|body|string|true|Family name / Last name (Individual customers)|
|» PreferredTechs|body|[integer]|false|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|» Phone|body|string|false|Telephone number|
|» DoNotCall|body|boolean|false|Do not contact through phone|
|» AltPhone|body|string|false|Alternative telephone number|
|» Address|body|object|false|The physical address of the customer's office|
|»» Address|body|string|false|Address of the customer's office|
|»» City|body|string|false|City of the customer's office|
|»» State|body|string|false|State/territory of the customer's office|
|»» PostalCode|body|string|false|Postcode of the customer's office|
|»» Country|body|string|false|Country of the customer's office|
|» BillingAddress|body|object|false|The mailing address for the customer's bills|
|»» Address|body|string|false|Address for mailing the customer's bills|
|»» City|body|string|false|City for mailing the customer's bills|
|»» State|body|string|false|State/territory for mailing the customer's bills|
|»» PostalCode|body|string|false|Postcode for mailing the customer's bills|
|»» Country|body|string|false|Country for mailing the customer's bills|
|» CustomerType|body|string|false|Whether this is a customer or a lead|
|» Tags|body|[integer]|false|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|» Rates|body|object|false|none|
|»» PartTaxCode|body|integer|false|ID of a tax code|
|»» LabourTaxCode|body|integer|false|ID of a tax code|
|»» DiscountFee|body|number|false|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|body|boolean|false|This column information is only applicable to UK builds.|
|»» ServiceFee|body|integer|false|ID of a service fee|
|»» Material|body|object|false|none|
|»»» PricingTier|body|integer|false|ID of a pricing tier|
|»»» Markup|body|number|false|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|body|object|false|none|
|»» Notes|body|string|false|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|body|integer|false|ID of a customer profile|
|»» CustomerGroup|body|integer|false|ID of a customer group|
|»» AccountManager|body|integer|false|ID of a employee|
|»» Currency|body|string|false|ID of a currency|
|»» ServiceJobCostCenter|body|integer|false|ID of a cost center|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|Account name|
|»» RoutingNo|body|string|false|BSB / Routing number|
|»» AccountNo|body|string|false|Account number|
|»» PaymentMethod|body|integer|false|ID of a payment method|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|body|number|false|Credit limit|
|»» OnStop|body|boolean|false|Whether the credit in on stop|
|»» Retention|body|string|false|Type of retention|
|»» VendorOrderNoRequired|body|boolean|false|Whether a purchase order number is required|
|» Archived|body|boolean|false|Whether this customer is archived|
|» Sites|body|[integer]|false|Array of sites to which this customer is linked. See People -> Sites|
|» Email|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone number|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Title||
|» Title|Mr|
|» Title|Mrs|
|» Title|Miss|
|» Title|Ms|
|» Title|Dr|
|» Title|Sir|
|» CustomerType|Customer|
|» CustomerType|Lead|
|»»» Type|Invoice|
|»»» Type|Month|
|»» Retention|incGST|
|»» Retention|exGST|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Title": "",
  "GivenName": "John",
  "FamilyName": "Smith",
  "PreferredTechs": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    "[1, 2, 3]"
  ],
  "AmountOwing": 1.57,
  "Rates": {
    "PartTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "LabourTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
    "Material": {
      "PricingTier": {
        "ID": 12345,
        "Name": "Tier 1 (Service name)",
        "DefaultMarkup": 10
      },
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": {
      "ID": 12345,
      "Name": "string"
    },
    "CustomerGroup": {
      "ID": 12345,
      "Name": "string"
    },
    "AccountManager": {
      "ID": 0,
      "Name": "string"
    },
    "Currency": "USD",
    "ServiceJobCostCenter": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": {
      "ID": 12345,
      "Name": "string"
    },
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Contracts": [
    {
      "ID": 0,
      "Name": "string",
      "StartDate": "2021-04-22",
      "EndDate": "2021-04-22",
      "ContractNo": "string",
      "Expired": true
    }
  ],
  "Contacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "ResponseTimes": [
    {
      "ID": 12345,
      "Name": "24 Hours Emergency Response"
    }
  ],
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
  "Email": "sales@simpro.com.au",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "CellPhone": "string"
}
```

<h3 id="97665aecca605d007f3c0496883a171c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Individual customer created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="97665aecca605d007f3c0496883a171c-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» Title|string|true|none|This customer's title (Individual customers)|
|» GivenName|string|true|none|Given name / First name (Individual customers)|
|» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» PreferredTechs|[object]|true|none|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Phone|string|true|none|Telephone number|
|» DoNotCall|boolean|true|none|Do not contact through phone|
|» AltPhone|string|true|none|Alternative telephone number|
|» Address|object|true|none|The physical address of the customer's office|
|»» Address|string|true|none|Address of the customer's office|
|»» City|string|true|none|City of the customer's office|
|»» State|string|true|none|State/territory of the customer's office|
|»» PostalCode|string|true|none|Postcode of the customer's office|
|»» Country|string|true|none|Country of the customer's office|
|» BillingAddress|object|true|none|The mailing address for the customer's bills|
|»» Address|string|true|none|Address for mailing the customer's bills|
|»» City|string|true|none|City for mailing the customer's bills|
|»» State|string|true|none|State/territory for mailing the customer's bills|
|»» PostalCode|string|true|none|Postcode for mailing the customer's bills|
|»» Country|string|true|none|Country for mailing the customer's bills|
|» CustomerType|string|true|none|Whether this is a customer or a lead|
|» Tags|[object]|true|none|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AmountOwing|number|true|none|none|
|» Rates|object|true|none|none|
|»» PartTaxCode|object¦null|false|none|Set to null to use the default part tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» LabourTaxCode|object¦null|false|none|Set to null to use the default labour tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» DiscountFee|number|true|none|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|boolean|true|none|This column information is only applicable to UK builds.|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» Material|object|true|none|none|
|»»» PricingTier|object|true|none|Pricing tier of the customer.|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|»»» Markup|number|true|none|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|object|true|none|none|
|»» Notes|string|true|none|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|object¦null|false|none|The quality or maturity of your relationship with this customer. See Setup -> Customer Profiles|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» CustomerGroup|object¦null|false|none|Categorise customers to assist with reporting. See Setup -> Customer Groups|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» AccountManager|object¦null|false|none|Account manager of the customer|
|»»» ID|integer|false|none|ID of an employee|
|»»» Name|string|false|none|none|
|»» Currency|object|true|none|The default currency for this customer. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»»» ID|string|true|none|none|
|»»» Name|string|true|none|none|
|»»» Visible|boolean|true|none|none|
|»» ServiceJobCostCenter|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentMethod|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|number|true|none|Credit limit|
|»» OnStop|boolean|true|none|Whether the credit in on stop|
|»» Retention|string|true|none|Type of retention|
|»» VendorOrderNoRequired|boolean|true|none|Whether a purchase order number is required|
|» Archived|boolean|true|none|Whether this customer is archived|
|» Sites|[object]|true|none|Array of sites to which this customer is linked. See People -> Sites|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Contracts|[object]¦null|false|none|Collection of customer contracts|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|true|none|none|
|»» Expired|boolean|true|none|none|
|» Contacts|[object]¦null|false|none|Collection of customer contacts|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» ResponseTimes|[object]¦null|false|none|Customer Response Times|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this individual customer. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Email|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CellPhone|string|true|none|Cell phone / Mobile phone number|

#### Enumerated Values

|Property|Value|
|---|---|
|Title||
|Title|Mr|
|Title|Mrs|
|Title|Miss|
|Title|Ms|
|Title|Dr|
|Title|Sir|
|Type|employee|
|Type|contractor|
|Type|plant|
|CustomerType|Customer|
|CustomerType|Lead|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Invoice|
|Type|Month|
|Retention|incGST|
|Retention|exGST|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 9b35e10aab23e147a348762d5032ea24

<a id="opId9b35e10aab23e147a348762d5032ea24"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/individuals/{customerID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/individuals/{customerID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/individuals/{customerID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/individuals/{customerID}`

*Retrieve details for a specific individual customer.*

<h3 id="9b35e10aab23e147a348762d5032ea24-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|customerID|path|integer|true|A valid customer id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "Title": "",
  "GivenName": "John",
  "FamilyName": "Smith",
  "PreferredTechs": [
    {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    }
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    "[1, 2, 3]"
  ],
  "AmountOwing": 1.57,
  "Rates": {
    "PartTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "LabourTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10,
      "ReverseTaxEnabled": true
    },
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": {
      "ID": 0,
      "Name": "string"
    },
    "Material": {
      "PricingTier": {
        "ID": 12345,
        "Name": "Tier 1 (Service name)",
        "DefaultMarkup": 10
      },
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": {
      "ID": 12345,
      "Name": "string"
    },
    "CustomerGroup": {
      "ID": 12345,
      "Name": "string"
    },
    "AccountManager": {
      "ID": 0,
      "Name": "string"
    },
    "Currency": "USD",
    "ServiceJobCostCenter": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": {
      "ID": 12345,
      "Name": "string"
    },
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Contracts": [
    {
      "ID": 0,
      "Name": "string",
      "StartDate": "2021-04-22",
      "EndDate": "2021-04-22",
      "ContractNo": "string",
      "Expired": true
    }
  ],
  "Contacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "ResponseTimes": [
    {
      "ID": 12345,
      "Name": "24 Hours Emergency Response"
    }
  ],
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
  "Email": "sales@simpro.com.au",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "CellPhone": "string"
}
```

<h3 id="9b35e10aab23e147a348762d5032ea24-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Individual customer details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Individual customer not found.|None|

<h3 id="9b35e10aab23e147a348762d5032ea24-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|This customer's ID|
|» Title|string|true|none|This customer's title (Individual customers)|
|» GivenName|string|true|none|Given name / First name (Individual customers)|
|» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» PreferredTechs|[object]|true|none|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Phone|string|true|none|Telephone number|
|» DoNotCall|boolean|true|none|Do not contact through phone|
|» AltPhone|string|true|none|Alternative telephone number|
|» Address|object|true|none|The physical address of the customer's office|
|»» Address|string|true|none|Address of the customer's office|
|»» City|string|true|none|City of the customer's office|
|»» State|string|true|none|State/territory of the customer's office|
|»» PostalCode|string|true|none|Postcode of the customer's office|
|»» Country|string|true|none|Country of the customer's office|
|» BillingAddress|object|true|none|The mailing address for the customer's bills|
|»» Address|string|true|none|Address for mailing the customer's bills|
|»» City|string|true|none|City for mailing the customer's bills|
|»» State|string|true|none|State/territory for mailing the customer's bills|
|»» PostalCode|string|true|none|Postcode for mailing the customer's bills|
|»» Country|string|true|none|Country for mailing the customer's bills|
|» CustomerType|string|true|none|Whether this is a customer or a lead|
|» Tags|[object]|true|none|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AmountOwing|number|true|none|none|
|» Rates|object|true|none|none|
|»» PartTaxCode|object¦null|false|none|Set to null to use the default part tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» LabourTaxCode|object¦null|false|none|Set to null to use the default labour tax code, or set one specific to this customer. See Setup -> Tax Codes|
|»»» ID|integer|false|none|none|
|»»» Code|string|false|none|Tax code|
|»»» Type|string|false|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|false|none|Tax rate|
|»»» ReverseTaxEnabled|boolean|false|none|Reverse Charge Tax Code.|
|»» DiscountFee|number|true|none|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|boolean|true|none|This column information is only applicable to UK builds.|
|»» ServiceFee|object¦null|false|none|An additional fee you charge on a job or quote, such as a call-out fee with or without labour included.|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» Material|object|true|none|none|
|»»» PricingTier|object|true|none|Pricing tier of the customer.|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»»» DefaultMarkup|number|true|none|Set the default markup of the pricing tier|
|»»» Markup|number|true|none|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|object|true|none|none|
|»» Notes|string|true|none|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|object¦null|false|none|The quality or maturity of your relationship with this customer. See Setup -> Customer Profiles|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» CustomerGroup|object¦null|false|none|Categorise customers to assist with reporting. See Setup -> Customer Groups|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» AccountManager|object¦null|false|none|Account manager of the customer|
|»»» ID|integer|false|none|ID of an employee|
|»»» Name|string|false|none|none|
|»» Currency|object|true|none|The default currency for this customer. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»»» ID|string|true|none|none|
|»»» Name|string|true|none|none|
|»»» Visible|boolean|true|none|none|
|»» ServiceJobCostCenter|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentMethod|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|number|true|none|Credit limit|
|»» OnStop|boolean|true|none|Whether the credit in on stop|
|»» Retention|string|true|none|Type of retention|
|»» VendorOrderNoRequired|boolean|true|none|Whether a purchase order number is required|
|» Archived|boolean|true|none|Whether this customer is archived|
|» Sites|[object]|true|none|Array of sites to which this customer is linked. See People -> Sites|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Contracts|[object]¦null|false|none|Collection of customer contracts|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» StartDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» ContractNo|string|true|none|none|
|»» Expired|boolean|true|none|none|
|» Contacts|[object]¦null|false|none|Collection of customer contacts|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» ResponseTimes|[object]¦null|false|none|Customer Response Times|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this individual customer. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Email|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CellPhone|string|true|none|Cell phone / Mobile phone number|

#### Enumerated Values

|Property|Value|
|---|---|
|Title||
|Title|Mr|
|Title|Mrs|
|Title|Miss|
|Title|Ms|
|Title|Dr|
|Title|Sir|
|Type|employee|
|Type|contractor|
|Type|plant|
|CustomerType|Customer|
|CustomerType|Lead|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|Invoice|
|Type|Month|
|Retention|incGST|
|Retention|exGST|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 0646f6413b609ac866cf08219b08eda6

<a id="opId0646f6413b609ac866cf08219b08eda6"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/individuals/{customerID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Title": "",
  "GivenName": "John",
  "FamilyName": "Smith",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "CellPhone": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/individuals/{customerID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/individuals/{customerID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/individuals/{customerID}`

*Update a individual customer.*

> Body parameter

```json
{
  "Title": "",
  "GivenName": "John",
  "FamilyName": "Smith",
  "PreferredTechs": [
    0
  ],
  "Phone": "string",
  "DoNotCall": true,
  "AltPhone": "string",
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
  "CustomerType": "Customer",
  "Tags": [
    0
  ],
  "Rates": {
    "PartTaxCode": 0,
    "LabourTaxCode": 0,
    "DiscountFee": "-5.2",
    "AlwaysDeductCIS": true,
    "ServiceFee": 0,
    "Material": {
      "PricingTier": 0,
      "Markup": 0
    }
  },
  "Profile": {
    "Notes": "string",
    "CustomerProfile": 0,
    "CustomerGroup": 0,
    "AccountManager": 0,
    "Currency": "string",
    "ServiceJobCostCenter": 0
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentMethod": 0,
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    },
    "CreditLimit": 1.57,
    "OnStop": true,
    "Retention": "incGST",
    "VendorOrderNoRequired": true
  },
  "Archived": true,
  "Sites": [
    0
  ],
  "Email": "sales@simpro.com.au",
  "CellPhone": "string"
}
```

<h3 id="0646f6413b609ac866cf08219b08eda6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|customerID|path|integer|true|A valid customer id|
|createSite|query|boolean|false|Add an associated site when creating the customer|
|body|body|object|true|Individual customer object|
|» Title|body|string|false|This customer's title (Individual customers)|
|» GivenName|body|string|false|Given name / First name (Individual customers)|
|» FamilyName|body|string|false|Family name / Last name (Individual customers)|
|» PreferredTechs|body|[integer]|false|Assign preferred technicians to have them automatically assigned to relevant quotes and jobs|
|» Phone|body|string|false|Telephone number|
|» DoNotCall|body|boolean|false|Do not contact through phone|
|» AltPhone|body|string|false|Alternative telephone number|
|» Address|body|object|false|The physical address of the customer's office|
|»» Address|body|string|false|Address of the customer's office|
|»» City|body|string|false|City of the customer's office|
|»» State|body|string|false|State/territory of the customer's office|
|»» PostalCode|body|string|false|Postcode of the customer's office|
|»» Country|body|string|false|Country of the customer's office|
|» BillingAddress|body|object|false|The mailing address for the customer's bills|
|»» Address|body|string|false|Address for mailing the customer's bills|
|»» City|body|string|false|City for mailing the customer's bills|
|»» State|body|string|false|State/territory for mailing the customer's bills|
|»» PostalCode|body|string|false|Postcode for mailing the customer's bills|
|»» Country|body|string|false|Country for mailing the customer's bills|
|» CustomerType|body|string|false|Whether this is a customer or a lead|
|» Tags|body|[integer]|false|An array of user-defined tags which apply to this customer. See Setup -> Tags -> Customer Tags|
|» Rates|body|object|false|none|
|»» PartTaxCode|body|integer|false|ID of a tax code|
|»» LabourTaxCode|body|integer|false|ID of a tax code|
|»» DiscountFee|body|number|false|Discount/fee percentage. Positive number is a discount, negative number is a fee.|
|»» AlwaysDeductCIS|body|boolean|false|This column information is only applicable to UK builds.|
|»» ServiceFee|body|integer|false|ID of a service fee|
|»» Material|body|object|false|none|
|»»» PricingTier|body|integer|false|ID of a pricing tier|
|»»» Markup|body|number|false|Markup for material rates, pricing tier default will be used when empty.|
|» Profile|body|object|false|none|
|»» Notes|body|string|false|Private notes about the customer. This column supports HTML formatting.|
|»» CustomerProfile|body|integer|false|ID of a customer profile|
|»» CustomerGroup|body|integer|false|ID of a customer group|
|»» AccountManager|body|integer|false|ID of a employee|
|»» Currency|body|string|false|ID of a currency|
|»» ServiceJobCostCenter|body|integer|false|ID of a cost center|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|Account name|
|»» RoutingNo|body|string|false|BSB / Routing number|
|»» AccountNo|body|string|false|Account number|
|»» PaymentMethod|body|integer|false|ID of a payment method|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|»» CreditLimit|body|number|false|Credit limit|
|»» OnStop|body|boolean|false|Whether the credit in on stop|
|»» Retention|body|string|false|Type of retention|
|»» VendorOrderNoRequired|body|boolean|false|Whether a purchase order number is required|
|» Archived|body|boolean|false|Whether this customer is archived|
|» Sites|body|[integer]|false|Array of sites to which this customer is linked. See People -> Sites|
|» Email|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone number|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Title||
|» Title|Mr|
|» Title|Mrs|
|» Title|Miss|
|» Title|Ms|
|» Title|Dr|
|» Title|Sir|
|» CustomerType|Customer|
|» CustomerType|Lead|
|»»» Type|Invoice|
|»»» Type|Month|
|»» Retention|incGST|
|»» Retention|exGST|

<h3 id="0646f6413b609ac866cf08219b08eda6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Individual customer updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 52a6b13a0dc49e5451d4ececc7e6ab7f

<a id="opId52a6b13a0dc49e5451d4ececc7e6ab7f"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/individuals/{customerID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/individuals/{customerID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/individuals/{customerID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/individuals/{customerID}`

*Delete a individual customer.*

<h3 id="52a6b13a0dc49e5451d4ececc7e6ab7f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerType|path|integer|true|A valid customer type|
|customerID|path|integer|true|A valid customer id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="52a6b13a0dc49e5451d4ececc7e6ab7f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Individual customer deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Individual customer does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>