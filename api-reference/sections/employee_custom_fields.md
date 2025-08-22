# Employee Custom Fields

## 787927202577f5cd7014ae2ce9932a12

<a id="opId787927202577f5cd7014ae2ce9932a12"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/`

*List all employee custom fields.*

<h3 id="787927202577f5cd7014ae2ce9932a12-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
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
      "Name": "string",
      "Type": "List",
      "ListItems": [
        "string"
      ],
      "IsMandatory": true
    },
    "Value": "string"
  }
]
```

<h3 id="787927202577f5cd7014ae2ce9932a12-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all employee custom fields.|Inline|

<h3 id="787927202577f5cd7014ae2ce9932a12-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» CustomField|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

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

## 0d52459e04249a16b119de6ad0d7f74d

<a id="opId0d52459e04249a16b119de6ad0d7f74d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID}`

*Retrieve details for a specific employee custom field.*

<h3 id="0d52459e04249a16b119de6ad0d7f74d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
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
    "Name": "string",
    "Type": "List",
    "ListItems": [
      "string"
    ],
    "IsMandatory": true
  },
  "Value": "string"
}
```

<h3 id="0d52459e04249a16b119de6ad0d7f74d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Employee custom field details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Employee custom field not found.|None|

<h3 id="0d52459e04249a16b119de6ad0d7f74d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» CustomField|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Value|string¦null|false|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

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

## 9d10fb55f373d69f5ef2dead75857634

<a id="opId9d10fb55f373d69f5ef2dead75857634"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Value": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/employees/{employeeID}/customFields/{customFieldID}`

*Update a employee custom field.*

> Body parameter

```json
{
  "Value": "string"
}
```

<h3 id="9d10fb55f373d69f5ef2dead75857634-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|employeeID|path|integer|true|A valid employee id|
|customFieldID|path|integer|true|A valid custom field id|
|body|body|object|true|Employee custom field object|
|» Value|body|string¦null|false|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="9d10fb55f373d69f5ef2dead75857634-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Employee custom field updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>