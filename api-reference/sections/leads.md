# Leads

Use leads to manage potential business opportunities. Once created, you can convert a lead if it is successful, or close a lead if it is unsuccessful.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Create-a-Lead.htm">External documentation</a>

## 31472bf26e05d7a706a53c66e1085e7a

<a id="opId31472bf26e05d7a706a53c66e1085e7a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/leads/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/leads/',
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

r = requests.get('/api/v1.0/companies/{companyID}/leads/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/leads/`

*List all leads.*

<h3 id="31472bf26e05d7a706a53c66e1085e7a-parameters">Parameters</h3>

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
    "Customer": {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    },
    "Site": {
      "ID": 12345,
      "Name": "string"
    }
  }
]
```

<h3 id="31472bf26e05d7a706a53c66e1085e7a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all leads.|Inline|

<h3 id="31472bf26e05d7a706a53c66e1085e7a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## e0221e773721deedc26eb9e5e3c7bcf1

<a id="opIde0221e773721deedc26eb9e5e3c7bcf1"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/leads/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "LeadName": "string",
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Stage": "Open",
  "FollowUpDate": "2021-04-22",
  "Description": "string",
  "Notes": "string",
  "CostCenter": 0,
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Status": 0,
  "Forecast": {
    "EstimatedPrice": 1.57,
    "Probability": 100,
    "ExpectedYear": 1900,
    "ExpectedMonth": 1
  },
  "AutoAdjustStatus": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/leads/',
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

r = requests.post('/api/v1.0/companies/{companyID}/leads/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/leads/`

*Create a new lead.*

> Body parameter

```json
{
  "LeadName": "string",
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Stage": "Open",
  "FollowUpDate": "2021-04-22",
  "Description": "string",
  "Notes": "string",
  "CostCenter": 0,
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Status": 0,
  "Forecast": {
    "EstimatedPrice": 1.57,
    "Probability": 100,
    "ExpectedYear": 1900,
    "ExpectedMonth": 1
  },
  "AutoAdjustStatus": true
}
```

<h3 id="e0221e773721deedc26eb9e5e3c7bcf1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Lead object|
|» LeadName|body|string|false|none|
|» Customer|body|integer|true|ID of a customer|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» Site|body|integer|true|ID of a site|
|» SiteContact|body|integer|false|ID of a contact|
|» Stage|body|string|false|none|
|» FollowUpDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» CostCenter|body|integer|false|ID of a cost center|
|» Tags|body|[integer]|false|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Status|body|integer|false|ID of a project status code|
|» Forecast|body|object|false|none|
|»» EstimatedPrice|body|number|false|none|
|»» Probability|body|integer|false|none|
|»» ExpectedYear|body|integer¦null|false|A year between 1900 and 2999|
|»» ExpectedMonth|body|integer¦null|false|A month between 1 and 12|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Open|
|» Stage|Closed|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "LeadName": "string",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "AdditionalCustomers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
  "CustomerContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "AdditionalContacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "Stage": "Open",
  "FollowUpDate": "2021-04-22",
  "DateCreated": "2021-04-22",
  "Description": "string",
  "Notes": "string",
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Salesperson": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "ProjectManager": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress",
    "Color": "#0000FF"
  },
  "Forecast": {
    "EstimatedPrice": 1.57,
    "Probability": 100,
    "ExpectedYear": 1900,
    "ExpectedMonth": 1
  },
  "AutoAdjustStatus": true,
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
```

<h3 id="e0221e773721deedc26eb9e5e3c7bcf1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Lead created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="e0221e773721deedc26eb9e5e3c7bcf1-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» LeadName|string|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» AdditionalCustomers|[object]|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» CustomerContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» AdditionalContacts|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» SiteContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» Stage|string|true|none|none|
|» FollowUpDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateCreated|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» CostCenter|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Salesperson|object¦null|false|none|Set the salesperson for this lead. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» ProjectManager|object¦null|false|none|Set the project manager for this lead. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Status|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|Status name|
|»» Color|string¦null|false|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Forecast|object|true|none|none|
|»» EstimatedPrice|number|true|none|none|
|»» Probability|integer|true|none|none|
|»» ExpectedYear|integer¦null|false|none|A year between 1900 and 2999|
|»» ExpectedMonth|integer¦null|false|none|A month between 1 and 12|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» CustomFields|[object]|true|none|All of the custom fields for this lead. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Open|
|Stage|Closed|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 0d598a7d2c392fc94385c730e654ac70

<a id="opId0d598a7d2c392fc94385c730e654ac70"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/leads/{leadID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/leads/{leadID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/leads/{leadID}`

*Retrieve details for a specific lead.*

