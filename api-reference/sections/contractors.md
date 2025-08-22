# Contractors

Create contractors to manage contractor details and raise work orders for jobs. You can give your contractors access to Connect or the contractor portal so they can view their schedules and update their jobs, as well as manage their team.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Contractors.htm">External documentation</a>

## ffafed3a74cb090205df3f0ff736a570

<a id="opIdffafed3a74cb090205df3f0ff736a570"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractors/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractors/',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractors/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractors/`

*List all contractors.*

<h3 id="ffafed3a74cb090205df3f0ff736a570-parameters">Parameters</h3>

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
    "Name": "string",
    "ContactName": "string"
  }
]
```

<h3 id="ffafed3a74cb090205df3f0ff736a570-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all contractors.|Inline|

<h3 id="ffafed3a74cb090205df3f0ff736a570-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of an employee|
|» Name|string|true|none|none|
|» ContactName|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 01da70e49dda8bd607f46eb7daee6770

<a id="opId01da70e49dda8bd607f46eb7daee6770"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/contractors/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Position": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "DateOfHire": "2021-04-22",
  "DateOfBirth": "2021-04-22",
  "PrimaryContact": {
    "Email": "string",
    "SecondaryEmail": "string",
    "WorkPhone": "string",
    "Extension": "string",
    "CellPhone": "string",
    "Fax": "string",
    "PreferredNotificationMethod": "EmailAndSMS"
  },
  "EmergencyContact": {
    "Name": "string",
    "Relationship": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "AltPhone": "string",
    "Address": "string"
  },
  "AccountSetup": {
    "Username": "string",
    "Password": "string",
    "IsMobility": true,
    "SecurityGroup": 0
  },
  "UserProfile": {
    "IsSalesperson": true,
    "IsProjectManager": true,
    "StorageDevice": 0,
    "PreferredLanguage": "en_US"
  },
  "AssignedCostCenters": [
    0
  ],
  "Zones": [
    0
  ],
  "DefaultZone": 0,
  "DefaultCompany": 0,
  "EIN": "string",
  "SSN": "string",
  "CompanyNumber": "string",
  "ContactName": "string",
  "Currency": "string",
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "Rates": {
    "PayRate": 0,
    "EmploymentCost": 0,
    "Overhead": 0,
    "TaxCode": 0
  },
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractors/',
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

r = requests.post('/api/v1.0/companies/{companyID}/contractors/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/contractors/`

*Create a new contractor.*

> Body parameter

```json
{
  "Name": "string",
  "Position": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "DateOfHire": "2021-04-22",
  "DateOfBirth": "2021-04-22",
  "PrimaryContact": {
    "Email": "string",
    "SecondaryEmail": "string",
    "WorkPhone": "string",
    "Extension": "string",
    "CellPhone": "string",
    "Fax": "string",
    "PreferredNotificationMethod": "EmailAndSMS"
  },
  "EmergencyContact": {
    "Name": "string",
    "Relationship": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "AltPhone": "string",
    "Address": "string"
  },
  "AccountSetup": {
    "Username": "string",
    "Password": "string",
    "IsMobility": true,
    "SecurityGroup": 0
  },
  "UserProfile": {
    "IsSalesperson": true,
    "IsProjectManager": true,
    "StorageDevice": 0,
    "PreferredLanguage": "en_US"
  },
  "AssignedCostCenters": [
    0
  ],
  "Zones": [
    0
  ],
  "DefaultZone": 0,
  "DefaultCompany": 0,
  "EIN": "string",
  "SSN": "string",
  "CompanyNumber": "string",
  "ContactName": "string",
  "Currency": "string",
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "Rates": {
    "PayRate": 0,
    "EmploymentCost": 0,
    "Overhead": 0,
    "TaxCode": 0
  },
  "DisplayOrder": 0
}
```

