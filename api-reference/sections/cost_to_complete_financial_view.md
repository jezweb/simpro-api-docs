# Cost To Complete - Financial View

## f0df34700ba15ec2e63713033358579f

<a id="opIdf0df34700ba15ec2e63713033358579f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/reports/jobs/costToComplete/financial/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/reports/jobs/costToComplete/financial/',
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

r = requests.get('/api/v1.0/companies/{companyID}/reports/jobs/costToComplete/financial/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/reports/jobs/costToComplete/financial/`

*Report: cost to complete - financial view.*

<h3 id="f0df34700ba15ec2e63713033358579f-parameters">Parameters</h3>

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
    "Total": 1.57,
    "ClaimedToDate": 1.57,
    "BilledPercentage": 1.57,
    "CostToDate": 1.57,
    "CostToComplete": 1.57,
    "PercentageComplete": 1.57,
    "NetMarginToDate": 1.57,
    "ProjectedNetMargin": 1.57
  }
]
```

<h3 id="f0df34700ba15ec2e63713033358579f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Report: cost to complete - financial view.|Inline|

<h3 id="f0df34700ba15ec2e63713033358579f-responseschema">Response Schema</h3>

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
|» Total|number|true|none|none|
|» ClaimedToDate|number|true|none|none|
|» BilledPercentage|number|true|none|none|
|» CostToDate|number|true|none|none|
|» CostToComplete|number|true|none|none|
|» PercentageComplete|number|true|none|none|
|» NetMarginToDate|number|true|none|none|
|» ProjectedNetMargin|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>