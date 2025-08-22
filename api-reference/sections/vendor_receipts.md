# Vendor Receipts

While a vendor order gives a committed cost to stock, quotes and jobs, receipting a vendor order will finalize the actual cost of those items.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Receipt-a-Purchase-Order.htm">External documentation</a>

## bff40d8ef557c0c6f63b4cfbc735a60d

<a id="opIdbff40d8ef557c0c6f63b4cfbc735a60d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/`

*List all vendor receipts.*

<h3 id="bff40d8ef557c0c6f63b4cfbc735a60d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
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
    "VendorInvoiceNo": "string",
    "DateIssued": "2021-04-22",
    "DueDate": "2021-04-22"
  }
]
```

<h3 id="bff40d8ef557c0c6f63b4cfbc735a60d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor receipts.|Inline|

<h3 id="bff40d8ef557c0c6f63b4cfbc735a60d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorInvoiceNo|string|true|none|none|
|» DateIssued|string(date)|true|none|This date cannot be in the future|
|» DueDate|string(date)¦null|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|

<aside class="success">
This operation does not require authentication
</aside>

## 4e92ae1bab78930e19918e3510cb72d8

<a id="opId4e92ae1bab78930e19918e3510cb72d8"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "VendorInvoiceNo": "string",
  "PackingSlipNo": "string",
  "Notes": "string",
  "ExchangeRate": 1,
  "DateIssued": "2021-04-22",
  "Category": 0,
  "TaxAdjustment": 1.57,
  "FreightTaxCode": 0,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "ItemsReceived": true,
  "Catalogs": [
    {
      "Catalog": 0,
      "Qty": 0,
      "ExpenseCostCenter": 0,
      "UnitPrice": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Total": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/`

*Create a new vendor receipt.*

> Body parameter

```json
{
  "VendorInvoiceNo": "string",
  "PackingSlipNo": "string",
  "Notes": "string",
  "ExchangeRate": 1,
  "DateIssued": "2021-04-22",
  "Category": 0,
  "TaxAdjustment": 1.57,
  "FreightTaxCode": 0,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "ItemsReceived": true,
  "Catalogs": [
    {
      "Catalog": 0,
      "Qty": 0,
      "ExpenseCostCenter": 0,
      "UnitPrice": {
        "ExTax": 1.57,
        "IncTax": 1.57
      },
      "Total": {
        "ExTax": 1.57,
        "IncTax": 1.57
      }
    }
  ]
}
```

