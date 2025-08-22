# Plant And Equipment

## e2cf611fac666f96404269e507c7c013

<a id="opIde2cf611fac666f96404269e507c7c013"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/`

*List all plant and equipment.*

<h3 id="e2cf611fac666f96404269e507c7c013-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
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
    "Name": "string"
  }
]
```

<h3 id="e2cf611fac666f96404269e507c7c013-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all plant and equipment.|Inline|

<h3 id="e2cf611fac666f96404269e507c7c013-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 017a68c2ef29d85913b4fe612c7d4ead

<a id="opId017a68c2ef29d85913b4fe612c7d4ead"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "ServiceFee": 0,
  "CheckedOutBy": 0,
  "EnableServicing": true,
  "Servicing": {
    "Frequency": 0,
    "FrequencyType": "Year",
    "StartsIn": 0,
    "StartDate": "2021-04-22"
  },
  "Billable": true,
  "Billing": {
    "CostRate": 1.57,
    "OverheadRate": 1.57,
    "SellRate": 1.57,
    "TaxCode": 0
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/',
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

r = requests.post('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/`

*Create a new plant and equipment.*

> Body parameter

```json
{
  "Name": "string",
  "ServiceFee": 0,
  "CheckedOutBy": 0,
  "EnableServicing": true,
  "Servicing": {
    "Frequency": 0,
    "FrequencyType": "Year",
    "StartsIn": 0,
    "StartDate": "2021-04-22"
  },
  "Billable": true,
  "Billing": {
    "CostRate": 1.57,
    "OverheadRate": 1.57,
    "SellRate": 1.57,
    "TaxCode": 0
  }
}
```

<h3 id="017a68c2ef29d85913b4fe612c7d4ead-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|body|body|object|true|Plant and equipment object|
|» Name|body|string|true|none|
|» ServiceFee|body|integer|false|ID of a service fee|
|» CheckedOutBy|body|integer|false|ID of a staff|
|» EnableServicing|body|boolean|false|none|
|» Servicing|body|object|false|none|
|»» Frequency|body|integer|false|none|
|»» FrequencyType|body|string|false|none|
|»» StartsIn|body|integer|false|This will be used when the service frequency of the plant type is 'hour'.|
|»» StartDate|body|string(date)|false|This will be used when the service frequency of the plant type is 'week' , 'month' , or 'year'.|
|» Billable|body|boolean|false|none|
|» Billing|body|object|false|none|
|»» CostRate|body|number|false|none|
|»» OverheadRate|body|number|false|none|
|»» SellRate|body|number|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» FrequencyType|Year|
|»» FrequencyType|Month|
|»» FrequencyType|Week|
|»» FrequencyType|Hour|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Name": "string",
  "ServiceFee": {
    "ID": 0,
    "Name": "string"
  },
  "CheckedOutBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "EnableServicing": true,
  "Servicing": {
    "Frequency": 0,
    "FrequencyType": "Year",
    "StartsIn": 0,
    "StartDate": "2021-04-22",
    "NextService": {
      "Date": "2021-04-22",
      "Hours": 0
    }
  },
  "Billable": true,
  "Billing": {
    "CostRate": 1.57,
    "OverheadRate": 1.57,
    "SellRate": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    }
  },
  "CustomFields": [
    {
      "CustomField": {
        "ID": 0,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ]
      },
      "Value": "string"
    }
  ],
  "History": [
    {
      "Employee": "string",
      "CheckOut": "2018-05-21T19:53:39+10:00",
      "CheckIn": "2018-05-21T19:53:39+10:00"
    }
  ],
  "Jobs": [
    {
      "JobNo": 0,
      "Customer": "string",
      "Site": "string",
      "StartDate": "2018-05-21T19:53:39+10:00",
      "EndDate": "2018-05-21T19:53:39+10:00",
      "Total": 1.57
    }
  ],
  "Archived": true
}
```

<h3 id="017a68c2ef29d85913b4fe612c7d4ead-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Plant and equipment created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="017a68c2ef29d85913b4fe612c7d4ead-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» ServiceFee|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CheckedOutBy|object|true|none|Set "null" to remove employee/contractor.|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» EnableServicing|boolean|true|none|none|
|» Servicing|object|true|none|none|
|»» Frequency|integer|true|none|none|
|»» FrequencyType|string|true|none|none|
|»» StartsIn|integer|true|none|This will be used when the service frequency of the plant type is 'hour'.|
|»» StartDate|string(date)|true|none|This will be used when the service frequency of the plant type is 'week' , 'month' , or 'year'.|
|»» NextService|object|true|none|none|
|»»» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»»» Hours|integer|true|none|none|
|» Billable|boolean|true|none|none|
|» Billing|object|true|none|none|
|»» CostRate|number|true|none|none|
|»» OverheadRate|number|true|none|none|
|»» SellRate|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» CustomFields|[object]|true|none|none|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»» Value|string¦null|true|none|none|
|» History|[object]|true|none|none|
|»» Employee|string|true|none|none|
|»» CheckOut|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» CheckIn|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Jobs|[object]|true|none|none|
|»» JobNo|integer|true|none|none|
|»» Customer|string|true|none|none|
|»» Site|string|true|none|none|
|»» StartDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» EndDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» Total|number|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|FrequencyType|Year|
|FrequencyType|Month|
|FrequencyType|Week|
|FrequencyType|Hour|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|

<aside class="success">
This operation does not require authentication
</aside>

## 22fc1ee1f7e01c6a978c0bd5925aeed9

<a id="opId22fc1ee1f7e01c6a978c0bd5925aeed9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}`