<h3 id="01da70e49dda8bd607f46eb7daee6770-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Contractor object|
|» Name|body|string|true|none|
|» Position|body|string|false|none|
|» Address|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» DateOfHire|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateOfBirth|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PrimaryContact|body|object|false|none|
|»» Email|body|string|false|none|
|»» SecondaryEmail|body|string|false|none|
|»» WorkPhone|body|string|false|none|
|»» Extension|body|string|false|none|
|»» CellPhone|body|string|false|none|
|»» Fax|body|string|false|none|
|»» PreferredNotificationMethod|body|string¦null|false|none|
|» EmergencyContact|body|object|false|none|
|»» Name|body|string|false|none|
|»» Relationship|body|string|false|none|
|»» WorkPhone|body|string|false|none|
|»» CellPhone|body|string|false|none|
|»» AltPhone|body|string|false|none|
|»» Address|body|string|false|none|
|» AccountSetup|body|object|false|none|
|»» Username|body|string|false|none|
|»» Password|body|string|false|none|
|»» IsMobility|body|boolean|false|none|
|»» SecurityGroup|body|integer|false|ID of a security group|
|» UserProfile|body|object|false|none|
|»» IsSalesperson|body|boolean|false|none|
|»» IsProjectManager|body|boolean|false|none|
|»» StorageDevice|body|integer|false|ID of a storage device|
|»» PreferredLanguage|body|string|false|none|
|» AssignedCostCenters|body|[integer]|false|none|
|» Zones|body|[integer]|false|A zone is a geographical area used to schedule efficiently and minimise travel time for technicians.|
|» DefaultZone|body|integer|false|ID of a zone|
|» DefaultCompany|body|integer|false|ID of a company|
|» EIN|body|string¦null|false|none|
|» SSN|body|string|false|Deprecated: SSN field is deprecated, please use EIN field|
|» CompanyNumber|body|string¦null|false|none|
|» ContactName|body|string|true|none|
|» Currency|body|string|false|none|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|none|
|»» RoutingNo|body|string|false|none|
|»» AccountNo|body|string|false|none|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the contractor payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» Rates|body|object|true|none|
|»» PayRate|body|number|false|none|
|»» EmploymentCost|body|number|false|none|
|»» Overhead|body|number|false|none|
|»» TaxCode|body|integer|true|ID of a tax code|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» PreferredNotificationMethod|EmailAndSMS|
|»» PreferredNotificationMethod|Email|
|»» PreferredNotificationMethod|SMS|
|»» PreferredLanguage|en_AU|
|»» PreferredLanguage|en_GB|
|»» PreferredLanguage|en_US|
|»» PreferredLanguage|es_ES|
|»» PreferredLanguage|es_US|
|»» PreferredLanguage|nl_NL|
|»» PreferredLanguage|de_DE|
|»» PreferredLanguage|fr_FR|
|»» PreferredLanguage|it_IT|
|»» PreferredLanguage|pl_PL|
|»»» Type|Invoice|
|»»» Type|Month|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "Position": "string",
  "Availability": [
    "string"
  ],
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "DateOfHire": "2021-04-22",
  "DateOfBirth": "2021-04-22",
  "PrimaryContact": {
    "Email": "string",
    "SecondaryEmail": "string",
    "WorkPhone": "string",
    "Extension": "string",
    "CellPhone": "string",
    "Fax": "string",
    "PreferredNotificationMethod": "EmailAndSMS"
  },
  "EmergencyContact": {
    "Name": "string",
    "Relationship": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "AltPhone": "string",
    "Address": "string"
  },
  "AccountSetup": {
    "Username": "string",
    "IsMobility": true,
    "SecurityGroup": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "UserProfile": {
    "IsSalesperson": true,
    "IsProjectManager": true,
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "PreferredLanguage": "en_US"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true,
  "AssignedCostCenters": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Zones": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "DefaultZone": {
    "ID": 12345,
    "Name": "string"
  },
  "DefaultCompany": {
    "ID": 0,
    "Name": "simPRO Software Australia"
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
  "EIN": "string",
  "MaskedSSN": "string",
  "CompanyNumber": "string",
  "ContactName": "string",
  "Currency": "string",
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "Rates": {
    "PayRate": 0,
    "EmploymentCost": 0,
    "Overhead": 0,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    }
  },
  "DisplayOrder": 0
}
```

<h3 id="01da70e49dda8bd607f46eb7daee6770-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contractor created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="01da70e49dda8bd607f46eb7daee6770-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of an employee|
|» Name|string|true|none|none|
|» Position|string|true|none|none|
|» Availability|[string]|true|none|An employee's available hours for individual days, weekends, or all weekdays|
|» Address|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» DateOfHire|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateOfBirth|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PrimaryContact|object|true|none|none|
|»» Email|string|true|none|none|
|»» SecondaryEmail|string|true|none|none|
|»» WorkPhone|string|true|none|none|
|»» Extension|string|true|none|none|
|»» CellPhone|string|true|none|none|
|»» Fax|string|true|none|none|
|»» PreferredNotificationMethod|string¦null|false|none|none|
|» EmergencyContact|object|true|none|none|
|»» Name|string|true|none|none|
|»» Relationship|string|true|none|none|
|»» WorkPhone|string|true|none|none|
|»» CellPhone|string|true|none|none|
|»» AltPhone|string|true|none|none|
|»» Address|string|true|none|none|
|» AccountSetup|object|true|none|none|
|»» Username|string|true|none|none|
|»» IsMobility|boolean|true|none|none|
|»» SecurityGroup|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|Security group name|
|» UserProfile|object|true|none|none|
|»» IsSalesperson|boolean|true|none|none|
|»» IsProjectManager|boolean|true|none|none|
|»» StorageDevice|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» PreferredLanguage|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|
|» AssignedCostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Zones|[object]|true|none|A zone is a geographical area used to schedule efficiently and minimise travel time for technicians.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DefaultZone|object|true|none|When the employee / contractor views the schedule, the schedule filters for resources assigned to the default zone.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DefaultCompany|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this contractor. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» EIN|string¦null|false|none|none|
|» MaskedSSN|string¦null|false|none|Deprecated: MaskedSSN field is deprecated, please use EIN field|
|» CompanyNumber|string¦null|false|none|none|
|» ContactName|string|true|none|none|
|» Currency|string|true|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|none|
|»» RoutingNo|string|true|none|none|
|»» AccountNo|string|true|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the contractor payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» Rates|object|true|none|none|
|»» PayRate|number|true|none|none|
|»» EmploymentCost|number|true|none|none|
|»» Overhead|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» DisplayOrder|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|PreferredNotificationMethod|EmailAndSMS|
|PreferredNotificationMethod|Email|
|PreferredNotificationMethod|SMS|
|PreferredLanguage|en_AU|
|PreferredLanguage|en_GB|
|PreferredLanguage|en_US|
|PreferredLanguage|es_ES|
|PreferredLanguage|es_US|
|PreferredLanguage|nl_NL|
|PreferredLanguage|de_DE|
|PreferredLanguage|fr_FR|
|PreferredLanguage|it_IT|
|PreferredLanguage|pl_PL|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|
|Type|Invoice|
|Type|Month|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 8d9700150d3a36cb7925d01bb6fe1065

<a id="opId8d9700150d3a36cb7925d01bb6fe1065"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractors/{contractorID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractors/{contractorID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractors/{contractorID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractors/{contractorID}`

