# Webhook Subscriptions

## 7b80731ec9abe936cf6abee618b067e8

<a id="opId7b80731ec9abe936cf6abee618b067e8"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/webhooks/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/webhooks/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/webhooks/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/webhooks/`

*List all webhook subscriptions.*

<h3 id="7b80731ec9abe936cf6abee618b067e8-parameters">Parameters</h3>

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
    "ID": 12345,
    "Name": "Job Update Trigger"
  }
]
```

<h3 id="7b80731ec9abe936cf6abee618b067e8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all webhook subscriptions.|Inline|

<h3 id="7b80731ec9abe936cf6abee618b067e8-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 98d319970f6244efb00042b7ca63ba5d

<a id="opId98d319970f6244efb00042b7ca63ba5d"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/webhooks/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Job Update Trigger",
  "CallbackURL": "string",
  "Secret": "string",
  "Email": "address@example.com",
  "Description": "string",
  "Events": [
    "asset.types.created"
  ],
  "Status": "Enabled"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/webhooks/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/webhooks/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/webhooks/`

*Create a new webhook subscription.*

> Body parameter

```json
{
  "Name": "Job Update Trigger",
  "CallbackURL": "string",
  "Secret": "string",
  "Email": "address@example.com",
  "Description": "string",
  "Events": [
    "asset.types.created"
  ],
  "Status": "Enabled"
}
```

<h3 id="98d319970f6244efb00042b7ca63ba5d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Webhook Subscription object|
|» Name|body|string|true|none|
|» CallbackURL|body|string|true|none|
|» Secret|body|string|false|none|
|» Email|body|string¦null|false|Standard email address format eg. address@example.com|
|» Description|body|string|false|none|
|» Events|body|[string]|false|none|
|»» Events|body|string|false|none|
|» Status|body|string|false|Subscription status|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Events|asset.types.created|
|» Events|asset.types.updated|
|» Events|asset.types.deleted|
|» Events|asset.created|
|» Events|asset.updated|
|» Events|asset.deleted|
|» Events|contact.created|
|» Events|contact.updated|
|» Events|contact.deleted|
|» Events|company.customer.created|
|» Events|company.customer.updated|
|» Events|company.customer.deleted|
|» Events|individual.customer.created|
|» Events|individual.customer.updated|
|» Events|individual.customer.deleted|
|» Events|employee.created|
|» Events|employee.updated|
|» Events|employee.deleted|
|» Events|credit.created|
|» Events|credit.status|
|» Events|credit.updated|
|» Events|credit.deleted|
|» Events|credit.stage.approved|
|» Events|credit.stage.pending|
|» Events|invoice.created|
|» Events|invoice.status|
|» Events|invoice.updated|
|» Events|invoice.deleted|
|» Events|invoice.stage.approved|
|» Events|invoice.stage.pending|
|» Events|payment.created|
|» Events|payment.updated|
|» Events|payment.deleted|
|» Events|recurring.invoice.created|
|» Events|recurring.invoice.updated|
|» Events|recurring.invoice.deleted|
|» Events|contractor.job.created|
|» Events|contractor.job.updated|
|» Events|contractor.job.deleted|
|» Events|job.asset.assigned|
|» Events|job.asset.removed|
|» Events|job.asset.tested|
|» Events|job.attachment.created|
|» Events|job.attachment.updated|
|» Events|job.attachment.deleted|
|» Events|job.created|
|» Events|job.status|
|» Events|job.updated|
|» Events|job.deleted|
|» Events|job.note.created|
|» Events|job.note.updated|
|» Events|job.stage.pending|
|» Events|job.stage.progress|
|» Events|job.stage.complete|
|» Events|job.stage.invoiced|
|» Events|job.stage.archived|
|» Events|lead.created|
|» Events|lead.status|
|» Events|lead.updated|
|» Events|lead.deleted|
|» Events|quote.asset.assigned|
|» Events|quote.asset.removed|
|» Events|quote.asset.tested|
|» Events|quote.attachment.created|
|» Events|quote.attachment.updated|
|» Events|quote.attachment.deleted|
|» Events|quote.created|
|» Events|quote.status|
|» Events|quote.updated|
|» Events|quote.deleted|
|» Events|activity.schedule.created|
|» Events|activity.schedule.updated|
|» Events|activity.schedule.deleted|
|» Events|job.schedule.created|
|» Events|job.schedule.updated|
|» Events|job.schedule.deleted|
|» Events|lead.schedule.created|
|» Events|lead.schedule.updated|
|» Events|lead.schedule.deleted|
|» Events|quote.schedule.created|
|» Events|quote.schedule.updated|
|» Events|quote.schedule.deleted|
|» Events|site.attachment.created|
|» Events|site.attachment.updated|
|» Events|site.attachment.deleted|
|» Events|site.created|
|» Events|site.updated|
|» Events|site.deleted|
|» Events|purchase.order.created|
|» Events|purchase.order.updated|
|» Events|purchase.order.deleted|
|» Events|purchase.order.receipt.created|
|» Events|purchase.order.receipt.updated|
|» Events|purchase.order.receipt.deleted|
|»» Events|asset.types.created|
|»» Events|asset.types.updated|
|»» Events|asset.types.deleted|
|»» Events|asset.created|
|»» Events|asset.updated|
|»» Events|asset.deleted|
|»» Events|contact.created|
|»» Events|contact.updated|
|»» Events|contact.deleted|
|»» Events|company.customer.created|
|»» Events|company.customer.updated|
|»» Events|company.customer.deleted|
|»» Events|individual.customer.created|
|»» Events|individual.customer.updated|
|»» Events|individual.customer.deleted|
|»» Events|employee.created|
|»» Events|employee.updated|
|»» Events|employee.deleted|
|»» Events|credit.created|
|»» Events|credit.status|
|»» Events|credit.updated|
|»» Events|credit.deleted|
|»» Events|credit.stage.approved|
|»» Events|credit.stage.pending|
|»» Events|invoice.created|
|»» Events|invoice.status|
|»» Events|invoice.updated|
|»» Events|invoice.deleted|
|»» Events|invoice.stage.approved|
|»» Events|invoice.stage.pending|
|»» Events|payment.created|
|»» Events|payment.updated|
|»» Events|payment.deleted|
|»» Events|recurring.invoice.created|
|»» Events|recurring.invoice.updated|
|»» Events|recurring.invoice.deleted|
|»» Events|contractor.job.created|
|»» Events|contractor.job.updated|
|»» Events|contractor.job.deleted|
|»» Events|job.asset.assigned|
|»» Events|job.asset.removed|
|»» Events|job.asset.tested|
|»» Events|job.attachment.created|
|»» Events|job.attachment.updated|
|»» Events|job.attachment.deleted|
|»» Events|job.created|
|»» Events|job.status|
|»» Events|job.updated|
|»» Events|job.deleted|
|»» Events|job.note.created|
|»» Events|job.note.updated|
|»» Events|job.stage.pending|
|»» Events|job.stage.progress|
|»» Events|job.stage.complete|
|»» Events|job.stage.invoiced|
|»» Events|job.stage.archived|
|»» Events|lead.created|
|»» Events|lead.status|
|»» Events|lead.updated|
|»» Events|lead.deleted|
|»» Events|quote.asset.assigned|
|»» Events|quote.asset.removed|
|»» Events|quote.asset.tested|
|»» Events|quote.attachment.created|
|»» Events|quote.attachment.updated|
|»» Events|quote.attachment.deleted|
|»» Events|quote.created|
|»» Events|quote.status|
|»» Events|quote.updated|
|»» Events|quote.deleted|
|»» Events|activity.schedule.created|
|»» Events|activity.schedule.updated|
|»» Events|activity.schedule.deleted|
|»» Events|job.schedule.created|
|»» Events|job.schedule.updated|
|»» Events|job.schedule.deleted|
|»» Events|lead.schedule.created|
|»» Events|lead.schedule.updated|
|»» Events|lead.schedule.deleted|
|»» Events|quote.schedule.created|
|»» Events|quote.schedule.updated|
|»» Events|quote.schedule.deleted|
|»» Events|site.attachment.created|
|»» Events|site.attachment.updated|
|»» Events|site.attachment.deleted|
|»» Events|site.created|
|»» Events|site.updated|
|»» Events|site.deleted|
|»» Events|purchase.order.created|
|»» Events|purchase.order.updated|
|»» Events|purchase.order.deleted|
|»» Events|purchase.order.receipt.created|
|»» Events|purchase.order.receipt.updated|
|»» Events|purchase.order.receipt.deleted|
|» Status|Enabled|
|» Status|Disabled|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Job Update Trigger",
  "CallbackURL": "string",
  "Secret": "string",
  "Email": "address@example.com",
  "Description": "string",
  "Events": [
    "asset.types.created"
  ],
  "Status": "Enabled",
  "DateCreated": "2021-04-22"
}
```

