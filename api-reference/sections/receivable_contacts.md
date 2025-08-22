# Receivable Contacts

## 53c91db151c17dd8ce34f476dd9a869d

<a id="opId53c91db151c17dd8ce34f476dd9a869d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/receivable/contacts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/contacts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/receivable/contacts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/receivable/contacts/`

*List all receivable contacts.*

<h3 id="53c91db151c17dd8ce34f476dd9a869d-parameters">Parameters</h3>

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
    "AccRecContactName": "string",
    "IsCompany": true,
    "Title": "string",
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
    "Currency": "AUD",
    "Website": "http://www.simprosuite.com",
    "Notes": "string",
    "TaxNumber": "string",
    "CompanyNumber": "string",
    "OnStop": true,
    "CreditLimit": 1.57,
    "CustomerProfile": {
      "ID": 12345,
      "Name": "string"
    },
    "CustomerGroup": {
      "ID": 12345,
      "Name": "string"
    },
    "Rates": {
      "PartTaxCode": {
        "ID": 12345,
        "Code": "GST",
        "Type": "Single",
        "Rate": 10
      },
      "DiscountFee": "-5.2"
    },
    "Banking": {
      "AccountName": "string",
      "RoutingNo": "string",
      "AccountNo": "string",
      "PaymentTermID": 0,
      "PaymentTerms": {
        "Days": 0,
        "Type": "invoice"
      }
    },
    "CustomerType": "string",
    "PaymentMethod": "string",
    "PriorityTaxCode": 0,
    "OrderNoReq": true,
    "LabourRate": 1.57,
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
    "DateModified": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="53c91db151c17dd8ce34f476dd9a869d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all receivable contacts.|Inline|

<h3 id="53c91db151c17dd8ce34f476dd9a869d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AccRecContactName|string|true|none|none|
|» IsCompany|boolean|true|none|none|
|» Title|string|true|none|none|
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
|» Currency|string|true|none|none|
|» Website|string|true|none|none|
|» Notes|string|true|none|none|
|» TaxNumber|string|true|none|none|
|» CompanyNumber|string|true|none|none|
|» OnStop|boolean|true|none|Whether the credit in on stop|
|» CreditLimit|number|true|none|none|
|» CustomerProfile|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomerGroup|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Rates|object|true|none|none|
|»» PartTaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|»» DiscountFee|number|true|none|Discount/fee percentage. Positive number is a discount, negative number is a fee|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|none|
|»»» Type|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» CustomerType|string|true|none|none|
|» PaymentMethod|string|true|none|none|
|» PriorityTaxCode|integer|true|none|none|
|» OrderNoReq|boolean|true|none|none|
|» LabourRate|number|true|none|none|
|» CustomFields|[object]|true|none|none|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|invoice|
|Type|month|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 4c7c4f395ae4ea5392a0811b3366293b

<a id="opId4c7c4f395ae4ea5392a0811b3366293b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/receivable/contacts/{contactID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/receivable/contacts/{contactID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/receivable/contacts/{contactID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/receivable/contacts/{contactID}`

*Retrieve details for a specific receivable contact.*

<h3 id="4c7c4f395ae4ea5392a0811b3366293b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contactID|path|integer|true|A valid contact id|
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
  "AccRecContactName": "string",
  "IsCompany": true,
  "Title": "string",
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
  "Currency": "AUD",
  "Website": "http://www.simprosuite.com",
  "Notes": "string",
  "TaxNumber": "string",
  "CompanyNumber": "string",
  "OnStop": true,
  "CreditLimit": 1.57,
  "CustomerProfile": {
    "ID": 12345,
    "Name": "string"
  },
  "CustomerGroup": {
    "ID": 12345,
    "Name": "string"
  },
  "Rates": {
    "PartTaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    },
    "DiscountFee": "-5.2"
  },
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "invoice"
    }
  },
  "CustomerType": "string",
  "PaymentMethod": "string",
  "PriorityTaxCode": 0,
  "OrderNoReq": true,
  "LabourRate": 1.57,
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
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="4c7c4f395ae4ea5392a0811b3366293b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Receivable Contact details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Receivable Contact not found.|None|

<h3 id="4c7c4f395ae4ea5392a0811b3366293b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» AccRecContactName|string|true|none|none|
|» IsCompany|boolean|true|none|none|
|» Title|string|true|none|none|
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
|» Currency|string|true|none|none|
|» Website|string|true|none|none|
|» Notes|string|true|none|none|
|» TaxNumber|string|true|none|none|
|» CompanyNumber|string|true|none|none|
|» OnStop|boolean|true|none|Whether the credit in on stop|
|» CreditLimit|number|true|none|none|
|» CustomerProfile|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomerGroup|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Rates|object|true|none|none|
|»» PartTaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|»» DiscountFee|number|true|none|Discount/fee percentage. Positive number is a discount, negative number is a fee|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|none|
|»»» Type|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» CustomerType|string|true|none|none|
|» PaymentMethod|string|true|none|none|
|» PriorityTaxCode|integer|true|none|none|
|» OrderNoReq|boolean|true|none|none|
|» LabourRate|number|true|none|none|
|» CustomFields|[object]|true|none|none|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|invoice|
|Type|month|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>