*Retrieve details for a specific contractor.*

<h3 id="8d9700150d3a36cb7925d01bb6fe1065-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorID|path|integer|true|A valid contractor id|
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
  "Name": "string",
  "Position": "string",
  "Availability": [
    "string"
  ],
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "DateOfHire": "2021-04-22",
  "DateOfBirth": "2021-04-22",
  "PrimaryContact": {
    "Email": "string",
    "SecondaryEmail": "string",
    "WorkPhone": "string",
    "Extension": "string",
    "CellPhone": "string",
    "Fax": "string",
    "PreferredNotificationMethod": "EmailAndSMS"
  },
  "EmergencyContact": {
    "Name": "string",
    "Relationship": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "AltPhone": "string",
    "Address": "string"
  },
  "AccountSetup": {
    "Username": "string",
    "IsMobility": true,
    "SecurityGroup": {
      "ID": 12345,
      "Name": "string"
    }
  },
  "UserProfile": {
    "IsSalesperson": true,
    "IsProjectManager": true,
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "PreferredLanguage": "en_US"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true,
  "AssignedCostCenters": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Zones": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "DefaultZone": {
    "ID": 12345,
    "Name": "string"
  },
  "DefaultCompany": {
    "ID": 0,
    "Name": "simPRO Software Australia"
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
  "EIN": "string",
  "MaskedSSN": "string",
  "CompanyNumber": "string",
  "ContactName": "string",
  "Currency": "string",
  "Banking": {
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "PaymentTermID": 0,
    "PaymentTerms": {
      "Days": 0,
      "Type": "Invoice"
    }
  },
  "Rates": {
    "PayRate": 0,
    "EmploymentCost": 0,
    "Overhead": 0,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    }
  },
  "DisplayOrder": 0
}
```

<h3 id="8d9700150d3a36cb7925d01bb6fe1065-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contractor details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor not found.|None|

<h3 id="8d9700150d3a36cb7925d01bb6fe1065-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|ID of an employee|
|» Name|string|true|none|none|
|» Position|string|true|none|none|
|» Availability|[string]|true|none|An employee's available hours for individual days, weekends, or all weekdays|
|» Address|object|true|none|none|
|»» Address|string|true|none|none|
|»» City|string|true|none|none|
|»» State|string|true|none|none|
|»» PostalCode|string|true|none|none|
|»» Country|string|true|none|none|
|» DateOfHire|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateOfBirth|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PrimaryContact|object|true|none|none|
|»» Email|string|true|none|none|
|»» SecondaryEmail|string|true|none|none|
|»» WorkPhone|string|true|none|none|
|»» Extension|string|true|none|none|
|»» CellPhone|string|true|none|none|
|»» Fax|string|true|none|none|
|»» PreferredNotificationMethod|string¦null|false|none|none|
|» EmergencyContact|object|true|none|none|
|»» Name|string|true|none|none|
|»» Relationship|string|true|none|none|
|»» WorkPhone|string|true|none|none|
|»» CellPhone|string|true|none|none|
|»» AltPhone|string|true|none|none|
|»» Address|string|true|none|none|
|» AccountSetup|object|true|none|none|
|»» Username|string|true|none|none|
|»» IsMobility|boolean|true|none|none|
|»» SecurityGroup|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|Security group name|
|» UserProfile|object|true|none|none|
|»» IsSalesperson|boolean|true|none|none|
|»» IsProjectManager|boolean|true|none|none|
|»» StorageDevice|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|»» PreferredLanguage|string|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|
|» AssignedCostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Zones|[object]|true|none|A zone is a geographical area used to schedule efficiently and minimise travel time for technicians.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DefaultZone|object|true|none|When the employee / contractor views the schedule, the schedule filters for resources assigned to the default zone.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DefaultCompany|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this contractor. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» EIN|string¦null|false|none|none|
|» MaskedSSN|string¦null|false|none|Deprecated: MaskedSSN field is deprecated, please use EIN field|
|» CompanyNumber|string¦null|false|none|none|
|» ContactName|string|true|none|none|
|» Currency|string|true|none|none|
|» Banking|object|true|none|none|
|»» AccountName|string|true|none|none|
|»» RoutingNo|string|true|none|none|
|»» AccountNo|string|true|none|none|
|»» PaymentTermID|integer|true|none|ID of a Payment Term<br />This param is recommended for setting up the contractor payment term|
|»» PaymentTerms|object|true|none|none|
|»»» Days|integer|true|none|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|string|true|none|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» Rates|object|true|none|none|
|»» PayRate|number|true|none|none|
|»» EmploymentCost|number|true|none|none|
|»» Overhead|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» DisplayOrder|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|PreferredNotificationMethod|EmailAndSMS|
|PreferredNotificationMethod|Email|
|PreferredNotificationMethod|SMS|
|PreferredLanguage|en_AU|
|PreferredLanguage|en_GB|
|PreferredLanguage|en_US|
|PreferredLanguage|es_ES|
|PreferredLanguage|es_US|
|PreferredLanguage|nl_NL|
|PreferredLanguage|de_DE|
|PreferredLanguage|fr_FR|
|PreferredLanguage|it_IT|
|PreferredLanguage|pl_PL|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|
|Type|Invoice|
|Type|Month|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 20b15aa8b7f4a05ee69003be714fc841

<a id="opId20b15aa8b7f4a05ee69003be714fc841"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/contractors/{contractorID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Position": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "DateOfHire": "2021-04-22",
  "DateOfBirth": "2021-04-22",
  "PrimaryContact": {
    "Email": "string",
    "SecondaryEmail": "string",
    "WorkPhone": "string",
    "Extension": "string",
    "CellPhone": "string",
    "Fax": "string",
    "PreferredNotificationMethod": "EmailAndSMS"
  },
  "EmergencyContact": {
    "Name": "string",
    "Relationship": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "AltPhone": "string",
    "Address": "string"
  },
  "AccountSetup": {
    "Username": "string",
    "Password": "string",
    "IsMobility": true,
    "SecurityGroup": 0
  },
  "UserProfile": {
    "IsSalesperson": true,
    "IsProjectManager": true,
    "StorageDevice": 0,
    "PreferredLanguage": "en_US"
  },
  "Archived": true,
  "AssignedCostCenters": [
    0
  ],
  "Zones": [
    0
  ],
  "DefaultZone": 0,
  "DefaultCompany": 0,
  "EIN": "string",
  "SSN": "string",
  "CompanyNumber": "string",
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
  },
  "Rates": {
    "PayRate": 0,
    "EmploymentCost": 0,
    "Overhead": 0,
    "TaxCode": 0
  },
  "DisplayOrder": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractors/{contractorID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/contractors/{contractorID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/contractors/{contractorID}`