*Retrieve details for a specific plant and equipment.*

<h3 id="22fc1ee1f7e01c6a978c0bd5925aeed9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
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
  "ServiceFee": {
    "ID": 0,
    "Name": "string"
  },
  "CheckedOutBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "EnableServicing": true,
  "Servicing": {
    "Frequency": 0,
    "FrequencyType": "Year",
    "StartsIn": 0,
    "StartDate": "2021-04-22",
    "NextService": {
      "Date": "2021-04-22",
      "Hours": 0
    }
  },
  "Billable": true,
  "Billing": {
    "CostRate": 1.57,
    "OverheadRate": 1.57,
    "SellRate": 1.57,
    "TaxCode": {
      "ID": 12345,
      "Code": "GST",
      "Type": "Single",
      "Rate": 10
    }
  },
  "CustomFields": [
    {
      "CustomField": {
        "ID": 0,
        "Name": "string",
        "Type": "List",
        "ListItems": [
          "string"
        ]
      },
      "Value": "string"
    }
  ],
  "History": [
    {
      "Employee": "string",
      "CheckOut": "2018-05-21T19:53:39+10:00",
      "CheckIn": "2018-05-21T19:53:39+10:00"
    }
  ],
  "Jobs": [
    {
      "JobNo": 0,
      "Customer": "string",
      "Site": "string",
      "StartDate": "2018-05-21T19:53:39+10:00",
      "EndDate": "2018-05-21T19:53:39+10:00",
      "Total": 1.57
    }
  ],
  "Archived": true
}
```

<h3 id="22fc1ee1f7e01c6a978c0bd5925aeed9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Plant and equipment details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant and equipment not found.|None|

<h3 id="22fc1ee1f7e01c6a978c0bd5925aeed9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» ServiceFee|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» CheckedOutBy|object|true|none|Set "null" to remove employee/contractor.|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» EnableServicing|boolean|true|none|none|
|» Servicing|object|true|none|none|
|»» Frequency|integer|true|none|none|
|»» FrequencyType|string|true|none|none|
|»» StartsIn|integer|true|none|This will be used when the service frequency of the plant type is 'hour'.|
|»» StartDate|string(date)|true|none|This will be used when the service frequency of the plant type is 'week' , 'month' , or 'year'.|
|»» NextService|object|true|none|none|
|»»» Date|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»»» Hours|integer|true|none|none|
|» Billable|boolean|true|none|none|
|» Billing|object|true|none|none|
|»» CostRate|number|true|none|none|
|»» OverheadRate|number|true|none|none|
|»» SellRate|number|true|none|none|
|»» TaxCode|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Code|string|true|none|Tax code|
|»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»» Rate|number|true|none|Tax rate|
|» CustomFields|[object]|true|none|none|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|none|
|»»» ListItems|[string]¦null|true|none|none|
|»» Value|string¦null|true|none|none|
|» History|[object]|true|none|none|
|»» Employee|string|true|none|none|
|»» CheckOut|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» CheckIn|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Jobs|[object]|true|none|none|
|»» JobNo|integer|true|none|none|
|»» Customer|string|true|none|none|
|»» Site|string|true|none|none|
|»» StartDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» EndDate|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|»» Total|number|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|FrequencyType|Year|
|FrequencyType|Month|
|FrequencyType|Week|
|FrequencyType|Hour|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|

<aside class="success">
This operation does not require authentication
</aside>

## efe571f44eb04813c708d3467d991ac0

<a id="opIdefe571f44eb04813c708d3467d991ac0"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "ServiceFee": 0,
  "CheckedOutBy": 0,
  "EnableServicing": true,
  "Servicing": {
    "Frequency": 0,
    "FrequencyType": "Year",
    "StartsIn": 0,
    "StartDate": "2021-04-22"
  },
  "Billable": true,
  "Billing": {
    "CostRate": 1.57,
    "OverheadRate": 1.57,
    "SellRate": 1.57,
    "TaxCode": 0
  },
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}`