<h3 id="0d598a7d2c392fc94385c730e654ac70-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
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
  "LeadName": "string",
  "Customer": {
    "ID": 12345,
    "CompanyName": "John Smith Pty Ltd",
    "GivenName": "John",
    "FamilyName": "Smith"
  },
  "AdditionalCustomers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
  "CustomerContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "AdditionalContacts": [
    {
      "ID": 0,
      "GivenName": "string",
      "FamilyName": "string"
    }
  ],
  "Site": {
    "ID": 12345,
    "Name": "string"
  },
  "SiteContact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  },
  "Stage": "Open",
  "FollowUpDate": "2021-04-22",
  "DateCreated": "2021-04-22",
  "Description": "string",
  "Notes": "string",
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "Tags": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Salesperson": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "ProjectManager": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress",
    "Color": "#0000FF"
  },
  "Forecast": {
    "EstimatedPrice": 1.57,
    "Probability": 100,
    "ExpectedYear": 1900,
    "ExpectedMonth": 1
  },
  "AutoAdjustStatus": true,
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
```

<h3 id="0d598a7d2c392fc94385c730e654ac70-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Lead details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Lead not found.|None|

<h3 id="0d598a7d2c392fc94385c730e654ac70-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» LeadName|string|true|none|none|
|» Customer|object|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» AdditionalCustomers|[object]|true|none|none|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» CustomerContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» AdditionalContacts|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|»» FamilyName|string|true|none|Family name / Last name|
|» Site|object|true|none|none|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» SiteContact|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|» Stage|string|true|none|none|
|» FollowUpDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DateCreated|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» CostCenter|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Tags|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Salesperson|object¦null|false|none|Set the salesperson for this lead. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» ProjectManager|object¦null|false|none|Set the project manager for this lead. Must be an employee or contractor; it cannot be a plant item.|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Status|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|Status name|
|»» Color|string¦null|false|none|Color code in hex decimal format eg. #0000FF or #00F|
|» Forecast|object|true|none|none|
|»» EstimatedPrice|number|true|none|none|
|»» Probability|integer|true|none|none|
|»» ExpectedYear|integer¦null|false|none|A year between 1900 and 2999|
|»» ExpectedMonth|integer¦null|false|none|A month between 1 and 12|
|» AutoAdjustStatus|boolean|true|none|Set this to false if you would like to set status manually.|
|» CustomFields|[object]|true|none|All of the custom fields for this lead. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»»» IsMandatory|boolean|true|none|none|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Open|
|Stage|Closed|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## a099c9654b7e56499429471e171d8e47

<a id="opIda099c9654b7e56499429471e171d8e47"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/leads/{leadID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "LeadName": "string",
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Stage": "Open",
  "FollowUpDate": "2021-04-22",
  "Description": "string",
  "Notes": "string",
  "CostCenter": 0,
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Status": 0,
  "Forecast": {
    "EstimatedPrice": 1.57,
    "Probability": 100,
    "ExpectedYear": 1900,
    "ExpectedMonth": 1
  },
  "AutoAdjustStatus": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/leads/{leadID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/leads/{leadID}`

*Update a lead.*

> Body parameter

```json
{
  "LeadName": "string",
  "Customer": 0,
  "CustomerContact": 0,
  "AdditionalContacts": [
    0
  ],
  "Site": 0,
  "SiteContact": 0,
  "Stage": "Open",
  "FollowUpDate": "2021-04-22",
  "Description": "string",
  "Notes": "string",
  "CostCenter": 0,
  "Tags": [
    0
  ],
  "Salesperson": 0,
  "ProjectManager": 0,
  "Status": 0,
  "Forecast": {
    "EstimatedPrice": 1.57,
    "Probability": 100,
    "ExpectedYear": 1900,
    "ExpectedMonth": 1
  },
  "AutoAdjustStatus": true
}
```

<h3 id="a099c9654b7e56499429471e171d8e47-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|
|body|body|object|true|Lead object|
|» LeadName|body|string|false|none|
|» Customer|body|integer|false|ID of a customer|
|» CustomerContact|body|integer|false|ID of a contact|
|» AdditionalContacts|body|[integer]|false|none|
|» Site|body|integer|false|ID of a site|
|» SiteContact|body|integer|false|ID of a contact|
|» Stage|body|string|false|none|
|» FollowUpDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» CostCenter|body|integer|false|ID of a cost center|
|» Tags|body|[integer]|false|none|
|» Salesperson|body|integer|false|ID of a staff|
|» ProjectManager|body|integer|false|ID of a staff|
|» Status|body|integer|false|ID of a project status code|
|» Forecast|body|object|false|none|
|»» EstimatedPrice|body|number|false|none|
|»» Probability|body|integer|false|none|
|»» ExpectedYear|body|integer¦null|false|A year between 1900 and 2999|
|»» ExpectedMonth|body|integer¦null|false|A month between 1 and 12|
|» AutoAdjustStatus|body|boolean|false|Set this to false if you would like to set status manually.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Open|
|» Stage|Closed|

<h3 id="a099c9654b7e56499429471e171d8e47-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Lead updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 5358ccd976ba94f9189bde039df2ee96

<a id="opId5358ccd976ba94f9189bde039df2ee96"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/leads/{leadID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/leads/{leadID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/leads/{leadID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/leads/{leadID}`

*Delete a lead.*

<h3 id="5358ccd976ba94f9189bde039df2ee96-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|leadID|path|integer|true|A valid lead id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5358ccd976ba94f9189bde039df2ee96-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Lead deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Lead does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>