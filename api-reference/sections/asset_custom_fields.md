# Asset Custom Fields

## 228bbca6ca8d38439c5a8c6d1e9248a6

<a id="opId228bbca6ca8d38439c5a8c6d1e9248a6"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/`

*List all asset custom fields.*

<h3 id="228bbca6ca8d38439c5a8c6d1e9248a6-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
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
    "CustomField": {
      "ID": 12345,
      "Name": "Access Control Lock",
      "Type": "List",
      "ListItems": [
        "string"
      ]
    },
    "Value": "string"
  }
]
```

<h3 id="228bbca6ca8d38439c5a8c6d1e9248a6-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all asset custom fields.|Inline|

<h3 id="228bbca6ca8d38439c5a8c6d1e9248a6-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» CustomField|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|» Value|string¦null|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Barcode|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 0cade26c1117fd0d0922461b681df3b9

<a id="opId0cade26c1117fd0d0922461b681df3b9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID}`

*Retrieve details for a specific asset custom field.*

<h3 id="0cade26c1117fd0d0922461b681df3b9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|customFieldID|path|integer|true|A valid custom field id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "CustomField": {
    "ID": 12345,
    "Name": "Access Control Lock",
    "Type": "List",
    "ListItems": [
      "string"
    ]
  },
  "Value": "string"
}
```

<h3 id="0cade26c1117fd0d0922461b681df3b9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Asset custom field details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset custom field not found.|None|

<h3 id="0cade26c1117fd0d0922461b681df3b9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» CustomField|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|» Value|string¦null|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Barcode|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 9217e1c2c1aaf42adf3442d566153115

<a id="opId9217e1c2c1aaf42adf3442d566153115"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Value": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/assets/{assetID}/customFields/{customFieldID}`

*Update a asset custom field.*

> Body parameter

```json
{
  "Value": "string"
}
```

<h3 id="9217e1c2c1aaf42adf3442d566153115-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|assetID|path|integer|true|A valid asset id|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Asset custom field object|
|» Value|body|string¦null|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9217e1c2c1aaf42adf3442d566153115-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset custom field updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>