<h3 id="98d319970f6244efb00042b7ca63ba5d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Webhook Subscription created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="98d319970f6244efb00042b7ca63ba5d-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CallbackURL|string|true|none|none|
|» Secret|string|true|none|none|
|» Email|string¦null|false|none|Standard email address format eg. address@example.com|
|» Description|string|true|none|none|
|» Events|[string]|true|none|none|
|»» Events|string|false|none|none|
|» Status|string|true|none|Subscription status|
|» DateCreated|string(date)|true|none|Date in YYYY-MM-DD format eg. 2018-05-13|

#### Enumerated Values

|Property|Value|
|---|---|
|Events|asset.types.created|
|Events|asset.types.updated|
|Events|asset.types.deleted|
|Events|asset.created|
|Events|asset.updated|
|Events|asset.deleted|
|Events|contact.created|
|Events|contact.updated|
|Events|contact.deleted|
|Events|company.customer.created|
|Events|company.customer.updated|
|Events|company.customer.deleted|
|Events|individual.customer.created|
|Events|individual.customer.updated|
|Events|individual.customer.deleted|
|Events|employee.created|
|Events|employee.updated|
|Events|employee.deleted|
|Events|credit.created|
|Events|credit.status|
|Events|credit.updated|
|Events|credit.deleted|
|Events|credit.stage.approved|
|Events|credit.stage.pending|
|Events|invoice.created|
|Events|invoice.status|
|Events|invoice.updated|
|Events|invoice.deleted|
|Events|invoice.stage.approved|
|Events|invoice.stage.pending|
|Events|payment.created|
|Events|payment.updated|
|Events|payment.deleted|
|Events|recurring.invoice.created|
|Events|recurring.invoice.updated|
|Events|recurring.invoice.deleted|
|Events|contractor.job.created|
|Events|contractor.job.updated|
|Events|contractor.job.deleted|
|Events|job.asset.assigned|
|Events|job.asset.removed|
|Events|job.asset.tested|
|Events|job.attachment.created|
|Events|job.attachment.updated|
|Events|job.attachment.deleted|
|Events|job.created|
|Events|job.status|
|Events|job.updated|
|Events|job.deleted|
|Events|job.note.created|
|Events|job.note.updated|
|Events|job.stage.pending|
|Events|job.stage.progress|
|Events|job.stage.complete|
|Events|job.stage.invoiced|
|Events|job.stage.archived|
|Events|lead.created|
|Events|lead.status|
|Events|lead.updated|
|Events|lead.deleted|
|Events|quote.asset.assigned|
|Events|quote.asset.removed|
|Events|quote.asset.tested|
|Events|quote.attachment.created|
|Events|quote.attachment.updated|
|Events|quote.attachment.deleted|
|Events|quote.created|
|Events|quote.status|
|Events|quote.updated|
|Events|quote.deleted|
|Events|activity.schedule.created|
|Events|activity.schedule.updated|
|Events|activity.schedule.deleted|
|Events|job.schedule.created|
|Events|job.schedule.updated|
|Events|job.schedule.deleted|
|Events|lead.schedule.created|
|Events|lead.schedule.updated|
|Events|lead.schedule.deleted|
|Events|quote.schedule.created|
|Events|quote.schedule.updated|
|Events|quote.schedule.deleted|
|Events|site.attachment.created|
|Events|site.attachment.updated|
|Events|site.attachment.deleted|
|Events|site.created|
|Events|site.updated|
|Events|site.deleted|
|Events|purchase.order.created|
|Events|purchase.order.updated|
|Events|purchase.order.deleted|
|Events|purchase.order.receipt.created|
|Events|purchase.order.receipt.updated|
|Events|purchase.order.receipt.deleted|
|Status|Enabled|
|Status|Disabled|

