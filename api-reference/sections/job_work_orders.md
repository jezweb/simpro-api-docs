# Job Work Orders

## 5ccd1908cd9cdb8f1693c124ed48d99a

<a id="opId5ccd1908cd9cdb8f1693c124ed48d99a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobWorkOrders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobWorkOrders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobWorkOrders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobWorkOrders/`

*List all job work orders.*

<h3 id="5ccd1908cd9cdb8f1693c124ed48d99a-parameters">Parameters</h3>

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
    "Staff": {
      "ID": 123,
      "Name": "John Smith",
      "Type": "employee",
      "TypeId": 0
    },
    "WorkOrderDate": "2018-01-19",
    "Project": {
      "Name": "string",
      "ID": 0,
      "SectionID": 0,
      "CostCenterID": 0,
      "CostCenterName": "string"
    }
  }
]
```

<h3 id="5ccd1908cd9cdb8f1693c124ed48d99a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job work orders.|Inline|

<h3 id="5ccd1908cd9cdb8f1693c124ed48d99a-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» WorkOrderDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Project|object|true|none|none|
|»» Name|string|true|none|none|
|»» ID|integer|true|none|none|
|»» SectionID|integer|true|none|none|
|»» CostCenterID|integer|true|none|none|
|»» CostCenterName|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## ba6f6d896945e471aa57f54e970aae48

<a id="opIdba6f6d896945e471aa57f54e970aae48"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobWorkOrders/{jobWorkOrderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobWorkOrders/{jobWorkOrderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobWorkOrders/{jobWorkOrderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobWorkOrders/{jobWorkOrderID}`

*Retrieve details for a specific job work order.*

<h3 id="ba6f6d896945e471aa57f54e970aae48-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobWorkOrderID|path|integer|true|A valid job work order id|
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
  "Staff": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "WorkOrderDate": "2018-01-19",
  "DescriptionNotes": "string",
  "MaterialNotes": "string",
  "Approved": true,
  "Materials": [
    {
      "ItemID": 0,
      "PartNo": "string",
      "ItemName": "string",
      "Storage": {
        "ID": 0,
        "Name": "string"
      },
      "Used": 0
    }
  ],
  "Blocks": [
    {
      "Hrs": 8,
      "StartTime": "08:00",
      "ISO8601StartTime": "2018-05-21T19:53:39+10:00",
      "EndTime": "16:00",
      "ISO8601EndTime": "2018-05-21T19:53:39+10:00",
      "ScheduleRate": {
        "ID": 12345,
        "Name": "Overtime"
      }
    }
  ],
  "DateModified": "2018-05-21T19:53:39+10:00",
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
  "Project": {
    "Name": "string",
    "ID": 0,
    "SectionID": 0,
    "CostCenterID": 0,
    "CostCenterName": "string"
  }
}
```

<h3 id="ba6f6d896945e471aa57f54e970aae48-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job Work Order details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job Work Order not found.|None|

<h3 id="ba6f6d896945e471aa57f54e970aae48-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Staff|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» WorkOrderDate|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DescriptionNotes|string|true|none|This column supports HTML formatting.|
|» MaterialNotes|string|true|none|This column supports HTML formatting.|
|» Approved|boolean|true|none|set this to true if the work order has been approved.|
|» Materials|[object]|true|none|none|
|»» ItemID|integer|true|none|none|
|»» PartNo|string|true|none|none|
|»» ItemName|string|true|none|none|
|»» Storage|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Used|number|true|none|none|
|» Blocks|[object]|true|none|none|
|»» Hrs|number|true|none|Duration in hours.|
|»» StartTime|string|true|none|Between 00:00 and 24:00|
|»» ISO8601StartTime|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» EndTime|string|true|none|Between 00:00 and 24:00|
|»» ISO8601EndTime|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» ScheduleRate|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this job work order. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Project|object|true|none|none|
|»» Name|string|true|none|none|
|»» ID|integer|true|none|none|
|»» SectionID|integer|true|none|none|
|»» CostCenterID|integer|true|none|none|
|»» CostCenterName|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
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