*Update a contractor.*

> Body parameter

```json
{
  "Name": "string",
  "Position": "string",
  "Address": {
    "Address": "string",
    "City": "string",
    "State": "string",
    "PostalCode": "string",
    "Country": "string"
  },
  "DateOfHire": "2021-04-22",
  "DateOfBirth": "2021-04-22",
  "PrimaryContact": {
    "Email": "string",
    "SecondaryEmail": "string",
    "WorkPhone": "string",
    "Extension": "string",
    "CellPhone": "string",
    "Fax": "string",
    "PreferredNotificationMethod": "EmailAndSMS"
  },
  "EmergencyContact": {
    "Name": "string",
    "Relationship": "string",
    "WorkPhone": "string",
    "CellPhone": "string",
    "AltPhone": "string",
    "Address": "string"
  },
  "AccountSetup": {
    "Username": "string",
    "Password": "string",
    "IsMobility": true,
    "SecurityGroup": 0
  },
  "UserProfile": {
    "IsSalesperson": true,
    "IsProjectManager": true,
    "StorageDevice": 0,
    "PreferredLanguage": "en_US"
  },
  "Archived": true,
  "AssignedCostCenters": [
    0
  ],
  "Zones": [
    0
  ],
  "DefaultZone": 0,
  "DefaultCompany": 0,
  "EIN": "string",
  "SSN": "string",
  "CompanyNumber": "string",
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
  },
  "Rates": {
    "PayRate": 0,
    "EmploymentCost": 0,
    "Overhead": 0,
    "TaxCode": 0
  },
  "DisplayOrder": 0
}
```

