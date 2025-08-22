# Contractor Jobs

## 0aec312536f43eeb5e4a82183edd1449

<a id="opId0aec312536f43eeb5e4a82183edd1449"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorJobs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorJobs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorJobs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorJobs/`

*List all contractor jobs.*

<h3 id="0aec312536f43eeb5e4a82183edd1449-parameters">Parameters</h3>

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
    "ProjectType": "string",
    "Contractor": {
      "ID": 0,
      "Name": "string",
      "ContactName": "string"
    },
    "CreatedBy": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "ReverseChargeTax": 1.57
    },
    "_href": "/api/v1.0/companies/{companyID}/jobs|quotes/{jobID|quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/"
  }
]
```

<h3 id="0aec312536f43eeb5e4a82183edd1449-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all contractor jobs.|Inline|

<h3 id="0aec312536f43eeb5e4a82183edd1449-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ProjectType|string|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|» _href|string|true|none|Link to the contractor job resource created withing job/quote cost center.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## a621b4a8e40f900598e6ceec7d7c284c

<a id="opIda621b4a8e40f900598e6ceec7d7c284c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contractorJobs/{contractorJobID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contractorJobs/{contractorJobID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/contractorJobs/{contractorJobID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contractorJobs/{contractorJobID}`

*Retrieve details for a specific contractor job.*

<h3 id="a621b4a8e40f900598e6ceec7d7c284c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contractorJobID|path|integer|true|A valid contractor job id|
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
  "ProjectType": "string",
  "Contractor": {
    "ID": 0,
    "Name": "string",
    "ContactName": "string"
  },
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Status": "Pending",
  "Description": "string",
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "ContractorSupplyMaterials": true,
  "Materials": 1.57,
  "Currency": "string",
  "ExchangeRate": 1.57,
  "Labor": 1.57,
  "TaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Retention": {
    "Amount": 1.57,
    "PerClaim": 1.57,
    "PeriodMonths": 0
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "ReverseChargeTax": 1.57
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
  "_href": "/api/v1.0/companies/{companyID}/jobs|quotes/{jobID|quoteID}/sections/{sectionID}/costCenters/{costCenterID}/contractorJobs/"
}
```

<h3 id="a621b4a8e40f900598e6ceec7d7c284c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contractor Job details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contractor Job not found.|None|

<h3 id="a621b4a8e40f900598e6ceec7d7c284c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» ProjectType|string|true|none|none|
|» Contractor|object|true|none|none|
|»» ID|integer|true|none|ID of an employee|
|»» Name|string|true|none|none|
|»» ContactName|string|true|none|none|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» Status|string|true|none|none|
|» Description|string|true|none|This column supports HTML formatting.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DueDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ContractorSupplyMaterials|boolean|true|none|Set this to true if the contractor will supply the materials themselves.|
|» Materials|number|true|none|none|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Labor|number¦null|false|none|none|
|» TaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Retention|object|true|none|none|
|»» Amount|number|true|none|none|
|»» PerClaim|number|true|none|none|
|»» PeriodMonths|integer|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» ReverseChargeTax|number|true|none|This applies to only for builds in UK and IE.|
|» CustomFields|[object]|true|none|All of the custom fields for this contractor job. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» _href|string|true|none|Link to the contractor job resource created withing job/quote cost center.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Status|Pending|
|Status|Complete|
|Status|For Review|
|Status|Invoiced|
|Status|Archived|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>