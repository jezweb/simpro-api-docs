# Customer Contacts

## 31e6fa1ffa9f18ad7d560448820d0b61

<a id="opId31e6fa1ffa9f18ad7d560448820d0b61"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/`

*List all customer contacts.*

<h3 id="31e6fa1ffa9f18ad7d560448820d0b61-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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
    "GivenName": "string",
    "FamilyName": "string"
  }
]
```

<h3 id="31e6fa1ffa9f18ad7d560448820d0b61-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer contacts.|Inline|

<h3 id="31e6fa1ffa9f18ad7d560448820d0b61-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|string|true|none|Family name / Last name|

<aside class="success">
This operation does not require authentication
</aside>

## bb33768da9cfcc459a1180269e8392a6

<a id="opIdbb33768da9cfcc459a1180269e8392a6"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "Contact": 0,
  "QuoteContact": true,
  "JobContact": true,
  "InvoiceContact": true,
  "StatementContact": true,
  "PrimaryStatementContact": true,
  "PrimaryInvoiceContact": true,
  "PrimaryJobContact": true,
  "PrimaryQuoteContact": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/',
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

r = requests.post('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/`

*Create a new customer contact.*

> Body parameter

```json
{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "Contact": 0,
  "QuoteContact": true,
  "JobContact": true,
  "InvoiceContact": true,
  "StatementContact": true,
  "PrimaryStatementContact": true,
  "PrimaryInvoiceContact": true,
  "PrimaryJobContact": true,
  "PrimaryQuoteContact": true
}
```

<h3 id="bb33768da9cfcc459a1180269e8392a6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|body|body|object|true|Customer contact object|
|» Title|body|string|false|none|
|» GivenName|body|string|false|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|body|string|false|Family name / Last name|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Department|body|string|false|none|
|» Position|body|string|false|none|
|» Notes|body|string|false|none|
|» Contact|body|integer|false|ID of a contact|
|» QuoteContact|body|boolean|false|Set this to true to include this contact in new quotes.|
|» JobContact|body|boolean|false|Set this to true to include this contact in new jobs.|
|» InvoiceContact|body|boolean|false|Set this to true to include this contact in new customer invoices.|
|» StatementContact|body|boolean|false|Set this to true to include this contact in new customer statements/overdue letters.|
|» PrimaryStatementContact|body|boolean|false|Set this to true if this is the primary contact for customer statements/overdue letters.|
|» PrimaryInvoiceContact|body|boolean|false|Set this to true if this is the primary contact for customer invoices.|
|» PrimaryJobContact|body|boolean|false|Set this to true if this is the primary contact for jobs.|
|» PrimaryQuoteContact|body|boolean|false|Set this to true if this is the primary contact for quotes.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
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
  "Contact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string"
  },
  "QuoteContact": true,
  "JobContact": true,
  "InvoiceContact": true,
  "StatementContact": true,
  "PrimaryStatementContact": true,
  "PrimaryInvoiceContact": true,
  "PrimaryJobContact": true,
  "PrimaryQuoteContact": true
}
```

<h3 id="bb33768da9cfcc459a1180269e8392a6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer contact created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="bb33768da9cfcc459a1180269e8392a6-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Title|string|true|none|none|
|» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|string|true|none|Family name / Last name|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|Cell phone / Mobile phone|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» Department|string|true|none|none|
|» Position|string|true|none|none|
|» Notes|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this customer contact. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Contact|object¦null|false|none|Adds an existing contact to a site.|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|»» Email|string|false|none|none|
|» QuoteContact|boolean|true|none|Set this to true to include this contact in new quotes.|
|» JobContact|boolean|true|none|Set this to true to include this contact in new jobs.|
|» InvoiceContact|boolean|true|none|Set this to true to include this contact in new customer invoices.|
|» StatementContact|boolean|true|none|Set this to true to include this contact in new customer statements/overdue letters.|
|» PrimaryStatementContact|boolean|true|none|Set this to true if this is the primary contact for customer statements/overdue letters.|
|» PrimaryInvoiceContact|boolean|true|none|Set this to true if this is the primary contact for customer invoices.|
|» PrimaryJobContact|boolean|true|none|Set this to true if this is the primary contact for jobs.|
|» PrimaryQuoteContact|boolean|true|none|Set this to true if this is the primary contact for quotes.|

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

## e0ebfac448b89bce099463aacc43a79a

<a id="opIde0ebfac448b89bce099463aacc43a79a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}`

