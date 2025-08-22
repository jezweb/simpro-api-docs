# Job Cost Center Work Orders

After the works on a job have been completed, you can record the works performed in the job card in Simpro.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Completing-Job-Cards-in-simPRO.htm?Highlight=job%20card">External documentation</a>

## 97fc2be4fc45f535f32c847c95c9a62a

<a id="opId97fc2be4fc45f535f32c847c95c9a62a"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/`

*List all job cost center work orders.*

<h3 id="97fc2be4fc45f535f32c847c95c9a62a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
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
    "WorkOrderDate": "2018-01-19"
  }
]
```

<h3 id="97fc2be4fc45f535f32c847c95c9a62a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all job cost center work orders.|Inline|

<h3 id="97fc2be4fc45f535f32c847c95c9a62a-responseschema">Response Schema</h3>

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

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|

<aside class="success">
This operation does not require authentication
</aside>

## 604db1a39c8ea11cb929d8ac6228923c

<a id="opId604db1a39c8ea11cb929d8ac6228923c"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Staff": 0,
  "WorkOrderDate": "2018-01-19",
  "DescriptionNotes": "string",
  "MaterialNotes": "string",
  "Approved": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/`

*Create a new job cost center work order.*

> Body parameter

```json
{
  "Staff": 0,
  "WorkOrderDate": "2018-01-19",
  "DescriptionNotes": "string",
  "MaterialNotes": "string",
  "Approved": true
}
```

<h3 id="604db1a39c8ea11cb929d8ac6228923c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|body|body|object|true|Job Cost Center Work Order object|
|» Staff|body|integer|true|ID of a staff|
|» WorkOrderDate|body|string(date)|true|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» DescriptionNotes|body|string|false|This column supports HTML formatting.|
|» MaterialNotes|body|string|false|This column supports HTML formatting.|
|» Approved|body|boolean|false|set this to true if the work order has been approved.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

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
  "WorkOrderAssets": [
    {
      "Asset": {
        "ID": 0,
        "AssetType": {
          "ID": 12345,
          "Name": "Fire Extinguisher"
        }
      },
      "Result": "NoTest"
    }
  ]
}
```

<h3 id="604db1a39c8ea11cb929d8ac6228923c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Job Cost Center Work Order created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="604db1a39c8ea11cb929d8ac6228923c-responseschema">Response Schema</h3>

Status Code **201**

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
|» CustomFields|[object]|true|none|All of the custom fields for this job cost center work order. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» WorkOrderAssets|[object]|true|none|none|
|»» Asset|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» AssetType|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»» Result|string|true|none|none|

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
|Result|NoTest|
|Result|Fail|
|Result|Pass|

<aside class="success">
This operation does not require authentication
</aside>

## 129733e12040736e1f8b739050a003bf

<a id="opId129733e12040736e1f8b739050a003bf"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}`

*Retrieve details for a specific job cost center work order.*

<h3 id="129733e12040736e1f8b739050a003bf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|workOrderID|path|integer|true|A valid work order id|
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
  "WorkOrderAssets": [
    {
      "Asset": {
        "ID": 0,
        "AssetType": {
          "ID": 12345,
          "Name": "Fire Extinguisher"
        }
      },
      "Result": "NoTest"
    }
  ]
}
```

<h3 id="129733e12040736e1f8b739050a003bf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Job Cost Center Work Order details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Job Cost Center Work Order not found.|None|

<h3 id="129733e12040736e1f8b739050a003bf-responseschema">Response Schema</h3>

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
|» CustomFields|[object]|true|none|All of the custom fields for this job cost center work order. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» WorkOrderAssets|[object]|true|none|none|
|»» Asset|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» AssetType|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»» Result|string|true|none|none|

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
|Result|NoTest|
|Result|Fail|
|Result|Pass|

<aside class="success">
This operation does not require authentication
</aside>

## 9cd5549dd6eca142b4352bf4ff6a4284

<a id="opId9cd5549dd6eca142b4352bf4ff6a4284"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DescriptionNotes": "string",
  "MaterialNotes": "string",
  "Approved": true,
  "Blocks": [
    {
      "StartTime": "08:00",
      "EndTime": "16:00",
      "ScheduleRate": 0
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/sections/{sectionID}/costCenters/{costCenterID}/workOrders/{workOrderID}`

*Update a job cost center work order.*

> Body parameter

```json
{
  "DescriptionNotes": "string",
  "MaterialNotes": "string",
  "Approved": true,
  "Blocks": [
    {
      "StartTime": "08:00",
      "EndTime": "16:00",
      "ScheduleRate": 0
    }
  ]
}
```

<h3 id="9cd5549dd6eca142b4352bf4ff6a4284-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|sectionID|path|integer|true|A valid section id|
|costCenterID|path|integer|true|A valid cost center id|
|workOrderID|path|integer|true|A valid work order id|
|body|body|object|true|Job Cost Center Work Order object|
|» DescriptionNotes|body|string|false|This column supports HTML formatting.|
|» MaterialNotes|body|string|false|This column supports HTML formatting.|
|» Approved|body|boolean|false|set this to true if the work order has been approved.|
|» Blocks|body|[object]|false|none|
|»» StartTime|body|string|false|Between 00:00 and 24:00|
|»» EndTime|body|string|false|Between 00:00 and 24:00|
|»» ScheduleRate|body|integer|false|ID of a schedule rate|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9cd5549dd6eca142b4352bf4ff6a4284-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Job Cost Center Work Order updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>