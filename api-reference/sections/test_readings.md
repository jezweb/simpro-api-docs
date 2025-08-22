# Test Readings

To enable technicians to record an asset's test results, for example, electrical readings, pressure readings, temperatures etc, accurately in the job card or in Connect, you need to create test readings in the asset type in Simpro. Test readings are then recorded as part of the asset history.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Asset-Types-Maintenance-Planner.htm#Create-test-readings">External documentation</a>

## ebd34c3cf8dd94e51aa4405b1601c904

<a id="opIdebd34c3cf8dd94e51aa4405b1601c904"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/`

*List all test readings.*

<h3 id="ebd34c3cf8dd94e51aa4405b1601c904-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
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
    "Name": "string",
    "Type": "List",
    "Order": 0
  }
]
```

<h3 id="ebd34c3cf8dd94e51aa4405b1601c904-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all test readings.|Inline|

<h3 id="ebd34c3cf8dd94e51aa4405b1601c904-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» Order|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 91e838097823f8f4821e010c37f87819

<a id="opId91e838097823f8f4821e010c37f87819"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "ServiceLevels": [
    0
  ],
  "Order": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/`

*Create a new test readings.*

> Body parameter

```json
{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "ServiceLevels": [
    0
  ],
  "Order": 0
}
```

<h3 id="91e838097823f8f4821e010c37f87819-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|body|body|object|true|Test readings object|
|» Name|body|string|true|none|
|» Type|body|string|true|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|body|[string]¦null|false|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|body|boolean|false|Set this column to true to make in a compulsory field. (web UI)|
|» ServiceLevels|body|[integer]|false|none|
|» Order|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|List|
|» Type|Text|
|» Type|Date|
|» Type|Numeric|
|» Type|Hyperlink|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "ServiceLevels": [
    {
      "ServiceLevel": {
        "ID": 12345,
        "Name": "Annually Service"
      },
      "DisplayOrder": 0,
      "IsDefault": true
    }
  ],
  "Order": 0,
  "Archived": true
}
```

<h3 id="91e838097823f8f4821e010c37f87819-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Test readings created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="91e838097823f8f4821e010c37f87819-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|[string]¦null|false|none|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» ServiceLevels|[object]|true|none|none|
|»» ServiceLevel|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» DisplayOrder|integer|true|none|none|
|»» IsDefault|boolean|true|none|none|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 328aa8dc6a6ad138d2414f53ba10226c

<a id="opId328aa8dc6a6ad138d2414f53ba10226c"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}`

*Retrieve details for a specific test readings.*

<h3 id="328aa8dc6a6ad138d2414f53ba10226c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeTestReadingID|path|integer|true|A valid asset type test reading id|
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
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "ServiceLevels": [
    {
      "ServiceLevel": {
        "ID": 12345,
        "Name": "Annually Service"
      },
      "DisplayOrder": 0,
      "IsDefault": true
    }
  ],
  "Order": 0,
  "Archived": true
}
```

<h3 id="328aa8dc6a6ad138d2414f53ba10226c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Test readings details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Test readings not found.|None|

<h3 id="328aa8dc6a6ad138d2414f53ba10226c-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|[string]¦null|false|none|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» ServiceLevels|[object]|true|none|none|
|»» ServiceLevel|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» DisplayOrder|integer|true|none|none|
|»» IsDefault|boolean|true|none|none|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## f9e14cbeaab645abcb06426884bf2413

<a id="opIdf9e14cbeaab645abcb06426884bf2413"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "ServiceLevels": [
    0
  ],
  "Order": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}`

*Update a test readings.*

> Body parameter

```json
{
  "Name": "string",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "ServiceLevels": [
    0
  ],
  "Order": 0
}
```

<h3 id="f9e14cbeaab645abcb06426884bf2413-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeTestReadingID|path|integer|true|A valid asset type test reading id|
|body|body|object|true|Test readings object|
|» Name|body|string|false|none|
|» Type|body|string|false|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|» ListItems|body|[string]¦null|false|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|body|boolean|false|Set this column to true to make in a compulsory field. (web UI)|
|» ServiceLevels|body|[integer]|false|none|
|» Order|body|integer|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|List|
|» Type|Text|
|» Type|Date|
|» Type|Numeric|
|» Type|Hyperlink|

<h3 id="f9e14cbeaab645abcb06426884bf2413-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Test readings updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## e5f86fb20aa1517983a1f76b0ec4b3db

<a id="opIde5f86fb20aa1517983a1f76b0ec4b3db"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/testReadings/{assetTypeTestReadingID}`

*Delete a test readings.*

<h3 id="e5f86fb20aa1517983a1f76b0ec4b3db-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeTestReadingID|path|integer|true|A valid asset type test reading id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="e5f86fb20aa1517983a1f76b0ec4b3db-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Test readings deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Test readings does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>