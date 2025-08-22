# Vendor Orders

Create vendor orders in Simpro to order parts from your vendors.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Purchase-Orders.htm">External documentation</a>

## 1937670c5ba34f11cad02473d0922c80

<a id="opId1937670c5ba34f11cad02473d0922c80"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/`

*List all vendor orders.*

<h3 id="1937670c5ba34f11cad02473d0922c80-parameters">Parameters</h3>

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
    "Stage": "Pending",
    "Reference": "string",
    "ShowItemDueDate": true,
    "Totals": {
      "ExTax": 1.57,
      "IncTax": 1.57
    }
  }
]
```

<h3 id="1937670c5ba34f11cad02473d0922c80-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor orders.|Inline|

<h3 id="1937670c5ba34f11cad02473d0922c80-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Stage|string|true|none|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|» Reference|string|true|none|none|
|» ShowItemDueDate|boolean|true|none|none|
|» Totals|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Stage|Pending|
|Stage|Approved|
|Stage|Archived|
|Stage|Voided|

<aside class="success">
This operation does not require authentication
</aside>

## 8d6d1380b85065b784d2ce0dfe9fd2b3

<a id="opId8d6d1380b85065b784d2ce0dfe9fd2b3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorOrders/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "Catalogue",
  "Description": "string",
  "IsInventoryItem": true,
  "Amount": 1.57,
  "StorageDevice": 0,
  "AssignedTo": 0,
  "Stage": "Pending",
  "Status": 0,
  "StatusAutoAdjust": true,
  "DateIssued": "2021-04-22",
  "Vendor": 0,
  "QuoteNo": "string",
  "Reference": "string",
  "DueDate": "2021-04-22",
  "ShowItemDueDate": true,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "Archived": true,
  "ExchangeRate": 1,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorOrders/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorOrders/`

*Create a new vendor order.*

> Body parameter

```json
{
  "Type": "Catalogue",
  "Description": "string",
  "IsInventoryItem": true,
  "Amount": 1.57,
  "StorageDevice": 0,
  "AssignedTo": 0,
  "Stage": "Pending",
  "Status": 0,
  "StatusAutoAdjust": true,
  "DateIssued": "2021-04-22",
  "Vendor": 0,
  "QuoteNo": "string",
  "Reference": "string",
  "DueDate": "2021-04-22",
  "ShowItemDueDate": true,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "Archived": true,
  "ExchangeRate": 1,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="8d6d1380b85065b784d2ce0dfe9fd2b3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Vendor order object|
|» Type|body|string|false|Type of vendor order. If no "Type" is provided it will create a Catalogue Type|
|» Description|body|string|false|Description of a Vendor Order and this will be applied only when the order type is "Description".|
|» IsInventoryItem|body|boolean|false|This will be applied only when the order type is "Description".|
|» Amount|body|number|false|Amount is "exTax" only and will be applied only when the order type is "Description".|
|» StorageDevice|body|integer|false|ID of a storage device|
|» AssignedTo|body|integer|false|ID of a job cost center|
|» Stage|body|string|false|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|» Status|body|integer|false|ID of a vendor order status code|
|» StatusAutoAdjust|body|boolean|false|Set this to false if you would like to set status manually.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Vendor|body|integer|true|ID of a vendor|
|» QuoteNo|body|string|false|none|
|» Reference|body|string|false|none|
|» DueDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ShowItemDueDate|body|boolean|false|none|
|» VendorNotes|body|string|false|This column supports HTML formatting.|
|» PrivateNotes|body|string|false|This column supports HTML formatting.|
|» Archived|body|boolean|false|Whether or not this vendor order is archived. If a vendor order is archived, receipts cannot be created against it. A vendor order is archived if its stage is Archived or Voided. If you are specifying Stage, there is no need to specify Archived as well.|
|» ExchangeRate|body|number|false|none|
|» Freight|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|Catalogue|
|» Type|Description|
|» Stage|Pending|
|» Stage|Approved|
|» Stage|Archived|
|» Stage|Voided|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Type": "Catalogue",
  "Description": "string",
  "IsInventoryItem": true,
  "StorageDevice": {
    "ID": 0,
    "Name": "string"
  },
  "AssignedTo": {
    "ID": 0,
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Name": "string",
    "Job": 0,
    "Section": 0
  },
  "Stage": "Pending",
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "StatusAutoAdjust": true,
  "DateIssued": "2021-04-22",
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "QuoteNo": "string",
  "Reference": "string",
  "DueDate": "2021-04-22",
  "ShowItemDueDate": true,
  "VendorQuote": 0,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
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
  "Currency": "USD",
  "ExchangeRate": 1,
  "Totals": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="8d6d1380b85065b784d2ce0dfe9fd2b3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor order created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="8d6d1380b85065b784d2ce0dfe9fd2b3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|Type of vendor order. If no "Type" is provided it will create a Catalogue Type|
|» Description|string|true|none|Description of a Vendor Order and this will be applied only when the order type is "Description".|
|» IsInventoryItem|boolean|true|none|This will be applied only when the order type is "Description".|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssignedTo|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» CostCenter|object|false|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Name|string|false|none|none|
|»» Job|integer|false|none|none|
|»» Section|integer|false|none|none|
|» Stage|string|true|none|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|» Status|object|true|none|Set the current status of this vendor order in your workflow. Please set StatusAutoAdjust to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» StatusAutoAdjust|boolean|true|none|Set this to false if you would like to set status manually.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» QuoteNo|string|true|none|none|
|» Reference|string|true|none|none|
|» DueDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ShowItemDueDate|boolean|true|none|none|
|» VendorQuote|integer¦null|false|none|none|
|» VendorNotes|string|true|none|This column supports HTML formatting.|
|» PrivateNotes|string|true|none|This column supports HTML formatting.|
|» CreatedBy|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Archived|boolean|true|none|Whether or not this vendor order is archived. If a vendor order is archived, receipts cannot be created against it. A vendor order is archived if its stage is Archived or Voided. If you are specifying Stage, there is no need to specify Archived as well.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this vendor order. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Totals|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Catalogue|
|Type|Description|
|Stage|Pending|
|Stage|Approved|
|Stage|Archived|
|Stage|Voided|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 95aad1d7b7131cf59992f03f69eb796f

<a id="opId95aad1d7b7131cf59992f03f69eb796f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}`

*Retrieve details for a specific vendor order.*

<h3 id="95aad1d7b7131cf59992f03f69eb796f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
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
  "Type": "Catalogue",
  "Description": "string",
  "IsInventoryItem": true,
  "StorageDevice": {
    "ID": 0,
    "Name": "string"
  },
  "AssignedTo": {
    "ID": 0,
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Name": "string",
    "Job": 0,
    "Section": 0
  },
  "Stage": "Pending",
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "StatusAutoAdjust": true,
  "DateIssued": "2021-04-22",
  "Vendor": {
    "ID": 0,
    "Name": "string"
  },
  "QuoteNo": "string",
  "Reference": "string",
  "DueDate": "2021-04-22",
  "ShowItemDueDate": true,
  "VendorQuote": 0,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "Archived": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
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
  "Currency": "USD",
  "ExchangeRate": 1,
  "Totals": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="95aad1d7b7131cf59992f03f69eb796f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor order details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order not found.|None|

<h3 id="95aad1d7b7131cf59992f03f69eb796f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|Type of vendor order. If no "Type" is provided it will create a Catalogue Type|
|» Description|string|true|none|Description of a Vendor Order and this will be applied only when the order type is "Description".|
|» IsInventoryItem|boolean|true|none|This will be applied only when the order type is "Description".|
|» StorageDevice|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssignedTo|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» CostCenter|object|false|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Name|string|false|none|none|
|»» Job|integer|false|none|none|
|»» Section|integer|false|none|none|
|» Stage|string|true|none|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|» Status|object|true|none|Set the current status of this vendor order in your workflow. Please set StatusAutoAdjust to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» StatusAutoAdjust|boolean|true|none|Set this to false if you would like to set status manually.|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Vendor|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» QuoteNo|string|true|none|none|
|» Reference|string|true|none|none|
|» DueDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ShowItemDueDate|boolean|true|none|none|
|» VendorQuote|integer¦null|false|none|none|
|» VendorNotes|string|true|none|This column supports HTML formatting.|
|» PrivateNotes|string|true|none|This column supports HTML formatting.|
|» CreatedBy|object¦null|false|none|none|
|»» ID|integer|false|none|Employee ID of the staff member|
|»» Name|string|false|none|Name of the staff member|
|»» Type|string|false|none|Staff type|
|»» TypeId|integer|false|none|Employee ID / Contractor ID / Plant ID|
|» Archived|boolean|true|none|Whether or not this vendor order is archived. If a vendor order is archived, receipts cannot be created against it. A vendor order is archived if its stage is Archived or Voided. If you are specifying Stage, there is no need to specify Archived as well.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this vendor order. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Totals|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Catalogue|
|Type|Description|
|Stage|Pending|
|Stage|Approved|
|Stage|Archived|
|Stage|Voided|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 09d606626aa7de7c438507e50fabcf84

<a id="opId09d606626aa7de7c438507e50fabcf84"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Description": "string",
  "IsInventoryItem": true,
  "Amount": 1.57,
  "StorageDevice": 0,
  "AssignedTo": 0,
  "Stage": "Pending",
  "Status": 0,
  "StatusAutoAdjust": true,
  "DateIssued": "2021-04-22",
  "Vendor": 0,
  "QuoteNo": "string",
  "Reference": "string",
  "DueDate": "2021-04-22",
  "ShowItemDueDate": true,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "Archived": true,
  "ExchangeRate": 1,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}`

*Update a vendor order.*

> Body parameter

```json
{
  "Description": "string",
  "IsInventoryItem": true,
  "Amount": 1.57,
  "StorageDevice": 0,
  "AssignedTo": 0,
  "Stage": "Pending",
  "Status": 0,
  "StatusAutoAdjust": true,
  "DateIssued": "2021-04-22",
  "Vendor": 0,
  "QuoteNo": "string",
  "Reference": "string",
  "DueDate": "2021-04-22",
  "ShowItemDueDate": true,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "Archived": true,
  "ExchangeRate": 1,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  }
}
```

<h3 id="09d606626aa7de7c438507e50fabcf84-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|body|body|object|true|Vendor order object|
|» Description|body|string|false|Description of a Vendor Order and this will be applied only when the order type is "Description".|
|» IsInventoryItem|body|boolean|false|This will be applied only when the order type is "Description".|
|» Amount|body|number|false|Amount is "exTax" only and will be applied only when the order type is "Description".|
|» StorageDevice|body|integer|false|ID of a storage device|
|» AssignedTo|body|integer|false|ID of a job cost center|
|» Stage|body|string|false|If a vendor order's stage is archived or voided, receipts cannot be created against it.|
|» Status|body|integer|false|ID of a vendor order status code|
|» StatusAutoAdjust|body|boolean|false|Set this to false if you would like to set status manually.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Vendor|body|integer|false|ID of a vendor|
|» QuoteNo|body|string|false|none|
|» Reference|body|string|false|none|
|» DueDate|body|string(date)¦null|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» ShowItemDueDate|body|boolean|false|none|
|» VendorNotes|body|string|false|This column supports HTML formatting.|
|» PrivateNotes|body|string|false|This column supports HTML formatting.|
|» Archived|body|boolean|false|Whether or not this vendor order is archived. If a vendor order is archived, receipts cannot be created against it. A vendor order is archived if its stage is Archived or Voided. If you are specifying Stage, there is no need to specify Archived as well.|
|» ExchangeRate|body|number|false|none|
|» Freight|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Stage|Pending|
|» Stage|Approved|
|» Stage|Archived|
|» Stage|Voided|

<h3 id="09d606626aa7de7c438507e50fabcf84-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 4139d0ca7a2185b847f752285bd5c121

<a id="opId4139d0ca7a2185b847f752285bd5c121"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}`

*Delete a vendor order.*

<h3 id="4139d0ca7a2185b847f752285bd5c121-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="4139d0ca7a2185b847f752285bd5c121-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor order deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor order does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>