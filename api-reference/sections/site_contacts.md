# Site Contacts

## 785ce758787b8e2c49d063235283c29d

<a id="opId785ce758787b8e2c49d063235283c29d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/`

*List all site contacts.*

<h3 id="785ce758787b8e2c49d063235283c29d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
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
    "GivenName": "string",
    "FamilyName": "string"
  }
]
```

<h3 id="785ce758787b8e2c49d063235283c29d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all site contacts.|Inline|

<h3 id="785ce758787b8e2c49d063235283c29d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|string|true|none|Family name / Last name|

<aside class="success">
This operation does not require authentication
</aside>

## 384a99aa101e396b12eff673a3e66d14

<a id="opId384a99aa101e396b12eff673a3e66d14"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "Contact": 0,
  "PrimaryContact": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/',
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

r = requests.post('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/`

*Create a new site contact.*

> Body parameter

```json
{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "Contact": 0,
  "PrimaryContact": true
}
```

<h3 id="384a99aa101e396b12eff673a3e66d14-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|body|body|object|true|Site contact object|
|» Title|body|string|false|none|
|» GivenName|body|string|false|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|body|string|false|Family name / Last name|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Department|body|string|false|none|
|» Position|body|string|false|none|
|» Notes|body|string|false|none|
|» Contact|body|integer|false|ID of a contact|
|» PrimaryContact|body|boolean|false|Set this to true to set this contact as the primary contact for this site.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
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
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Contact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string"
  },
  "PrimaryContact": true
}
```

<h3 id="384a99aa101e396b12eff673a3e66d14-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Site contact created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="384a99aa101e396b12eff673a3e66d14-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Title|string|true|none|none|
|» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|string|true|none|Family name / Last name|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|Cell phone / Mobile phone|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» Department|string|true|none|none|
|» Position|string|true|none|none|
|» Notes|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this site contact. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Contact|object¦null|false|none|Adds an existing contact to a site.|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|»» Email|string|false|none|none|
|» PrimaryContact|boolean|true|none|Set this to true to set this contact as the primary contact for this site.|

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

## ac215112dfc7e2352a636a6411f4e80f

<a id="opIdac215112dfc7e2352a636a6411f4e80f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}`

*Retrieve details for a specific site contact.*

<h3 id="ac215112dfc7e2352a636a6411f4e80f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|contactID|path|integer|true|A valid contact id|
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
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
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
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Contact": {
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string",
    "Email": "string"
  },
  "PrimaryContact": true
}
```

<h3 id="ac215112dfc7e2352a636a6411f4e80f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Site contact details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site contact not found.|None|

<h3 id="ac215112dfc7e2352a636a6411f4e80f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Title|string|true|none|none|
|» GivenName|string|true|none|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|string|true|none|Family name / Last name|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|Cell phone / Mobile phone|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» Department|string|true|none|none|
|» Position|string|true|none|none|
|» Notes|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this site contact. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Contact|object¦null|false|none|Adds an existing contact to a site.|
|»» ID|integer|false|none|none|
|»» GivenName|string|false|none|Given name / First name|
|»» FamilyName|string|false|none|Family name / Last name|
|»» Email|string|false|none|none|
|» PrimaryContact|boolean|true|none|Set this to true to set this contact as the primary contact for this site.|

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

## efaeeab72f29c3e614e10a8690e523a5

<a id="opIdefaeeab72f29c3e614e10a8690e523a5"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "PrimaryContact": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}`

*Update a site contact.*

> Body parameter

```json
{
  "Title": "string",
  "GivenName": "string",
  "FamilyName": "string",
  "Email": "string",
  "WorkPhone": "string",
  "Fax": "string",
  "CellPhone": "string",
  "AltPhone": "string",
  "Department": "string",
  "Position": "string",
  "Notes": "string",
  "PrimaryContact": true
}
```

<h3 id="efaeeab72f29c3e614e10a8690e523a5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|contactID|path|integer|true|A valid contact id|
|body|body|object|true|Site contact object|
|» Title|body|string|false|none|
|» GivenName|body|string|false|Given name / First name. Mandatory when creating a new contact instead of using existing contact.|
|» FamilyName|body|string|false|Family name / Last name|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Department|body|string|false|none|
|» Position|body|string|false|none|
|» Notes|body|string|false|none|
|» PrimaryContact|body|boolean|false|Set this to true to set this contact as the primary contact for this site.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="efaeeab72f29c3e614e10a8690e523a5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site contact updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 6a3f812928f0acb3f34d62740e3e1778

<a id="opId6a3f812928f0acb3f34d62740e3e1778"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/sites/{siteID}/contacts/{contactID}`

*Delete a site contact.*

<h3 id="6a3f812928f0acb3f34d62740e3e1778-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|siteID|path|integer|true|A valid site id|
|contactID|path|integer|true|A valid contact id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="6a3f812928f0acb3f34d62740e3e1778-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Site contact deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Site contact does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>