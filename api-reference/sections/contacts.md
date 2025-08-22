# Contacts

## 6c15a44bbb31152b2f2ba162c5bb8714

<a id="opId6c15a44bbb31152b2f2ba162c5bb8714"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contacts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contacts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/contacts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contacts/`

*List all contacts.*

<h3 id="6c15a44bbb31152b2f2ba162c5bb8714-parameters">Parameters</h3>

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
    "ID": 0,
    "GivenName": "string",
    "FamilyName": "string"
  }
]
```

<h3 id="6c15a44bbb31152b2f2ba162c5bb8714-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all contacts.|Inline|

<h3 id="6c15a44bbb31152b2f2ba162c5bb8714-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» GivenName|string|true|none|Given name / First name|
|» FamilyName|string|true|none|Family name / Last name|

<aside class="success">
This operation does not require authentication
</aside>

## 86b310464bbc0c4bd44bb312eae9cdd1

<a id="opId86b310464bbc0c4bd44bb312eae9cdd1"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/contacts/ \
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
  "Notes": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contacts/',
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

r = requests.post('/api/v1.0/companies/{companyID}/contacts/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/contacts/`

*Create a new contact.*

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
  "Notes": "string"
}
```

<h3 id="86b310464bbc0c4bd44bb312eae9cdd1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Contact object|
|» Title|body|string|false|none|
|» GivenName|body|string|true|Given name / First name|
|» FamilyName|body|string|false|Family name / Last name|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Department|body|string|false|none|
|» Position|body|string|false|none|
|» Notes|body|string|false|none|

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
  "CustomerIDs": [
    0
  ],
  "SiteIDs": [
    0
  ],
  "Customers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
  "Sites": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Vendors": [
    {
      "ID": 0,
      "Name": "string"
    }
  ]
}
```

<h3 id="86b310464bbc0c4bd44bb312eae9cdd1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contact created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="86b310464bbc0c4bd44bb312eae9cdd1-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Title|string|true|none|none|
|» GivenName|string|true|none|Given name / First name|
|» FamilyName|string|true|none|Family name / Last name|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|Cell phone / Mobile phone|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» Department|string|true|none|none|
|» Position|string|true|none|none|
|» Notes|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this contact. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomerIDs|[integer]|true|none|Deprecated: Please use `Customers` field.|
|» SiteIDs|[integer]|true|none|Deprecated: Please use `Sites` field.|
|» Customers|[object]|true|none|Array of Customers to which this contact is linked. See People -> Contacts|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Sites|[object]|true|none|Array of Sites to which this contact is linked. See People -> Contacts|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Vendors|[object]|true|none|Array of Vendors to which this contact is linked. See People -> Contacts|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

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

## 6c386614590be4798d01fceda4a83fbf

<a id="opId6c386614590be4798d01fceda4a83fbf"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/contacts/{contactID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contacts/{contactID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/contacts/{contactID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/contacts/{contactID}`

*Retrieve details for a specific contact.*

<h3 id="6c386614590be4798d01fceda4a83fbf-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
  "CustomerIDs": [
    0
  ],
  "SiteIDs": [
    0
  ],
  "Customers": [
    {
      "ID": 12345,
      "CompanyName": "John Smith Pty Ltd",
      "GivenName": "John",
      "FamilyName": "Smith"
    }
  ],
  "Sites": [
    {
      "ID": 12345,
      "Name": "string"
    }
  ],
  "Vendors": [
    {
      "ID": 0,
      "Name": "string"
    }
  ]
}
```

<h3 id="6c386614590be4798d01fceda4a83fbf-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contact details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contact not found.|None|

<h3 id="6c386614590be4798d01fceda4a83fbf-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Title|string|true|none|none|
|» GivenName|string|true|none|Given name / First name|
|» FamilyName|string|true|none|Family name / Last name|
|» Email|string|true|none|none|
|» WorkPhone|string|true|none|none|
|» Fax|string|true|none|none|
|» CellPhone|string|true|none|Cell phone / Mobile phone|
|» AltPhone|string|true|none|Alternate phone number, can also be home phone.|
|» Department|string|true|none|none|
|» Position|string|true|none|none|
|» Notes|string|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this contact. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomerIDs|[integer]|true|none|Deprecated: Please use `Customers` field.|
|» SiteIDs|[integer]|true|none|Deprecated: Please use `Sites` field.|
|» Customers|[object]|true|none|Array of Customers to which this contact is linked. See People -> Contacts|
|»» ID|integer|true|none|This customer's ID|
|»» CompanyName|string|true|none|Company name (Company customers)|
|»» GivenName|string|true|none|Given name / First name (Individual customers)|
|»» FamilyName|string|true|none|Family name / Last name (Individual customers)|
|» Sites|[object]|true|none|Array of Sites to which this contact is linked. See People -> Contacts|
|»» ID|integer|true|none|ID of the site|
|»» Name|string|true|none|none|
|» Vendors|[object]|true|none|Array of Vendors to which this contact is linked. See People -> Contacts|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|

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

## f5b18b2c9731de4cf6d411c9278af29e

<a id="opIdf5b18b2c9731de4cf6d411c9278af29e"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/contacts/{contactID} \
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
  "Notes": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/contacts/{contactID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/contacts/{contactID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/contacts/{contactID}`

*Update a contact.*

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
  "Notes": "string"
}
```

<h3 id="f5b18b2c9731de4cf6d411c9278af29e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contactID|path|integer|true|A valid contact id|
|body|body|object|true|Contact object|
|» Title|body|string|false|none|
|» GivenName|body|string|false|Given name / First name|
|» FamilyName|body|string|false|Family name / Last name|
|» Email|body|string|false|none|
|» WorkPhone|body|string|false|none|
|» Fax|body|string|false|none|
|» CellPhone|body|string|false|Cell phone / Mobile phone|
|» AltPhone|body|string|false|Alternate phone number, can also be home phone.|
|» Department|body|string|false|none|
|» Position|body|string|false|none|
|» Notes|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f5b18b2c9731de4cf6d411c9278af29e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contact updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## a139880a4e9deb1dde688ff6b802d3b4

<a id="opIda139880a4e9deb1dde688ff6b802d3b4"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/contacts/{contactID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/contacts/{contactID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/contacts/{contactID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/contacts/{contactID}`

*Delete a contact.*

<h3 id="a139880a4e9deb1dde688ff6b802d3b4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|contactID|path|integer|true|A valid contact id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a139880a4e9deb1dde688ff6b802d3b4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Contact deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Contact does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>