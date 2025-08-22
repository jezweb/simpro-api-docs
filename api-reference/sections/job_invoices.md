# Job Invoices

## 411e1260eec784f2579ff28275dade96

<a id="opId411e1260eec784f2579ff28275dade96"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/`

*List all customer invoices.*

<h3 id="411e1260eec784f2579ff28275dade96-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
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
    "Status": {
      "ID": 12345,
      "Name": "Sales: In-Progress"
    },
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57,
      "Paid": 1.57
    }
  }
]
```

<h3 id="411e1260eec784f2579ff28275dade96-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all customer invoices.|Inline|

<h3 id="411e1260eec784f2579ff28275dade96-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Paid|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 8e77006eff621fbe8818155ab4c0cc9b

<a id="opId8e77006eff621fbe8818155ab4c0cc9b"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Type": "TaxInvoice",
  "DateIssued": "2021-04-22",
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Pending",
  "IsInvoicePerItem": true,
  "LatePaymentFee": 1.57,
  "STCsReceived": true,
  "VEECsReceived": true,
  "Status": 0,
  "AutoStatusChange": true,
  "Description": "string",
  "Footnote": "string",
  "Currency": "string",
  "CostCenters": [
    {
      "ID": 0,
      "Percent": 1.57,
      "Items": {
        "Labors": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "Catalogs": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "Prebuilds": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "ServiceFees": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "OneOffs": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ]
      }
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/',
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

r = requests.post('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/`

*Create a new customer invoice.*

> Body parameter

```json
{
  "Type": "TaxInvoice",
  "DateIssued": "2021-04-22",
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Pending",
  "IsInvoicePerItem": true,
  "LatePaymentFee": 1.57,
  "STCsReceived": true,
  "VEECsReceived": true,
  "Status": 0,
  "AutoStatusChange": true,
  "Description": "string",
  "Footnote": "string",
  "Currency": "string",
  "CostCenters": [
    {
      "ID": 0,
      "Percent": 1.57,
      "Items": {
        "Labors": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "Catalogs": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "Prebuilds": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "ServiceFees": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ],
        "OneOffs": [
          {
            "ID": 0,
            "Qty": 1.57
          }
        ]
      }
    }
  ]
}
```

<h3 id="8e77006eff621fbe8818155ab4c0cc9b-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|body|body|object|true|Customer invoice object|
|» Type|body|string|false|none|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentTerms|body|object|false|none|
|»» Days|body|integer|false|Specify either Days and Type, or DueDate. Must specify either 0, 7, 14, 21, 28, 30, 45, 60.|
|»» Type|body|string|false|Specify either Days and Type, or DueDate.|
|»» DueDate|body|string(date)|false|Specify either Days and Type, or DueDate. Due date cannot be before the invoice date.|
|» Stage|body|string|false|none|
|» IsInvoicePerItem|body|boolean|false|none|
|» LatePaymentFee|body|number|false|none|
|» STCsReceived|body|boolean|false|none|
|» VEECsReceived|body|boolean|false|none|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoStatusChange|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|none|
|» Footnote|body|string|false|none|
|» Currency|body|string|false|ID of a currency|
|» CostCenters|body|[object]|false|none|
|»» ID|body|integer|false|none|
|»» Percent|body|number|false|none|
|»» Items|body|object|false|none|
|»»» Labors|body|[object]|false|none|
|»»»» ID|body|integer|false|none|
|»»»» Qty|body|number|false|none|
|»»» Catalogs|body|[object]|false|none|
|»»»» ID|body|integer|false|none|
|»»»» Qty|body|number|false|none|
|»»» Prebuilds|body|[object]|false|none|
|»»»» ID|body|integer|false|none|
|»»»» Qty|body|number|false|none|
|»»» ServiceFees|body|[object]|false|none|
|»»»» ID|body|integer|false|none|
|»»»» Qty|body|number|false|none|
|»»» OneOffs|body|[object]|false|none|
|»»»» ID|body|integer|false|none|
|»»»» Qty|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Type|TaxInvoice|
|» Type|Deposit|
|» Type|ProgressClaim|
|» Type|RequestForClaim|
|»» Type|Invoice|
|»» Type|Month|
|» Stage|Pending|
|» Stage|Approved|

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Type": "TaxInvoice",
  "DateIssued": "2021-04-22",
  "Period": {
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22"
  },
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNo": 0,
  "IsFinalClaim": true,
  "Stage": "Pending",
  "DateApproved": "2018-05-21T19:53:39+10:00",
  "IsInvoicePerItem": true,
  "LatePaymentFee": 1.57,
  "STCsReceived": true,
  "VEECsReceived": true,
  "AccCategory": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "AutoStatusChange": true,
  "IsVoided": true,
  "IsCredit": true,
  "IsPaid": true,
  "IsRetainage": true,
  "Description": "string",
  "Footnote": "string",
  "DaysOverdue": 0,
  "Currency": "USD",
  "ExchangeRate": 0,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Paid": 1.57
  },
  "Retention": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "CostCenters": [
    {
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
        "Current": {
          "Percent": 1.57,
          "Amount": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        },
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
      "PercentComplete": 0,
      "Items": {
        "Labors": [
          {
            "ID": 0,
            "LaborType": {
              "ID": 12345,
              "Name": "string"
            },
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "Catalogs": [
          {
            "ID": 0,
            "Catalog": {
              "ID": 0,
              "PartNo": "string",
              "Name": "string"
            },
            "BillableStatus": "Billable",
            "BasePrice": 0,
            "Markup": 0,
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "Prebuilds": [
          {
            "ID": 0,
            "Prebuild": {
              "ID": 0,
              "PartNo": "string",
              "Name": "string"
            },
            "BillableStatus": "Billable",
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "ServiceFees": [
          {
            "ID": 0,
            "ServiceFee": {
              "ID": 0,
              "Name": "string"
            },
            "BillableStatus": "Billable",
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "OneOffs": [
          {
            "ID": 0,
            "Type": "Material",
            "BillableStatus": "Billable",
            "Description": "string",
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ]
      }
    }
  ],
  "DateCreated": "2018-05-21T19:53:39+10:00",
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
  ]
}
```

<h3 id="8e77006eff621fbe8818155ab4c0cc9b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer invoice created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="8e77006eff621fbe8818155ab4c0cc9b-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Period|object|true|none|none|
|»» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentTerms|object|true|none|none|
|»» Days|integer|true|none|Specify either Days and Type, or DueDate. Must specify either 0, 7, 14, 21, 28, 30, 45, 60.|
|»» Type|string|true|none|Specify either Days and Type, or DueDate.|
|»» DueDate|string(date)|true|none|Specify either Days and Type, or DueDate. Due date cannot be before the invoice date.|
|» ProgressClaimNo|integer|true|none|none|
|» IsFinalClaim|boolean|true|none|Return true if invoice is a progress claim and is marked as Final Claim.|
|» Stage|string|true|none|none|
|» DateApproved|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» IsInvoicePerItem|boolean|true|none|none|
|» LatePaymentFee|number|true|none|none|
|» STCsReceived|boolean|true|none|none|
|» VEECsReceived|boolean|true|none|none|
|» AccCategory|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoStatusChange|boolean|true|none|Set this to false if you would like to set status manually.|
|» IsVoided|boolean|true|none|none|
|» IsCredit|boolean|true|none|none|
|» IsPaid|boolean|true|none|none|
|» IsRetainage|boolean|true|none|none|
|» Description|string|true|none|none|
|» Footnote|string|true|none|none|
|» DaysOverdue|integer|true|none|none|
|» Currency|object|true|none|The currency for this invoice. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»» ID|string|true|none|none|
|»» Name|string|true|none|none|
|»» Visible|boolean|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Paid|number|true|none|none|
|» Retention|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» JobID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»»» TaxCode|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Code|string|true|none|Tax code|
|»»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»»» Rate|number|true|none|Tax rate|
|»» Claimed|object¦null|true|none|none|
|»»» Current|object|false|none|none|
|»»»» Percent|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»» ToDate|object|false|none|none|
|»»»» Percent|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»» Remaining|object|false|none|none|
|»»»» Percent|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» PercentComplete|integer|true|none|Displays cost center progress percentage.|
|»» Items|object|false|none|none|
|»»» Labors|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» LaborType|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» Catalogs|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Catalog|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» PartNo|string|true|none|The vendor part number for the item.|
|»»»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» BasePrice|number|true|none|none|
|»»»» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» Prebuilds|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Prebuild|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» PartNo|string|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» ServiceFees|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» ServiceFee|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» OneOffs|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Type|string|true|none|none|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» Description|string|true|none|none|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this customer invoice. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|TaxInvoice|
|Type|Deposit|
|Type|ProgressClaim|
|Type|RequestForClaim|
|Type|Invoice|
|Type|Month|
|Stage|Pending|
|Stage|Approved|
|Type|Single|
|Type|Component|
|Type|Combine|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Material|
|Type|Labor|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 9bfed1a13345422cd79befc3a38e6d24

<a id="opId9bfed1a13345422cd79befc3a38e6d24"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}`

*Retrieve details for a specific customer invoice.*

<h3 id="9bfed1a13345422cd79befc3a38e6d24-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|invoiceID|path|integer|true|A valid invoice id|
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
  "Type": "TaxInvoice",
  "DateIssued": "2021-04-22",
  "Period": {
    "StartDate": "2021-04-22",
    "EndDate": "2021-04-22"
  },
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "ProgressClaimNo": 0,
  "IsFinalClaim": true,
  "Stage": "Pending",
  "DateApproved": "2018-05-21T19:53:39+10:00",
  "IsInvoicePerItem": true,
  "LatePaymentFee": 1.57,
  "STCsReceived": true,
  "VEECsReceived": true,
  "AccCategory": {
    "ID": 12345,
    "Name": "Job Reporting"
  },
  "Status": {
    "ID": 12345,
    "Name": "Sales: In-Progress"
  },
  "AutoStatusChange": true,
  "IsVoided": true,
  "IsCredit": true,
  "IsPaid": true,
  "IsRetainage": true,
  "Description": "string",
  "Footnote": "string",
  "DaysOverdue": 0,
  "Currency": "USD",
  "ExchangeRate": 0,
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57,
    "Paid": 1.57
  },
  "Retention": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "CostCenters": [
    {
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
        "Current": {
          "Percent": 1.57,
          "Amount": {
            "ExTax": 1.57,
            "IncTax": 1.57
          }
        },
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
      "PercentComplete": 0,
      "Items": {
        "Labors": [
          {
            "ID": 0,
            "LaborType": {
              "ID": 12345,
              "Name": "string"
            },
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "Catalogs": [
          {
            "ID": 0,
            "Catalog": {
              "ID": 0,
              "PartNo": "string",
              "Name": "string"
            },
            "BillableStatus": "Billable",
            "BasePrice": 0,
            "Markup": 0,
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "Prebuilds": [
          {
            "ID": 0,
            "Prebuild": {
              "ID": 0,
              "PartNo": "string",
              "Name": "string"
            },
            "BillableStatus": "Billable",
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "ServiceFees": [
          {
            "ID": 0,
            "ServiceFee": {
              "ID": 0,
              "Name": "string"
            },
            "BillableStatus": "Billable",
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ],
        "OneOffs": [
          {
            "ID": 0,
            "Type": "Material",
            "BillableStatus": "Billable",
            "Description": "string",
            "Discount": 0,
            "SellPrice": {
              "ExTax": 1.57,
              "IncTax": 1.57,
              "ExDiscountExTax": 1.57,
              "ExDiscountIncTax": 1.57
            },
            "Total": {
              "Qty": 0,
              "Amount": {
                "ExTax": 1.57,
                "IncTax": 1.57
              }
            },
            "Claimed": {
              "Current": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "ToDate": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              },
              "Remaining": {
                "Qty": 1.57,
                "Amount": {
                  "ExTax": 1.57,
                  "IncTax": 1.57
                }
              }
            }
          }
        ]
      }
    }
  ],
  "DateCreated": "2018-05-21T19:53:39+10:00",
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
  ]
}
```

<h3 id="9bfed1a13345422cd79befc3a38e6d24-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Customer invoice details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer invoice not found.|None|

<h3 id="9bfed1a13345422cd79befc3a38e6d24-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Type|string|true|none|none|
|» DateIssued|string(date)|true|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» Period|object|true|none|none|
|»» StartDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|»» EndDate|string(date)¦null|false|none|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentTerms|object|true|none|none|
|»» Days|integer|true|none|Specify either Days and Type, or DueDate. Must specify either 0, 7, 14, 21, 28, 30, 45, 60.|
|»» Type|string|true|none|Specify either Days and Type, or DueDate.|
|»» DueDate|string(date)|true|none|Specify either Days and Type, or DueDate. Due date cannot be before the invoice date.|
|» ProgressClaimNo|integer|true|none|none|
|» IsFinalClaim|boolean|true|none|Return true if invoice is a progress claim and is marked as Final Claim.|
|» Stage|string|true|none|none|
|» DateApproved|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» IsInvoicePerItem|boolean|true|none|none|
|» LatePaymentFee|number|true|none|none|
|» STCsReceived|boolean|true|none|none|
|» VEECsReceived|boolean|true|none|none|
|» AccCategory|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Status|object|true|none|Set the current status of this invoice in your workflow. Please set AutoStatusChange to false if you wish to manage the status manually.|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|Status name|
|» AutoStatusChange|boolean|true|none|Set this to false if you would like to set status manually.|
|» IsVoided|boolean|true|none|none|
|» IsCredit|boolean|true|none|none|
|» IsPaid|boolean|true|none|none|
|» IsRetainage|boolean|true|none|none|
|» Description|string|true|none|none|
|» Footnote|string|true|none|none|
|» DaysOverdue|integer|true|none|none|
|» Currency|object|true|none|The currency for this invoice. See Setup -> Currencies. Specify null or leave unspecified for the default currency.|
|»» ID|string|true|none|none|
|»» Name|string|true|none|none|
|»» Visible|boolean|true|none|none|
|» ExchangeRate|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|»» Paid|number|true|none|none|
|» Retention|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» CostCenters|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» CostCenter|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» JobID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» DisplayOrder|integer|true|none|Sets the position of this cost center relative to the others within this section. Please note that the values you set will be overriden with a sequence of numbers beginning with 1.|
|»» Total|object|true|none|none|
|»»» ExTax|number|true|none|none|
|»»» Tax|number|true|none|none|
|»»» IncTax|number|true|none|none|
|»»» TaxCode|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Code|string|true|none|Tax code|
|»»»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»»»» Rate|number|true|none|Tax rate|
|»» Claimed|object¦null|true|none|none|
|»»» Current|object|false|none|none|
|»»»» Percent|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»» ToDate|object|false|none|none|
|»»»» Percent|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»» Remaining|object|false|none|none|
|»»»» Percent|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» PercentComplete|integer|true|none|Displays cost center progress percentage.|
|»» Items|object|false|none|none|
|»»» Labors|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» LaborType|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» Catalogs|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Catalog|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» PartNo|string|true|none|The vendor part number for the item.|
|»»»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» BasePrice|number|true|none|none|
|»»»» Markup|number|true|none|Specify the markup of this item. If you specify this, the sell price (ex discount) will automatically be calculated.|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» Prebuilds|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Prebuild|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» PartNo|string|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» ServiceFees|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» ServiceFee|object|true|none|none|
|»»»»» ID|integer|true|none|none|
|»»»»» Name|string|true|none|none|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»» OneOffs|[object]|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Type|string|true|none|none|
|»»»» BillableStatus|string|true|none|Indicates a billable status of an item. An item can be billable or non-billable. Non-billable item's cost can be included.|
|»»»» Description|string|true|none|none|
|»»»» Discount|number|true|none|Specify the discount of this item. If you specify this, the sell price including discount will automatically be calculated.|
|»»»» SellPrice|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»»»»» ExDiscountExTax|number|true|none|none|
|»»»»» ExDiscountIncTax|number|true|none|none|
|»»»» Total|object|true|none|none|
|»»»»» Qty|number|true|none|none|
|»»»»» Amount|object|true|none|none|
|»»»»»» ExTax|number|true|none|none|
|»»»»»» IncTax|number|true|none|none|
|»»»» Claimed|object¦null|true|none|none|
|»»»»» Current|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» ToDate|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|»»»»» Remaining|object|false|none|none|
|»»»»»» Qty|number|true|none|none|
|»»»»»» Amount|object|true|none|none|
|»»»»»»» ExTax|number|true|none|none|
|»»»»»»» IncTax|number|true|none|none|
|» DateCreated|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this customer invoice. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|TaxInvoice|
|Type|Deposit|
|Type|ProgressClaim|
|Type|RequestForClaim|
|Type|Invoice|
|Type|Month|
|Stage|Pending|
|Stage|Approved|
|Type|Single|
|Type|Component|
|Type|Combine|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|Material|
|Type|Labor|
|BillableStatus|Billable|
|BillableStatus|NonBillable|
|BillableStatus|NonBillableIncludeCosts|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 5d271a9c99ef8f6881d039aa5e4fd45f

<a id="opId5d271a9c99ef8f6881d039aa5e4fd45f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "DateIssued": "2021-04-22",
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Pending",
  "LatePaymentFee": 1.57,
  "STCsReceived": true,
  "VEECsReceived": true,
  "Status": 0,
  "AutoStatusChange": true,
  "Description": "string",
  "Footnote": "string",
  "Currency": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}`

*Update a customer invoice.*

> Body parameter

```json
{
  "DateIssued": "2021-04-22",
  "PaymentTerms": {
    "Days": 0,
    "Type": "Invoice",
    "DueDate": "2021-04-22"
  },
  "Stage": "Pending",
  "LatePaymentFee": 1.57,
  "STCsReceived": true,
  "VEECsReceived": true,
  "Status": 0,
  "AutoStatusChange": true,
  "Description": "string",
  "Footnote": "string",
  "Currency": "string"
}
```

<h3 id="5d271a9c99ef8f6881d039aa5e4fd45f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|invoiceID|path|integer|true|A valid invoice id|
|body|body|object|true|Customer invoice object|
|» DateIssued|body|string(date)|false|Date in YYYY-MM-DD format eg. 2021-04-22. Null dates can be filtered by Field=null or Field=ne(null)|
|» PaymentTerms|body|object|false|none|
|»» Days|body|integer|false|Specify either Days and Type, or DueDate. Must specify either 0, 7, 14, 21, 28, 30, 45, 60.|
|»» Type|body|string|false|Specify either Days and Type, or DueDate.|
|»» DueDate|body|string(date)|false|Specify either Days and Type, or DueDate. Due date cannot be before the invoice date.|
|» Stage|body|string|false|none|
|» LatePaymentFee|body|number|false|none|
|» STCsReceived|body|boolean|false|none|
|» VEECsReceived|body|boolean|false|none|
|» Status|body|integer|false|ID of a customer invoice status code|
|» AutoStatusChange|body|boolean|false|Set this to false if you would like to set status manually.|
|» Description|body|string|false|none|
|» Footnote|body|string|false|none|
|» Currency|body|string|false|ID of a currency|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» Type|Invoice|
|»» Type|Month|
|» Stage|Pending|
|» Stage|Approved|

<h3 id="5d271a9c99ef8f6881d039aa5e4fd45f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer invoice updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## be749d3b41d3a54cf57d8b648908943f

<a id="opIdbe749d3b41d3a54cf57d8b648908943f"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/jobs/{jobID}/invoices/{invoiceID}`

*Delete a customer invoice.*

<h3 id="be749d3b41d3a54cf57d8b648908943f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|jobID|path|integer|true|A valid job id|
|invoiceID|path|integer|true|A valid invoice id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="be749d3b41d3a54cf57d8b648908943f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer invoice deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Customer invoice does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>