# Asset Type Custom Fields

**This feature is only available in Simpro Enterprise.**<br />

Use custom fields store different types of information against an asset type for efficient asset management.

<a href="http://helpguide.simprogroup.com/Content/Service-and-Enterprise/Asset-Types.htm">External documentation</a>

## 0db8b38155cdb492af904d0cb48a7fbe

<a id="opId0db8b38155cdb492af904d0cb48a7fbe"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/`

*List all asset type custom fields.*

<h3 id="0db8b38155cdb492af904d0cb48a7fbe-parameters">Parameters</h3>

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
    "Name": "Access Control Lock",
    "Type": "List",
    "Order": 0,
    "Locked": true
  }
]
```

<h3 id="0db8b38155cdb492af904d0cb48a7fbe-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all asset type custom fields.|Inline|

<h3 id="0db8b38155cdb492af904d0cb48a7fbe-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|» Order|integer|true|none|none|
|» Locked|boolean|true|none|none|

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

## e059bd51e895443ce35c5d96721b4bcf

<a id="opIde059bd51e895443ce35c5d96721b4bcf"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "Access Control Lock",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/',
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

r = requests.post('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/`

*Create a new asset type custom field.*

> Body parameter

```json
{
  "Name": "Access Control Lock",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Locked": true
}
```

<h3 id="e059bd51e895443ce35c5d96721b4bcf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|body|body|object|true|Asset type custom field object|
|» Name|body|string|true|none|
|» Type|body|string|true|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|» ListItems|body|[string]¦null|false|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|body|boolean|false|Set this column to true to make in a compulsory field. (web UI)|
|» Order|body|integer|false|none|
|» Locked|body|boolean|false|none|

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
|» Type|Barcode|
|» Type|Hyperlink|

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "Access Control Lock",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="e059bd51e895443ce35c5d96721b4bcf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Asset type custom field created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="e059bd51e895443ce35c5d96721b4bcf-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|» ListItems|[string]¦null|false|none|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» Locked|boolean|true|none|none|

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

## 96688276fc1558daa95e7289959c8768

<a id="opId96688276fc1558daa95e7289959c8768"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}`

*Retrieve details for a specific asset type custom field.*

<h3 id="96688276fc1558daa95e7289959c8768-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeCustomFieldID|path|integer|true|A valid asset type custom field id|
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
  "Name": "Access Control Lock",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Archived": true,
  "Locked": true
}
```

<h3 id="96688276fc1558daa95e7289959c8768-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Asset type custom field details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset type custom field not found.|None|

<h3 id="96688276fc1558daa95e7289959c8768-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|» ListItems|[string]¦null|false|none|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|» Order|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» Locked|boolean|true|none|none|

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

## 8510d351f8e1eef616f8f7f539eb017e

<a id="opId8510d351f8e1eef616f8f7f539eb017e"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "Access Control Lock",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Locked": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}`

*Update a asset type custom field.*

> Body parameter

```json
{
  "Name": "Access Control Lock",
  "Type": "List",
  "ListItems": [
    "string"
  ],
  "IsMandatory": true,
  "Order": 0,
  "Locked": true
}
```

<h3 id="8510d351f8e1eef616f8f7f539eb017e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeCustomFieldID|path|integer|true|A valid asset type custom field id|
|body|body|object|true|Asset type custom field object|
|» Name|body|string|false|none|
|» Type|body|string|false|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).<b>Numeric:</b> Enter a float or integer value.<b>Barcode:</b> Enter a barcode value. Can be text or numeric.|
|» ListItems|body|[string]¦null|false|List of text to be used when the customer field type is set to `List` only.|
|» IsMandatory|body|boolean|false|Set this column to true to make in a compulsory field. (web UI)|
|» Order|body|integer|false|none|
|» Locked|body|boolean|false|none|

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
|» Type|Barcode|
|» Type|Hyperlink|

<h3 id="8510d351f8e1eef616f8f7f539eb017e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset type custom field updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## dc6f7134291434af5fa066cfdc8c7d7d

<a id="opIddc6f7134291434af5fa066cfdc8c7d7d"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/setup/assetTypes/{assetTypeID}/customFields/{assetTypeCustomFieldID}`

*Delete a asset type custom field.*

<h3 id="dc6f7134291434af5fa066cfdc8c7d7d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|assetTypeID|path|integer|true|A valid asset type id|
|assetTypeCustomFieldID|path|integer|true|A valid asset type custom field id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="dc6f7134291434af5fa066cfdc8c7d7d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Asset type custom field deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Asset type custom field does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>