<aside class="success">
This operation does not require authentication
</aside>

## 5fc671bb3895fc27e6087e3a20a547f9

<a id="opId5fc671bb3895fc27e6087e3a20a547f9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/webhooks/{webhookID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}`

*Retrieve details for a specific webhook subscription.*

<h3 id="5fc671bb3895fc27e6087e3a20a547f9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|webhookID|path|integer|true|A valid webhook id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "ID": 12345,
  "Name": "Job Update Trigger",
  "CallbackURL": "string",
  "Secret": "string",
  "Email": "address@example.com",
  "Description": "string",
  "Events": [
    "asset.types.created"
  ],
  "Status": "Enabled",
  "DateCreated": "2021-04-22"
}
```

<h3 id="5fc671bb3895fc27e6087e3a20a547f9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Webhook Subscription details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Webhook Subscription not found.|None|

<h3 id="5fc671bb3895fc27e6087e3a20a547f9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» CallbackURL|string|true|none|none|
|» Secret|string|true|none|none|
|» Email|string¦null|false|none|Standard email address format eg. address@example.com|
|» Description|string|true|none|none|
|» Events|[string]|true|none|none|
|»» Events|string|false|none|none|
|» Status|string|true|none|Subscription status|
|» DateCreated|string(date)|true|none|Date in YYYY-MM-DD format eg. 2018-05-13|

#### Enumerated Values

|Property|Value|
|---|---|
|Events|asset.types.created|
|Events|asset.types.updated|
|Events|asset.types.deleted|
|Events|asset.created|
|Events|asset.updated|
|Events|asset.deleted|
|Events|contact.created|
|Events|contact.updated|
|Events|contact.deleted|
|Events|company.customer.created|
|Events|company.customer.updated|
|Events|company.customer.deleted|
|Events|individual.customer.created|
|Events|individual.customer.updated|
|Events|individual.customer.deleted|
|Events|employee.created|
|Events|employee.updated|
|Events|employee.deleted|
|Events|credit.created|
|Events|credit.status|
|Events|credit.updated|
|Events|credit.deleted|
|Events|credit.stage.approved|
|Events|credit.stage.pending|
|Events|invoice.created|
|Events|invoice.status|
|Events|invoice.updated|
|Events|invoice.deleted|
|Events|invoice.stage.approved|
|Events|invoice.stage.pending|
|Events|payment.created|
|Events|payment.updated|
|Events|payment.deleted|
|Events|recurring.invoice.created|
|Events|recurring.invoice.updated|
|Events|recurring.invoice.deleted|
|Events|contractor.job.created|
|Events|contractor.job.updated|
|Events|contractor.job.deleted|
|Events|job.asset.assigned|
|Events|job.asset.removed|
|Events|job.asset.tested|
|Events|job.attachment.created|
|Events|job.attachment.updated|
|Events|job.attachment.deleted|
|Events|job.created|
|Events|job.status|
|Events|job.updated|
|Events|job.deleted|
|Events|job.note.created|
|Events|job.note.updated|
|Events|job.stage.pending|
|Events|job.stage.progress|
|Events|job.stage.complete|
|Events|job.stage.invoiced|
|Events|job.stage.archived|
|Events|lead.created|
|Events|lead.status|
|Events|lead.updated|
|Events|lead.deleted|
|Events|quote.asset.assigned|
|Events|quote.asset.removed|
|Events|quote.asset.tested|
|Events|quote.attachment.created|
|Events|quote.attachment.updated|
|Events|quote.attachment.deleted|
|Events|quote.created|
|Events|quote.status|
|Events|quote.updated|
|Events|quote.deleted|
|Events|activity.schedule.created|
|Events|activity.schedule.updated|
|Events|activity.schedule.deleted|
|Events|job.schedule.created|
|Events|job.schedule.updated|
|Events|job.schedule.deleted|
|Events|lead.schedule.created|
|Events|lead.schedule.updated|
|Events|lead.schedule.deleted|
|Events|quote.schedule.created|
|Events|quote.schedule.updated|
|Events|quote.schedule.deleted|
|Events|site.attachment.created|
|Events|site.attachment.updated|
|Events|site.attachment.deleted|
|Events|site.created|
|Events|site.updated|
|Events|site.deleted|
|Events|purchase.order.created|
|Events|purchase.order.updated|
|Events|purchase.order.deleted|
|Events|purchase.order.receipt.created|
|Events|purchase.order.receipt.updated|
|Events|purchase.order.receipt.deleted|
|Status|Enabled|
|Status|Disabled|

<aside class="success">
This operation does not require authentication
</aside>

## 01569e9cd6db9850ac3b5a51a0424975

<a id="opId01569e9cd6db9850ac3b5a51a0424975"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/webhooks/{webhookID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Job Update Trigger",
  "CallbackURL": "string",
  "Secret": "string",
  "Email": "address@example.com",
  "Description": "string",
  "Events": [
    "asset.types.created"
  ],
  "Status": "Enabled"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}`

