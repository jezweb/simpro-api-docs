# Catalog Inventories

Set minimum and restock levels to routinely maintain your inventory and increase efficiency in stock purchasing.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Minimum-and-Restock-Levels.htm">External documentation</a>

## 31ca4db17896bdc7782f404cba54eaa1

<a id="opId31ca4db17896bdc7782f404cba54eaa1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/`

*List all catalog inventories.*

<h3 id="31ca4db17896bdc7782f404cba54eaa1-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
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
    "StorageDevice": {
      "ID": 0,
      "Name": "string"
    },
    "StorageLocation": "string",
    "MinimumLevel": 0,
    "RestockLevel": 0
  }
]
```

<h3 id="31ca4db17896bdc7782f404cba54eaa1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all catalog inventories.|Inline|

<h3 id="31ca4db17896bdc7782f404cba54eaa1-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» StorageLocation|string|true|none|A location reference within a storage device.|
|» MinimumLevel|number|true|none|Represents minimum quantity of the stock that should be held at all times.|
|» RestockLevel|number|true|none|Represents quantity of the stock that should be ordered through vendor order or stock transfer.|

<aside class="success">
This operation does not require authentication
</aside>

## 4cf16788475757a053147cb2c5e1efa9

<a id="opId4cf16788475757a053147cb2c5e1efa9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID}`

*Retrieve details for a specific catalog inventory.*

<h3 id="4cf16788475757a053147cb2c5e1efa9-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|storageDeviceID|path|integer|true|A valid storage device id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "StorageDevice": {
    "ID": 0,
    "Name": "string"
  },
  "StorageLocation": "string",
  "MinimumLevel": 0,
  "RestockLevel": 0,
  "InventoryCount": 0,
  "OnOrder": 0
}
```

<h3 id="4cf16788475757a053147cb2c5e1efa9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Catalog inventory details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog inventory not found.|None|

<h3 id="4cf16788475757a053147cb2c5e1efa9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» StorageLocation|string|true|none|A location reference within a storage device.|
|» MinimumLevel|number|true|none|Represents minimum quantity of the stock that should be held at all times.|
|» RestockLevel|number|true|none|Represents quantity of the stock that should be ordered through vendor order or stock transfer.|
|» InventoryCount|number|true|none|none|
|» OnOrder|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## be016067c57565d3a6afd3315fecf898

<a id="opIdbe016067c57565d3a6afd3315fecf898"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "StorageLocation": "string",
  "MinimumLevel": 0,
  "RestockLevel": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}/inventories/{storageDeviceID}`

*Update a catalog inventory.*

> Body parameter

```json
{
  "StorageLocation": "string",
  "MinimumLevel": 0,
  "RestockLevel": 0
}
```

<h3 id="be016067c57565d3a6afd3315fecf898-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|storageDeviceID|path|integer|true|A valid storage device id|
|body|body|object|true|Catalog inventory object|
|» StorageLocation|body|string|false|A location reference within a storage device.|
|» MinimumLevel|body|number|false|Represents minimum quantity of the stock that should be held at all times.|
|» RestockLevel|body|number|false|Represents quantity of the stock that should be ordered through vendor order or stock transfer.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="be016067c57565d3a6afd3315fecf898-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog inventory updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>