<h3 id="4e92ae1bab78930e19918e3510cb72d8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|body|body|object|true|Vendor receipt object|
|» VendorInvoiceNo|body|string|false|none|
|» PackingSlipNo|body|string|false|none|
|» Notes|body|string|false|This column supports HTML formatting.|
|» ExchangeRate|body|number|false|none|
|» DateIssued|body|string(date)|false|This date cannot be in the future|
|» Category|body|integer|false|ID of a accounting category|
|» TaxAdjustment|body|number|false|none|
|» FreightTaxCode|body|integer|false|ID of a tax code|
|» Freight|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|ExTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|»» IncTax|body|number|false|IncTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|» ItemsReceived|body|boolean|false|none|
|» Catalogs|body|[object]|false|none|
|»» Catalog|body|integer|true|ID of a catalog item|
|»» Qty|body|number|true|none|
|»» ExpenseCostCenter|body|integer|true|ID of a cost center|
|»» UnitPrice|body|object|true|Please specify either UnitPrice or Total. The other will be calculated.|
|»»» ExTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|
|»»» IncTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|
|»» Total|body|object|true|Please specify either UnitPrice or Total. The other will be calculated.|
|»»» ExTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|
|»»» IncTax|body|number|false|Please specify either ExTax or IncTax. The other will be calculated.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "VendorInvoiceNo": "string",
  "PackingSlipNo": "string",
  "Notes": "string",
  "Currency": "USD",
  "ExchangeRate": 1,
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting",
    "Ref": "string"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "TaxAdjustment": 1.57,
  "FreightTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Rate": 10
  },
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "FreightBilledTo": {
    "ID": 0,
    "CostCenter": {
      "ID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "JobID": 0,
      "Name": "string",
      "DisplayOrder": 0,
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57,
        "TaxCode": {
          "ID": 12345,
          "Code": "GST",
          "Type": "Single",
          "Rate": 10
        }
      },
      "Claimed": {
        "ToDate": {
          "Percent": 1.57,
          "Amount": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        },
        "Remaining": {
          "Percent": 1.57,
          "Amount": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        }
      },
      "PercentComplete": 0
    },
    "Name": "string",
    "Job": 0,
    "Section": 0
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "ItemsReceived": true,
  "ItemsReceivedDate": "2018-05-21T19:53:39+10:00",
  "Catalogs": {
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "Qty": 0,
    "UnitPrice": {
      "ExTax": 1.57,
      "IncTax": 1.57
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57
    },
    "Allocations": [
      {
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
        "Quantity": 1.57,
        "ExpenseCostCenter": {
          "ID": 12345,
          "Name": "string"
        }
      }
    ]
  },
  "VendorOrderNo": 0
}
```

<h3 id="4e92ae1bab78930e19918e3510cb72d8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor receipt created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="4e92ae1bab78930e19918e3510cb72d8-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorInvoiceNo|string|true|none|none|
|» PackingSlipNo|string|true|none|none|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» DateIssued|string(date)|true|none|This date cannot be in the future|
|» DueDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Ref|string|false|none|This will be used to link to your accounting package, and will usually match your package's *Name* field.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» TaxAdjustment|number|true|none|none|
|» FreightTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Rate|number|true|none|Tax rate|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» FreightBilledTo|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» CostCenter|object|false|none|none|
|»»» ID|integer|true|none|none|
|»»» CostCenter|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» JobID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»»» TaxCode|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Code|string|true|none|Tax code|
|»»»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»»»» Rate|number|true|none|Tax rate|
|»»» Claimed|object¦null|true|none|none|
|»»»» ToDate|object|false|none|none|
|»»»»» Percent|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Remaining|object|false|none|none|
|»»»»» Percent|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»» PercentComplete|integer|true|none|Displays cost center progress percentage.|
|»» Name|string|false|none|none|
|»» Job|integer|false|none|none|
|»» Section|integer|false|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|ExTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|»» IncTax|number|true|none|IncTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|» ItemsReceived|boolean|true|none|none|
|» ItemsReceivedDate|string(date-time)¦null|false|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Catalogs|object|true|none|none|
|»» Catalog|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» PartNo|string|true|none|The vendor part number for the item.|
|»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Qty|number|true|none|none|
|»» UnitPrice|object|true|none|Please specify either UnitPrice or Total. The other will be calculated.|
|»»» ExTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»»» IncTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»» Total|object|true|none|Please specify either UnitPrice or Total. The other will be calculated.|
|»»» ExTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»»» IncTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»» Allocations|[object]|true|none|none|
|»»» StorageDevice|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» AssignedTo|object¦null|true|none|none|
|»»»» ID|integer|false|none|none|
|»»»» CostCenter|object|false|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» Name|string|false|none|none|
|»»»» Job|integer|false|none|none|
|»»»» Section|integer|false|none|none|
|»»» Quantity|number|true|none|none|
|»»» ExpenseCostCenter|object¦null|true|none|none|
|»»»» ID|integer|false|none|none|
|»»»» Name|string|false|none|none|
|» VendorOrderNo|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## 90b97d5ce6bca4ec0542f63c98ee5f31

<a id="opId90b97d5ce6bca4ec0542f63c98ee5f31"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}`

*Retrieve details for a specific vendor receipt.*