*Update a plant and equipment.*

> Body parameter

```json
{
  "Name": "string",
  "ServiceFee": 0,
  "CheckedOutBy": 0,
  "EnableServicing": true,
  "Servicing": {
    "Frequency": 0,
    "FrequencyType": "Year",
    "StartsIn": 0,
    "StartDate": "2021-04-22"
  },
  "Billable": true,
  "Billing": {
    "CostRate": 1.57,
    "OverheadRate": 1.57,
    "SellRate": 1.57,
    "TaxCode": 0
  },
  "Archived": true
}
```

<h3 id="efe571f44eb04813c708d3467d991ac0-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|
|body|body|object|true|Plant and equipment object|
|» Name|body|string|false|none|
|» ServiceFee|body|integer|false|ID of a service fee|
|» CheckedOutBy|body|integer|false|ID of a staff|
|» EnableServicing|body|boolean|false|none|
|» Servicing|body|object|false|none|
|»» Frequency|body|integer|false|none|
|»» FrequencyType|body|string|false|none|
|»» StartsIn|body|integer|false|This will be used when the service frequency of the plant type is 'hour'.|
|»» StartDate|body|string(date)|false|This will be used when the service frequency of the plant type is 'week' , 'month' , or 'year'.|
|» Billable|body|boolean|false|none|
|» Billing|body|object|false|none|
|»» CostRate|body|number|false|none|
|»» OverheadRate|body|number|false|none|
|»» SellRate|body|number|false|none|
|»» TaxCode|body|integer|false|ID of a tax code|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» FrequencyType|Year|
|»» FrequencyType|Month|
|»» FrequencyType|Week|
|»» FrequencyType|Hour|

<h3 id="efe571f44eb04813c708d3467d991ac0-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant and equipment updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## d8891c64a9af2249ff3fcb33ab0ea136

<a id="opIdd8891c64a9af2249ff3fcb33ab0ea136"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/plantTypes/{plantTypeID}/plants/{plantID}`

*Delete a plant and equipment.*

<h3 id="d8891c64a9af2249ff3fcb33ab0ea136-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|plantTypeID|path|integer|true|A valid plant type id|
|plantID|path|integer|true|A valid plant id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="d8891c64a9af2249ff3fcb33ab0ea136-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Plant and equipment deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Plant and equipment does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>