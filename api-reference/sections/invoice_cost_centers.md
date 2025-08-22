# Invoice Cost Centers

## bf0f7b7fe8e3bad57a0a9d677048f390

<a id="opIdbf0f7b7fe8e3bad57a0a9d677048f390"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/`

*List all invoice cost centers.*

<h3 id="bf0f7b7fe8e3bad57a0a9d677048f390-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
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
    "Name": "string",
    "JobID": 0,
    "RecurringInvoiceID": 0,
    "SectionID": 0,
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57
    },
    "Claim": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "Percent": 1.57
    },
    "Items": [
      {
        "ID": 0,
        "Item": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string",
          "Type": "string"
        },
        "Quantity": {
          "Total": 1.57,
          "Remaining": 1.57,
          "Claimed": 1.57
        },
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
]
```

<h3 id="bf0f7b7fe8e3bad57a0a9d677048f390-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all invoice cost centers.|Inline|

<h3 id="bf0f7b7fe8e3bad57a0a9d677048f390-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Cost center ID of a job section.|
|» Name|string|true|none|Cost center name of job section.|
|» JobID|integer|true|none|Job ID of cost center.|
|» RecurringInvoiceID|integer|true|none|Recurring invoice ID of a cost center.|
|» SectionID|integer|true|none|Section ID of a cost center.|
|» CostCenter|object|true|none|Cost center account.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of a cost center excluding tax.|
|»» IncTax|number|true|none|Total amount of a cost center including tax.|
|» Claim|object|true|none|none|
|»» ExTax|number|true|none|Total invoiced amount of a cost center excluding tax.|
|»» IncTax|number|true|none|Total invoiced amount of a cost center including tax.|
|»» Percent|number|true|none|Total invoiced percentage of a cost center.|
|» Items|[object]|true|none|List of billable catalog, prebuild, one-offs and labour items in a cost center.|
|»» ID|integer|true|none|Item ID of a billable item of the invoice's cost center.|
|»» Item|object|true|none|Item could be one of Catalog, Prebuild, OneOff or Labor.|
|»»» ID|integer|true|none|ID of an item.|
|»»» PartNo|string|true|none|Part No. of an item.|
|»»» Name|string|true|none|Name of an item.|
|»»» Type|string|true|none|Type of an item.|
|»» Quantity|object|true|none|none|
|»»» Total|number|true|none|Total item quantity in job cost center.|
|»»» Remaining|number|true|none|Claim-able remaining item quantity of jo cost center.|
|»»» Claimed|number|true|none|Claimed/Invoiced item quantity when invoiced per item.|
|»» UnitPrice|object|true|none|none|
|»»» ExTax|number|true|none|Unit price of a cost center item excluding tax.|
|»»» IncTax|number|true|none|Unit price of a cost center item including tax.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) excluding tax.|
|»»» IncTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) including tax.|

<aside class="success">
This operation does not require authentication
</aside>

## 538915fa8a2d1aa72cb3a6425c5d013d

<a id="opId538915fa8a2d1aa72cb3a6425c5d013d"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/{costCenterID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/{costCenterID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/{costCenterID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/invoices/{invoiceID}/costCenters/{costCenterID}`

*Retrieve details for a specific invoice cost center.*

<h3 id="538915fa8a2d1aa72cb3a6425c5d013d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|invoiceID|path|integer|true|A valid invoice id|
|costCenterID|path|integer|true|A valid cost center id|
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
  "Name": "string",
  "JobID": 0,
  "RecurringInvoiceID": 0,
  "SectionID": 0,
  "CostCenter": {
    "ID": 12345,
    "Name": "string"
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Claim": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Percent": 1.57
  },
  "Items": [
    {
      "ID": 0,
      "Item": {
        "ID": 0,
        "PartNo": "string",
        "Name": "string",
        "Type": "string"
      },
      "Quantity": {
        "Total": 1.57,
        "Remaining": 1.57,
        "Claimed": 1.57
      },
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

<h3 id="538915fa8a2d1aa72cb3a6425c5d013d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Invoice Cost Center details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Invoice Cost Center not found.|None|

<h3 id="538915fa8a2d1aa72cb3a6425c5d013d-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|Cost center ID of a job section.|
|» Name|string|true|none|Cost center name of job section.|
|» JobID|integer|true|none|Job ID of cost center.|
|» RecurringInvoiceID|integer|true|none|Recurring invoice ID of a cost center.|
|» SectionID|integer|true|none|Section ID of a cost center.|
|» CostCenter|object|true|none|Cost center account.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|Total amount of a cost center excluding tax.|
|»» IncTax|number|true|none|Total amount of a cost center including tax.|
|» Claim|object|true|none|none|
|»» ExTax|number|true|none|Total invoiced amount of a cost center excluding tax.|
|»» IncTax|number|true|none|Total invoiced amount of a cost center including tax.|
|»» Percent|number|true|none|Total invoiced percentage of a cost center.|
|» Items|[object]|true|none|List of billable catalog, prebuild, one-offs and labour items in a cost center.|
|»» ID|integer|true|none|Item ID of a billable item of the invoice's cost center.|
|»» Item|object|true|none|Item could be one of Catalog, Prebuild, OneOff or Labor.|
|»»» ID|integer|true|none|ID of an item.|
|»»» PartNo|string|true|none|Part No. of an item.|
|»»» Name|string|true|none|Name of an item.|
|»»» Type|string|true|none|Type of an item.|
|»» Quantity|object|true|none|none|
|»»» Total|number|true|none|Total item quantity in job cost center.|
|»»» Remaining|number|true|none|Claim-able remaining item quantity of jo cost center.|
|»»» Claimed|number|true|none|Claimed/Invoiced item quantity when invoiced per item.|
|»» UnitPrice|object|true|none|none|
|»»» ExTax|number|true|none|Unit price of a cost center item excluding tax.|
|»»» IncTax|number|true|none|Unit price of a cost center item including tax.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) excluding tax.|
|»»» IncTax|number|true|none|Total price of a cost center item. (Claimed/Invoiced Quantity * UnitPrice) including tax.|

<aside class="success">
This operation does not require authentication
</aside>