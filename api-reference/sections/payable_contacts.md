# Payable Contacts

## 1cb6596aaefea38493d3529a3412fd96

<a id="opId1cb6596aaefea38493d3529a3412fd96"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/payable/contacts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/payable/contacts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/payable/contacts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/payable/contacts/`

*List all payable contacts.*

<h3 id="1cb6596aaefea38493d3529a3412fd96-parameters">Parameters</h3>

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
    "ID": "CON123|VEN123",
    "ContactID": 123,
    "ContactType": "Contractor",
    "Name": "string",
    "ContactName": "string",
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
    "Fax": "+61 3 1234 4321",
    "Email": "sales@simpro.com.au",
    "Mobile": "+61 123 456 789",
    "TaxNumber": "string",
    "CompanyNumber": "string",
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
    "Website": "http://www.simprosuite.com",
    "Notes": "string",
    "Account": "string",
    "Position": "string",
    "Currency": "AUD",
    "TaxCodeID": 123,
    "DateModified": "2018-05-21T19:53:39+10:00"
  }
]
```

<h3 id="1cb6596aaefea38493d3529a3412fd96-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all payable contacts.|Inline|

<h3 id="1cb6596aaefea38493d3529a3412fd96-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» ContactID|integer|true|none|none|
|» ContactType|string|true|none|none|
|» Name|string|true|none|none|
|» ContactName|string|true|none|none|
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
|» Fax|string|true|none|none|
|» Email|string|true|none|none|
|» Mobile|string|true|none|none|
|» TaxNumber|string|true|none|none|
|» CompanyNumber|string|true|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|none|
|»»» Type|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» Website|string|true|none|none|
|» Notes|string|true|none|none|
|» Account|string|true|none|none|
|» Position|string|true|none|none|
|» Currency|string|true|none|none|
|» TaxCodeID|integer|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|ContactType|Contractor|
|ContactType|Vendor|
|Type|invoice|
|Type|month|

<aside class="success">
This operation does not require authentication
</aside>

## 56aed84a8972f54ac79670ff10122dc5

<a id="opId56aed84a8972f54ac79670ff10122dc5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/accounts/payable/contacts/{contactID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/accounts/payable/contacts/{contactID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/accounts/payable/contacts/{contactID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/accounts/payable/contacts/{contactID}`

*Retrieve details for a specific payable contact.*

<h3 id="56aed84a8972f54ac79670ff10122dc5-parameters">Parameters</h3>

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
  "ID": "CON123|VEN123",
  "ContactID": 123,
  "ContactType": "Contractor",
  "Name": "string",
  "ContactName": "string",
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
  "Fax": "+61 3 1234 4321",
  "Email": "sales@simpro.com.au",
  "Mobile": "+61 123 456 789",
  "TaxNumber": "string",
  "CompanyNumber": "string",
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
  "Website": "http://www.simprosuite.com",
  "Notes": "string",
  "Account": "string",
  "Position": "string",
  "Currency": "AUD",
  "TaxCodeID": 123,
  "DateModified": "2018-05-21T19:53:39+10:00"
}
```

<h3 id="56aed84a8972f54ac79670ff10122dc5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Payable Contact details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Payable Contact not found.|None|

<h3 id="56aed84a8972f54ac79670ff10122dc5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|string|true|none|none|
|» ContactID|integer|true|none|none|
|» ContactType|string|true|none|none|
|» Name|string|true|none|none|
|» ContactName|string|true|none|none|
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
|» Fax|string|true|none|none|
|» Email|string|true|none|none|
|» Mobile|string|true|none|none|
|» TaxNumber|string|true|none|none|
|» CompanyNumber|string|true|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|Account name|
|»» RoutingNo|string|true|none|BSB / Routing number|
|»» AccountNo|string|true|none|Account number|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the customer payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|none|
|»»» Type|string|true|none|Payment terms type, **Days from invoice date** (invoice) or **Days after EOM** (month)|
|» Website|string|true|none|none|
|» Notes|string|true|none|none|
|» Account|string|true|none|none|
|» Position|string|true|none|none|
|» Currency|string|true|none|none|
|» TaxCodeID|integer|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|ContactType|Contractor|
|ContactType|Vendor|
|Type|invoice|
|Type|month|

<aside class="success">
This operation does not require authentication
</aside>