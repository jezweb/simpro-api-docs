# Cost To Complete - Operations View

## dccbcdcbb90132aed0636226e2aa0435

<a id="opIddccbcdcbb90132aed0636226e2aa0435"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/reports/jobs/costToComplete/operations/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/reports/jobs/costToComplete/operations/',
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

r = requests.get('/api/v1.0/companies/{companyID}/reports/jobs/costToComplete/operations/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/reports/jobs/costToComplete/operations/`

*Report: cost to complete - operations view.*

<h3 id="dccbcdcbb90132aed0636226e2aa0435-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|date|query|date|false|Filter by date, past and including|
|changeOrders|query|boolean|false|Including variations|
|includeCommitted|query|boolean|false|Committed Costs|
|includeOverheads|query|boolean|false|Overheads in Actuals|
|businessGroup|query|array[integer]|false|Filter by business group, comma separated list can also be provided.|
|costCentre|query|array[integer]|false|Filter by cost centre, comma separated list can also be provided.|
|customerID|query|integer|false|Filter results by a customer|
|siteID|query|integer|false|Filter results by a site|
|customerGroup|query|array[integer]|false|Filter by customer group, comma separated list can also be provided. Input -1 for no association.|
|customerProfile|query|array[integer]|false|Filter by customer profile, comma separated list can also be provided. Input -1 for no association.|
|salesPerson|query|array[integer]|false|Filter by sales person, comma separated list can also be provided. Input -1 for no association.|
|projectManager|query|array[integer]|false|Filter by project manager, comma separated list can also be provided. Input -1 for no association.|
|projectStatus|query|array[integer]|false|Filter by project status, comma separated list can also be provided.|
|projectTags|query|array[integer]|false|Filter by project tags, comma separated list can also be provided. Input -1 for no association.|
|customerTags|query|array[integer]|false|Filter by customer tags, comma separated list can also be provided. Input -1 for no association.|
|jobID|query|integer|false|Filter results by a job|

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
    "Job": {
      "ID": 12345
    },
    "Customer": {
      "ID": 12345
    },
    "Site": {
      "ID": 12345
    },
    "RequestNumber": "string",
    "OriginalEstimatedBudget": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "RevisedEstimatedBudget": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "RevizedEstimatedBudget": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "CurrentBudget": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "ActualToDate": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "ForecastRemaining": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "Variance": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    },
    "Percentage": {
      "Materials": 0,
      "Resources": 0,
      "ResourceHours": 0
    }
  }
]
```

<h3 id="dccbcdcbb90132aed0636226e2aa0435-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Report: cost to complete - operations view.|Inline|

<h3 id="dccbcdcbb90132aed0636226e2aa0435-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Job|object|true|none|none|
|»» ID|integer|false|none|This job's ID|
|» Customer|object|true|none|none|
|»» ID|integer|false|none|This customer's ID|
|» Site|object|true|none|none|
|»» ID|integer|false|none|ID of the site|
|» RequestNumber|string|true|none|none|
|» OriginalEstimatedBudget|object|true|none|none|
|»» Materials|number|false|none|Original estimated amount for materials|
|»» Resources|number|false|none|Original estimated amount for resources|
|»» ResourceHours|number|false|none|Original estimated resource hours|
|» RevisedEstimatedBudget|object|true|none|Deprecated: RevisedEstimatedBudget field is deprecated, please use RevizedEstimatedBudget field|
|»» Materials|number|false|none|Revised estimated amount for materials|
|»» Resources|number|false|none|Revised estimated amount for resources|
|»» ResourceHours|number|false|none|Revised estimated resource hours|
|» RevizedEstimatedBudget|object|true|none|none|
|»» Materials|number|false|none|Revised estimated amount for materials|
|»» Resources|number|false|none|Revised estimated amount for resources|
|»» ResourceHours|number|false|none|Revised estimated resource hours|
|» CurrentBudget|object|true|none|none|
|»» Materials|number|false|none|Amount for materials|
|»» Resources|number|false|none|Amount for resources|
|»» ResourceHours|number|false|none|Resource hours|
|» ActualToDate|object|true|none|none|
|»» Materials|number|false|none|Amount for materials|
|»» Resources|number|false|none|Amount for resources|
|»» ResourceHours|number|false|none|Resource hours|
|» ForecastRemaining|object|true|none|none|
|»» Materials|number|false|none|Remaining forecast amount for materials|
|»» Resources|number|false|none|Remaining forecast amount for resources|
|»» ResourceHours|number|false|none|Remaining forecast resource hours|
|» Variance|object|true|none|none|
|»» Materials|number|false|none|Amount for materials|
|»» Resources|number|false|none|Amount for resources|
|»» ResourceHours|number|false|none|Resource hours|
|» Percentage|object|true|none|none|
|»» Materials|number|false|none|Percentage for materials|
|»» Resources|number|false|none|Percentage for resources|
|»» ResourceHours|number|false|none|Percentage of resource hours|

<aside class="success">
This operation does not require authentication
</aside>