<h3 id="90b97d5ce6bca4ec0542f63c98ee5f31-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
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
  "VendorInvoiceNo": "string",
  "PackingSlipNo": "string",
  "Notes": "string",
  "Currency": "USD",
  "ExchangeRate": 1,
  "DateIssued": "2021-04-22",
  "DueDate": "2021-04-22",
  "Category": {
    "ID": 12345,
    "Name": "Job Reporting",
    "Ref": "string"
  },
  "DateCreated": "2018-05-21T19:53:39+10:00",
  "DateModified": "2018-05-21T19:53:39+10:00",
  "TaxAdjustment": 1.57,
  "FreightTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Rate": 10
  },
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "FreightBilledTo": {
    "ID": 0,
    "CostCenter": {
      "ID": 0,
      "CostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "JobID": 0,
      "Name": "string",
      "DisplayOrder": 0,
      "Total": {
        "ExTax": 1.57,
        "Tax": 1.57,
        "IncTax": 1.57,
        "TaxCode": {
          "ID": 12345,
          "Code": "GST",
          "Type": "Single",
          "Rate": 10
        }
      },
      "Claimed": {
        "ToDate": {
          "Percent": 1.57,
          "Amount": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        },
        "Remaining": {
          "Percent": 1.57,
          "Amount": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        }
      },
      "PercentComplete": 0
    },
    "Name": "string",
    "Job": 0,
    "Section": 0
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "ItemsReceived": true,
  "ItemsReceivedDate": "2018-05-21T19:53:39+10:00",
  "Catalogs": {
    "Catalog": {
      "ID": 0,
      "PartNo": "string",
      "Name": "string"
    },
    "Qty": 0,
    "UnitPrice": {
      "ExTax": 1.57,
      "IncTax": 1.57
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57
    },
    "Allocations": [
      {
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
        "Quantity": 1.57,
        "ExpenseCostCenter": {
          "ID": 12345,
          "Name": "string"
        }
      }
    ]
  },
  "VendorOrderNo": 0
}
```

<h3 id="90b97d5ce6bca4ec0542f63c98ee5f31-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor receipt details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor receipt not found.|None|

<h3 id="90b97d5ce6bca4ec0542f63c98ee5f31-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorInvoiceNo|string|true|none|none|
|» PackingSlipNo|string|true|none|none|
|» Notes|string|true|none|This column supports HTML formatting.|
|» Currency|string|true|none|none|
|» ExchangeRate|number|true|none|none|
|» DateIssued|string(date)|true|none|This date cannot be in the future|
|» DueDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Category|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» Ref|string|false|none|This will be used to link to your accounting package, and will usually match your package's *Name* field.|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» TaxAdjustment|number|true|none|none|
|» FreightTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Rate|number|true|none|Tax rate|
|» Freight|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» FreightBilledTo|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» CostCenter|object|false|none|none|
|»»» ID|integer|true|none|none|
|»»» CostCenter|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» JobID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»»» TaxCode|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Code|string|true|none|Tax code|
|»»»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»»»» Rate|number|true|none|Tax rate|
|»»» Claimed|object¦null|true|none|none|
|»»»» ToDate|object|false|none|none|
|»»»»» Percent|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Remaining|object|false|none|none|
|»»»»» Percent|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»» PercentComplete|integer|true|none|Displays cost center progress percentage.|
|»» Name|string|false|none|none|
|»» Job|integer|false|none|none|
|»» Section|integer|false|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|ExTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|»» IncTax|number|true|none|IncTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|» ItemsReceived|boolean|true|none|none|
|» ItemsReceivedDate|string(date-time)¦null|false|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Catalogs|object|true|none|none|
|»» Catalog|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» PartNo|string|true|none|The vendor part number for the item.|
|»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Qty|number|true|none|none|
|»» UnitPrice|object|true|none|Please specify either UnitPrice or Total. The other will be calculated.|
|»»» ExTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»»» IncTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»» Total|object|true|none|Please specify either UnitPrice or Total. The other will be calculated.|
|»»» ExTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»»» IncTax|number|true|none|Please specify either ExTax or IncTax. The other will be calculated.|
|»» Allocations|[object]|true|none|none|
|»»» StorageDevice|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» AssignedTo|object¦null|true|none|none|
|»»»» ID|integer|false|none|none|
|»»»» CostCenter|object|false|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» Name|string|false|none|none|
|»»»» Job|integer|false|none|none|
|»»»» Section|integer|false|none|none|
|»»» Quantity|number|true|none|none|
|»»» ExpenseCostCenter|object¦null|true|none|none|
|»»»» ID|integer|false|none|none|
|»»»» Name|string|false|none|none|
|» VendorOrderNo|integer|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|

<aside class="success">
This operation does not require authentication
</aside>

## f4027319137f1f035c197390eaf20891

<a id="opIdf4027319137f1f035c197390eaf20891"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "VendorInvoiceNo": "string",
  "PackingSlipNo": "string",
  "Notes": "string",
  "ExchangeRate": 1,
  "DateIssued": "2021-04-22",
  "Category": 0,
  "TaxAdjustment": 1.57,
  "FreightTaxCode": 0,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "ItemsReceived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}`

*Update a vendor receipt.*

> Body parameter

```json
{
  "VendorInvoiceNo": "string",
  "PackingSlipNo": "string",
  "Notes": "string",
  "ExchangeRate": 1,
  "DateIssued": "2021-04-22",
  "Category": 0,
  "TaxAdjustment": 1.57,
  "FreightTaxCode": 0,
  "Freight": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "ItemsReceived": true
}
```

<h3 id="f4027319137f1f035c197390eaf20891-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|
|body|body|object|true|Vendor receipt object|
|» VendorInvoiceNo|body|string|false|none|
|» PackingSlipNo|body|string|false|none|
|» Notes|body|string|false|This column supports HTML formatting.|
|» ExchangeRate|body|number|false|none|
|» DateIssued|body|string(date)|false|This date cannot be in the future|
|» Category|body|integer|false|ID of a accounting category|
|» TaxAdjustment|body|number|false|none|
|» FreightTaxCode|body|integer|false|ID of a tax code|
|» Freight|body|object|false|none|
|»» ExTax|body|number|false|none|
|»» IncTax|body|number|false|none|
|» Total|body|object|false|none|
|»» ExTax|body|number|false|ExTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|»» IncTax|body|number|false|IncTax field is optional for POST/PATCH. When supplied, tax adjustment will be entered that is the difference between the total supplied and the line item totals. Please note that the field can only be updated for `Tax Adjustment` purpose, and user has to take the responsibility for the amount they entered.|
|» ItemsReceived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f4027319137f1f035c197390eaf20891-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor receipt updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 5bf0cdd90d716770f8fa99a8efb4f846

<a id="opId5bf0cdd90d716770f8fa99a8efb4f846"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorOrders/{vendorOrderID}/receipts/{vendorReceiptID}`

*Delete a vendor receipt.*

<h3 id="5bf0cdd90d716770f8fa99a8efb4f846-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorOrderID|path|integer|true|A valid vendor order id|
|vendorReceiptID|path|integer|true|A valid vendor receipt id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5bf0cdd90d716770f8fa99a8efb4f846-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor receipt deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor receipt does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>