*Update a webhook subscription.*

> Body parameter

```json
{
  "Name": "Job Update Trigger",
  "CallbackURL": "string",
  "Secret": "string",
  "Email": "address@example.com",
  "Description": "string",
  "Events": [
    "asset.types.created"
  ],
  "Status": "Enabled"
}
```

<h3 id="01569e9cd6db9850ac3b5a51a0424975-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|webhookID|path|integer|true|A valid webhook id|
|body|body|object|true|Webhook Subscription object|
|» Name|body|string|false|none|
|» CallbackURL|body|string|false|none|
|» Secret|body|string|false|none|
|» Email|body|string¦null|false|Standard email address format eg. address@example.com|
|» Description|body|string|false|none|
|» Events|body|[string]|false|none|
|»» Events|body|string|false|none|
|» Status|body|string|false|Subscription status|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Events|asset.types.created|
|» Events|asset.types.updated|
|» Events|asset.types.deleted|
|» Events|asset.created|
|» Events|asset.updated|
|» Events|asset.deleted|
|» Events|contact.created|
|» Events|contact.updated|
|» Events|contact.deleted|
|» Events|company.customer.created|
|» Events|company.customer.updated|
|» Events|company.customer.deleted|
|» Events|individual.customer.created|
|» Events|individual.customer.updated|
|» Events|individual.customer.deleted|
|» Events|employee.created|
|» Events|employee.updated|
|» Events|employee.deleted|
|» Events|credit.created|
|» Events|credit.status|
|» Events|credit.updated|
|» Events|credit.deleted|
|» Events|credit.stage.approved|
|» Events|credit.stage.pending|
|» Events|invoice.created|
|» Events|invoice.status|
|» Events|invoice.updated|
|» Events|invoice.deleted|
|» Events|invoice.stage.approved|
|» Events|invoice.stage.pending|
|» Events|payment.created|
|» Events|payment.updated|
|» Events|payment.deleted|
|» Events|recurring.invoice.created|
|» Events|recurring.invoice.updated|
|» Events|recurring.invoice.deleted|
|» Events|contractor.job.created|
|» Events|contractor.job.updated|
|» Events|contractor.job.deleted|
|» Events|job.asset.assigned|
|» Events|job.asset.removed|
|» Events|job.asset.tested|
|» Events|job.attachment.created|
|» Events|job.attachment.updated|
|» Events|job.attachment.deleted|
|» Events|job.created|
|» Events|job.status|
|» Events|job.updated|
|» Events|job.deleted|
|» Events|job.note.created|
|» Events|job.note.updated|
|» Events|job.stage.pending|
|» Events|job.stage.progress|
|» Events|job.stage.complete|
|» Events|job.stage.invoiced|
|» Events|job.stage.archived|
|» Events|lead.created|
|» Events|lead.status|
|» Events|lead.updated|
|» Events|lead.deleted|
|» Events|quote.asset.assigned|
|» Events|quote.asset.removed|
|» Events|quote.asset.tested|
|» Events|quote.attachment.created|
|» Events|quote.attachment.updated|
|» Events|quote.attachment.deleted|
|» Events|quote.created|
|» Events|quote.status|
|» Events|quote.updated|
|» Events|quote.deleted|
|» Events|activity.schedule.created|
|» Events|activity.schedule.updated|
|» Events|activity.schedule.deleted|
|» Events|job.schedule.created|
|» Events|job.schedule.updated|
|» Events|job.schedule.deleted|
|» Events|lead.schedule.created|
|» Events|lead.schedule.updated|
|» Events|lead.schedule.deleted|
|» Events|quote.schedule.created|
|» Events|quote.schedule.updated|
|» Events|quote.schedule.deleted|
|» Events|site.attachment.created|
|» Events|site.attachment.updated|
|» Events|site.attachment.deleted|
|» Events|site.created|
|» Events|site.updated|
|» Events|site.deleted|
|» Events|purchase.order.created|
|» Events|purchase.order.updated|
|» Events|purchase.order.deleted|
|» Events|purchase.order.receipt.created|
|» Events|purchase.order.receipt.updated|
|» Events|purchase.order.receipt.deleted|
|»» Events|asset.types.created|
|»» Events|asset.types.updated|
|»» Events|asset.types.deleted|
|»» Events|asset.created|
|»» Events|asset.updated|
|»» Events|asset.deleted|
|»» Events|contact.created|
|»» Events|contact.updated|
|»» Events|contact.deleted|
|»» Events|company.customer.created|
|»» Events|company.customer.updated|
|»» Events|company.customer.deleted|
|»» Events|individual.customer.created|
|»» Events|individual.customer.updated|
|»» Events|individual.customer.deleted|
|»» Events|employee.created|
|»» Events|employee.updated|
|»» Events|employee.deleted|
|»» Events|credit.created|
|»» Events|credit.status|
|»» Events|credit.updated|
|»» Events|credit.deleted|
|»» Events|credit.stage.approved|
|»» Events|credit.stage.pending|
|»» Events|invoice.created|
|»» Events|invoice.status|
|»» Events|invoice.updated|
|»» Events|invoice.deleted|
|»» Events|invoice.stage.approved|
|»» Events|invoice.stage.pending|
|»» Events|payment.created|
|»» Events|payment.updated|
|»» Events|payment.deleted|
|»» Events|recurring.invoice.created|
|»» Events|recurring.invoice.updated|
|»» Events|recurring.invoice.deleted|
|»» Events|contractor.job.created|
|»» Events|contractor.job.updated|
|»» Events|contractor.job.deleted|
|»» Events|job.asset.assigned|
|»» Events|job.asset.removed|
|»» Events|job.asset.tested|
|»» Events|job.attachment.created|
|»» Events|job.attachment.updated|
|»» Events|job.attachment.deleted|
|»» Events|job.created|
|»» Events|job.status|
|»» Events|job.updated|
|»» Events|job.deleted|
|»» Events|job.note.created|
|»» Events|job.note.updated|
|»» Events|job.stage.pending|
|»» Events|job.stage.progress|
|»» Events|job.stage.complete|
|»» Events|job.stage.invoiced|
|»» Events|job.stage.archived|
|»» Events|lead.created|
|»» Events|lead.status|
|»» Events|lead.updated|
|»» Events|lead.deleted|
|»» Events|quote.asset.assigned|
|»» Events|quote.asset.removed|
|»» Events|quote.asset.tested|
|»» Events|quote.attachment.created|
|»» Events|quote.attachment.updated|
|»» Events|quote.attachment.deleted|
|»» Events|quote.created|
|»» Events|quote.status|
|»» Events|quote.updated|
|»» Events|quote.deleted|
|»» Events|activity.schedule.created|
|»» Events|activity.schedule.updated|
|»» Events|activity.schedule.deleted|
|»» Events|job.schedule.created|
|»» Events|job.schedule.updated|
|»» Events|job.schedule.deleted|
|»» Events|lead.schedule.created|
|»» Events|lead.schedule.updated|
|»» Events|lead.schedule.deleted|
|»» Events|quote.schedule.created|
|»» Events|quote.schedule.updated|
|»» Events|quote.schedule.deleted|
|»» Events|site.attachment.created|
|»» Events|site.attachment.updated|
|»» Events|site.attachment.deleted|
|»» Events|site.created|
|»» Events|site.updated|
|»» Events|site.deleted|
|»» Events|purchase.order.created|
|»» Events|purchase.order.updated|
|»» Events|purchase.order.deleted|
|»» Events|purchase.order.receipt.created|
|»» Events|purchase.order.receipt.updated|
|»» Events|purchase.order.receipt.deleted|
|» Status|Enabled|
|» Status|Disabled|

<h3 id="01569e9cd6db9850ac3b5a51a0424975-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Webhook Subscription updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## cbb76212a56011f48f3b0cf6ecacee82

<a id="opIdcbb76212a56011f48f3b0cf6ecacee82"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/webhooks/{webhookID}`

*Delete a webhook subscription.*

<h3 id="cbb76212a56011f48f3b0cf6ecacee82-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|webhookID|path|integer|true|A valid webhook id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="cbb76212a56011f48f3b0cf6ecacee82-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Webhook Subscription deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Webhook Subscription does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>