<h3 id="20b15aa8b7f4a05ee69003be714fc841-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorID|path|integer|true|A valid contractor id|
|body|body|object|true|Contractor object|
|» Name|body|string|false|none|
|» Position|body|string|false|none|
|» Address|body|object|false|none|
|»» Address|body|string|false|none|
|»» City|body|string|false|none|
|»» State|body|string|false|none|
|»» PostalCode|body|string|false|none|
|»» Country|body|string|false|none|
|» DateOfHire|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateOfBirth|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PrimaryContact|body|object|false|none|
|»» Email|body|string|false|none|
|»» SecondaryEmail|body|string|false|none|
|»» WorkPhone|body|string|false|none|
|»» Extension|body|string|false|none|
|»» CellPhone|body|string|false|none|
|»» Fax|body|string|false|none|
|»» PreferredNotificationMethod|body|string¦null|false|none|
|» EmergencyContact|body|object|false|none|
|»» Name|body|string|false|none|
|»» Relationship|body|string|false|none|
|»» WorkPhone|body|string|false|none|
|»» CellPhone|body|string|false|none|
|»» AltPhone|body|string|false|none|
|»» Address|body|string|false|none|
|» AccountSetup|body|object|false|none|
|»» Username|body|string|false|none|
|»» Password|body|string|false|none|
|»» IsMobility|body|boolean|false|none|
|»» SecurityGroup|body|integer|false|ID of a security group|
|» UserProfile|body|object|false|none|
|»» IsSalesperson|body|boolean|false|none|
|»» IsProjectManager|body|boolean|false|none|
|»» StorageDevice|body|integer|false|ID of a storage device|
|»» PreferredLanguage|body|string|false|none|
|» Archived|body|boolean|false|none|
|» AssignedCostCenters|body|[integer]|false|none|
|» Zones|body|[integer]|false|A zone is a geographical area used to schedule efficiently and minimise travel time for technicians.|
|» DefaultZone|body|integer|false|ID of a zone|
|» DefaultCompany|body|integer|false|ID of a company|
|» EIN|body|string¦null|false|none|
|» SSN|body|string|false|Deprecated: SSN field is deprecated, please use EIN field|
|» CompanyNumber|body|string¦null|false|none|
|» ContactName|body|string|false|none|
|» Banking|body|object|false|none|
|»» AccountName|body|string|false|none|
|»» RoutingNo|body|string|false|none|
|»» AccountNo|body|string|false|none|
|»» PaymentTermID|body|integer|false|ID of a Payment Term<br />This param is recommended for setting up the contractor payment term|
|»» PaymentTerms|body|object|false|none|
|»»» Days|body|integer|false|Number of days after which the invoice is due<br />Please note this param will be deprecated in API v2|
|»»» Type|body|string|false|Whether the number of days are from the invoice date, or the end of the month<br />Please note this param will be deprecated in API v2|
|» Rates|body|object|false|none|
|»» PayRate|body|number|false|none|
|»» EmploymentCost|body|number|false|none|
|»» Overhead|body|number|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|
|» DisplayOrder|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» PreferredNotificationMethod|EmailAndSMS|
|»» PreferredNotificationMethod|Email|
|»» PreferredNotificationMethod|SMS|
|»» PreferredLanguage|en_AU|
|»» PreferredLanguage|en_GB|
|»» PreferredLanguage|en_US|
|»» PreferredLanguage|es_ES|
|»» PreferredLanguage|es_US|
|»» PreferredLanguage|nl_NL|
|»» PreferredLanguage|de_DE|
|»» PreferredLanguage|fr_FR|
|»» PreferredLanguage|it_IT|
|»» PreferredLanguage|pl_PL|
|»»» Type|Invoice|
|»»» Type|Month|

<h3 id="20b15aa8b7f4a05ee69003be714fc841-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e8518b62788182ebec80bd8a586c1287

<a id="opIde8518b62788182ebec80bd8a586c1287"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/contractors/{contractorID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/contractors/{contractorID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/contractors/{contractorID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/contractors/{contractorID}`

*Delete a contractor.*

<h3 id="e8518b62788182ebec80bd8a586c1287-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorID|path|integer|true|A valid contractor id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e8518b62788182ebec80bd8a586c1287-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contractor deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>