*Retrieve details for a specific customer contact.*

<h3 id="e0ebfac448b89bce099463aacc43a79a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
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
  "ID": 0,
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
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
  "Contact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string"
  },
  "QuoteContact": true,
  "JobContact": true,
  "InvoiceContact": true,
  "StatementContact": true,
  "PrimaryStatementContact": true,
  "PrimaryInvoiceContact": true,
  "PrimaryJobContact": true,
  "PrimaryQuoteContact": true
}
```

<h3 id="e0ebfac448b89bce099463aacc43a79a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer contact details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contact not found.|None|

<h3 id="e0ebfac448b89bce099463aacc43a79a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Title|string|true|none|none|
|» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|string|true|none|Family name / Last name|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|Cell phone / Mobile phone|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» Department|string|true|none|none|
|» Position|string|true|none|none|
|» Notes|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this customer contact. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Contact|object¦null|false|none|Adds an existing contact to a site.|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|»» Email|string|false|none|none|
|» QuoteContact|boolean|true|none|Set this to true to include this contact in new quotes.|
|» JobContact|boolean|true|none|Set this to true to include this contact in new jobs.|
|» InvoiceContact|boolean|true|none|Set this to true to include this contact in new customer invoices.|
|» StatementContact|boolean|true|none|Set this to true to include this contact in new customer statements/overdue letters.|
|» PrimaryStatementContact|boolean|true|none|Set this to true if this is the primary contact for customer statements/overdue letters.|
|» PrimaryInvoiceContact|boolean|true|none|Set this to true if this is the primary contact for customer invoices.|
|» PrimaryJobContact|boolean|true|none|Set this to true if this is the primary contact for jobs.|
|» PrimaryQuoteContact|boolean|true|none|Set this to true if this is the primary contact for quotes.|

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

## 42493e3c2324d464a722110748f30713

<a id="opId42493e3c2324d464a722110748f30713"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "QuoteContact": true,
  "JobContact": true,
  "InvoiceContact": true,
  "StatementContact": true,
  "PrimaryStatementContact": true,
  "PrimaryInvoiceContact": true,
  "PrimaryJobContact": true,
  "PrimaryQuoteContact": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}`

*Update a customer contact.*

> Body parameter

```json
{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "QuoteContact": true,
  "JobContact": true,
  "InvoiceContact": true,
  "StatementContact": true,
  "PrimaryStatementContact": true,
  "PrimaryInvoiceContact": true,
  "PrimaryJobContact": true,
  "PrimaryQuoteContact": true
}
```

<h3 id="42493e3c2324d464a722110748f30713-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contactID|path|integer|true|A valid contact id|
|body|body|object|true|Customer contact object|
|» Title|body|string|false|none|
|» GivenName|body|string|false|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|body|string|false|Family name / Last name|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Department|body|string|false|none|
|» Position|body|string|false|none|
|» Notes|body|string|false|none|
|» QuoteContact|body|boolean|false|Set this to true to include this contact in new quotes.|
|» JobContact|body|boolean|false|Set this to true to include this contact in new jobs.|
|» InvoiceContact|body|boolean|false|Set this to true to include this contact in new customer invoices.|
|» StatementContact|body|boolean|false|Set this to true to include this contact in new customer statements/overdue letters.|
|» PrimaryStatementContact|body|boolean|false|Set this to true if this is the primary contact for customer statements/overdue letters.|
|» PrimaryInvoiceContact|body|boolean|false|Set this to true if this is the primary contact for customer invoices.|
|» PrimaryJobContact|body|boolean|false|Set this to true if this is the primary contact for jobs.|
|» PrimaryQuoteContact|body|boolean|false|Set this to true if this is the primary contact for quotes.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="42493e3c2324d464a722110748f30713-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contact updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 9339ddf3527c242b31e86fdd62b14684

<a id="opId9339ddf3527c242b31e86fdd62b14684"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/customers/{customerID}/contacts/{contactID}`

*Delete a customer contact.*

<h3 id="9339ddf3527c242b31e86fdd62b14684-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|customerID|path|integer|true|A valid customer id|
|contactID|path|integer|true|A valid contact id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9339ddf3527c242b31e86fdd62b14684-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer contact deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer contact does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>