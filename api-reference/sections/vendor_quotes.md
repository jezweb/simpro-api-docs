# Vendor Quotes

A vendor/supplier quote is a list of items required for a quote or job. You can email this quote to a number of suppliers. After you receive the pricing, you can compare prices, update the vendor/supplier quote and nominate the winning vendor/supplier.

## 9de9b46265526d3f8da70127422bc333

<a id="opId9de9b46265526d3f8da70127422bc333"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/`

*List all vendor quotes.*

<h3 id="9de9b46265526d3f8da70127422bc333-parameters">Parameters</h3>

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
    "DateIssued": "2021-04-22",
    "Reference": "string",
    "Vendors": [
      {
        "ID": 0,
        "Name": "string"
      }
    ],
    "Total": {
      "ExTax": 0,
      "Tax": 0,
      "IncTax": 0
    }
  }
]
```

<h3 id="9de9b46265526d3f8da70127422bc333-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all vendor quotes.|Inline|

<h3 id="9de9b46265526d3f8da70127422bc333-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Reference|string|true|none|none|
|» Vendors|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 5a107573c7ef6177fa11e00e6a29ca21

<a id="opId5a107573c7ef6177fa11e00e6a29ca21"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/vendorQuotes/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "DateIssued": "2021-04-22",
  "Reference": "string",
  "Vendors": [
    0
  ],
  "AssignedTo": {
    "CostCenter": 0,
    "Type": "Job"
  },
  "Winner": 0,
  "Catalogs": [
    {
      "Catalog": 0,
      "Quantity": 0,
      "Prices": [
        {
          "Vendor": 0,
          "UnitPrice": {
            "ExTax": 0,
            "IncTax": 0
          }
        }
      ]
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/',
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

r = requests.post('/api/v1.0/companies/{companyID}/vendorQuotes/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/vendorQuotes/`

*Create a new vendor quote.*

> Body parameter

```json
{
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "DateIssued": "2021-04-22",
  "Reference": "string",
  "Vendors": [
    0
  ],
  "AssignedTo": {
    "CostCenter": 0,
    "Type": "Job"
  },
  "Winner": 0,
  "Catalogs": [
    {
      "Catalog": 0,
      "Quantity": 0,
      "Prices": [
        {
          "Vendor": 0,
          "UnitPrice": {
            "ExTax": 0,
            "IncTax": 0
          }
        }
      ]
    }
  ]
}
```

<h3 id="5a107573c7ef6177fa11e00e6a29ca21-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Vendor Quote object|
|» VendorNotes|body|string|false|This column supports HTML formatting.|
|» PrivateNotes|body|string|false|This column supports HTML formatting.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Reference|body|string|false|none|
|» Vendors|body|[integer]|false|none|
|» AssignedTo|body|object|false|none|
|»» CostCenter|body|integer|false|ID of a cost center|
|»» Type|body|string|false|none|
|» Winner|body|integer|false|ID of a vendor|
|» Catalogs|body|[object]|false|none|
|»» Catalog|body|integer|true|ID of a catalog item|
|»» Quantity|body|number|true|none|
|»» Prices|body|[object]|false|none|
|»»» Vendor|body|integer|false|ID of a vendor|
|»»» UnitPrice|body|object|false|none|
|»»»» ExTax|body|number|false|none|
|»»»» IncTax|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» Type|Job|
|»» Type|Quote|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "DateIssued": "2021-04-22",
  "Reference": "string",
  "Vendors": [
    {
      "ID": 0,
      "Name": "string"
    }
  ],
  "AssignedTo": {
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Type": "Job",
    "ProjectID": 0,
    "SectionID": 0
  },
  "Winner": {
    "ID": 0,
    "Name": "string"
  },
  "Catalogs": [
    {
      "Catalog": {
        "ID": 0,
        "PartNo": "string",
        "Name": "string"
      },
      "Quantity": 0,
      "Prices": [
        {
          "Vendor": {
            "ID": 0,
            "Name": "string"
          },
          "UnitPrice": {
            "ExTax": 0,
            "Tax": 0,
            "IncTax": 0
          },
          "Total": {
            "ExTax": 0,
            "Tax": 0,
            "IncTax": 0
          }
        }
      ]
    }
  ],
  "Total": {
    "ExTax": 0,
    "Tax": 0,
    "IncTax": 0
  }
}
```

<h3 id="5a107573c7ef6177fa11e00e6a29ca21-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor Quote created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="5a107573c7ef6177fa11e00e6a29ca21-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorNotes|string|true|none|This column supports HTML formatting.|
|» PrivateNotes|string|true|none|This column supports HTML formatting.|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Reference|string|true|none|none|
|» Vendors|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssignedTo|object|true|none|none|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Type|string|true|none|none|
|»» ProjectID|integer|true|none|none|
|»» SectionID|integer|true|none|none|
|» Winner|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Catalogs|[object]|true|none|none|
|»» Catalog|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» PartNo|string|true|none|The vendor part number for the item.|
|»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Quantity|number|true|none|none|
|»» Prices|[object]|true|none|none|
|»»» Vendor|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» UnitPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|Job|
|Type|Quote|

<aside class="success">
This operation does not require authentication
</aside>

## a9c4b31630e97b593898ab64b99b7f71

<a id="opIda9c4b31630e97b593898ab64b99b7f71"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}`

*Retrieve details for a specific vendor quote.*

<h3 id="a9c4b31630e97b593898ab64b99b7f71-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
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
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "CreatedBy": {
    "ID": 123,
    "Name": "John Smith",
    "Type": "employee",
    "TypeId": 0
  },
  "DateIssued": "2021-04-22",
  "Reference": "string",
  "Vendors": [
    {
      "ID": 0,
      "Name": "string"
    }
  ],
  "AssignedTo": {
    "CostCenter": {
      "ID": 12345,
      "Name": "string"
    },
    "Type": "Job",
    "ProjectID": 0,
    "SectionID": 0
  },
  "Winner": {
    "ID": 0,
    "Name": "string"
  },
  "Catalogs": [
    {
      "Catalog": {
        "ID": 0,
        "PartNo": "string",
        "Name": "string"
      },
      "Quantity": 0,
      "Prices": [
        {
          "Vendor": {
            "ID": 0,
            "Name": "string"
          },
          "UnitPrice": {
            "ExTax": 0,
            "Tax": 0,
            "IncTax": 0
          },
          "Total": {
            "ExTax": 0,
            "Tax": 0,
            "IncTax": 0
          }
        }
      ]
    }
  ],
  "Total": {
    "ExTax": 0,
    "Tax": 0,
    "IncTax": 0
  }
}
```

<h3 id="a9c4b31630e97b593898ab64b99b7f71-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Vendor Quote details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Quote not found.|None|

<h3 id="a9c4b31630e97b593898ab64b99b7f71-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» VendorNotes|string|true|none|This column supports HTML formatting.|
|» PrivateNotes|string|true|none|This column supports HTML formatting.|
|» CreatedBy|object|true|none|none|
|»» ID|integer|true|none|Employee ID of the staff member|
|»» Name|string|true|none|Name of the staff member|
|»» Type|string|true|none|Staff type|
|»» TypeId|integer|true|none|Employee ID / Contractor ID / Plant ID|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Reference|string|true|none|none|
|» Vendors|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» AssignedTo|object|true|none|none|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» Type|string|true|none|none|
|»» ProjectID|integer|true|none|none|
|»» SectionID|integer|true|none|none|
|» Winner|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» Catalogs|[object]|true|none|none|
|»» Catalog|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» PartNo|string|true|none|The vendor part number for the item.|
|»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» Quantity|number|true|none|none|
|»» Prices|[object]|true|none|none|
|»»» Vendor|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» UnitPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» Tax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|employee|
|Type|contractor|
|Type|plant|
|Type|Job|
|Type|Quote|

<aside class="success">
This operation does not require authentication
</aside>

## 822f606f919883b063c0c64b2f6136a8

<a id="opId822f606f919883b063c0c64b2f6136a8"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "DateIssued": "2021-04-22",
  "Reference": "string",
  "AssignedTo": {
    "CostCenter": 0,
    "Type": "Job"
  },
  "Winner": 0
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}`

*Update a vendor quote.*

> Body parameter

```json
{
  "VendorNotes": "string",
  "PrivateNotes": "string",
  "DateIssued": "2021-04-22",
  "Reference": "string",
  "AssignedTo": {
    "CostCenter": 0,
    "Type": "Job"
  },
  "Winner": 0
}
```

<h3 id="822f606f919883b063c0c64b2f6136a8-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|
|body|body|object|true|Vendor Quote object|
|» VendorNotes|body|string|false|This column supports HTML formatting.|
|» PrivateNotes|body|string|false|This column supports HTML formatting.|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Reference|body|string|false|none|
|» AssignedTo|body|object|false|none|
|»» CostCenter|body|integer|false|ID of a cost center|
|»» Type|body|string|false|none|
|» Winner|body|integer|false|ID of a vendor|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» Type|Job|
|»» Type|Quote|

<h3 id="822f606f919883b063c0c64b2f6136a8-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor Quote updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 022d66b81161791a0c71d51b842515b7

<a id="opId022d66b81161791a0c71d51b842515b7"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/vendorQuotes/{vendorQuoteID}`

*Delete a vendor quote.*

<h3 id="022d66b81161791a0c71d51b842515b7-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|vendorQuoteID|path|integer|true|A valid vendor quote id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="022d66b81161791a0c71d51b842515b7-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor Quote deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Vendor Quote does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>