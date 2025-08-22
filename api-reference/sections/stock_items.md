# Stock Items

Manage inventory in Simpro to efficiently monitor the value, quantity, and location of your inventory items. You can then ensure you have the right materials available in your inventory and against each of your jobs.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Stock-Management-Overview.htm">External documentation</a>

## 494cc23de32e905a40a7e174d1a4f801

<a id="opId494cc23de32e905a40a7e174d1a4f801"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/',
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

r = requests.get('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/`

*List all stock items.*

<h3 id="494cc23de32e905a40a7e174d1a4f801-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|storageDeviceID|path|integer|true|A valid storage device id|
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
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string",
      "TradePrice": 0,
      "TradePriceEx": 0,
      "TradePriceInc": 0,
      "SplitPrice": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0
    },
    "InventoryCount": 1.57,
    "StorageLocation": 1.57,
    "InventoryValue": 1.57
  }
]
```

<h3 id="494cc23de32e905a40a7e174d1a4f801-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all stock items.|Inline|

<h3 id="494cc23de32e905a40a7e174d1a4f801-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» InventoryCount|number|true|none|none|
|» StorageLocation|number|true|none|none|
|» InventoryValue|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## a93221622597632f454294070d5ddef4

<a id="opIda93221622597632f454294070d5ddef4"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/{catalogID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/{catalogID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/{catalogID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/storageDevices/{storageDeviceID}/stock/{catalogID}`

*Retrieve details for a specific stock item.*

<h3 id="a93221622597632f454294070d5ddef4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|storageDeviceID|path|integer|true|A valid storage device id|
|catalogID|path|integer|true|A valid catalog id|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 200 Response

```json
{
  "Catalog": {
    "ID": 0,
    "PartNo": "string",
    "Name": "string",
    "TradePrice": 0,
    "TradePriceEx": 0,
    "TradePriceInc": 0,
    "SplitPrice": 0,
    "SplitPriceEx": 0,
    "SplitPriceInc": 0
  },
  "InventoryCount": 1.57,
  "StorageLocation": 1.57,
  "AssignedToJobs": 1.57,
  "AssignedValue": 1.57,
  "InventoryValue": 1.57,
  "OnOrder": 1.57,
  "OrderValue": 1.57,
  "InTransit": 1.57,
  "OnOrderAssigned": 1.57,
  "TransitInventoryValue": 1.57,
  "OrderAssignedValue": 1.57,
  "Total": 1.57,
  "TotalValue": 1.57,
  "DaysInInventory": 0,
  "MinimumLevel": 1.57,
  "RestockLevel": 1.57
}
```

<h3 id="a93221622597632f454294070d5ddef4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Stock item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Stock item not found.|None|

<h3 id="a93221622597632f454294070d5ddef4-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» Catalog|object|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» InventoryCount|number|true|none|none|
|» StorageLocation|number|true|none|none|
|» AssignedToJobs|number|true|none|none|
|» AssignedValue|number|true|none|none|
|» InventoryValue|number|true|none|none|
|» OnOrder|number|true|none|none|
|» OrderValue|number|true|none|none|
|» InTransit|number|true|none|none|
|» OnOrderAssigned|number|true|none|none|
|» TransitInventoryValue|number|true|none|none|
|» OrderAssignedValue|number|true|none|none|
|» Total|number|true|none|none|
|» TotalValue|number|true|none|none|
|» DaysInInventory|integer|true|none|none|
|» MinimumLevel|number|true|none|none|
|» RestockLevel|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>