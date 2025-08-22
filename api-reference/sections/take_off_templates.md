# Take Off Templates

## 8f86766c4eafa17188be92e38e1ed99f

<a id="opId8f86766c4eafa17188be92e38e1ed99f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/`

*List all take off templates.*

<h3 id="8f86766c4eafa17188be92e38e1ed99f-parameters">Parameters</h3>

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
    "ID": 12345,
    "Name": "string",
    "DisplayOrder": 0,
    "Total": {
      "ExTax": 1.57,
      "IncTax": 1.57
    }
  }
]
```

<h3 id="8f86766c4eafa17188be92e38e1ed99f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all take off templates.|Inline|

<h3 id="8f86766c4eafa17188be92e38e1ed99f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Name of Take Off Template.|
|» DisplayOrder|integer|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 7e7b23fcc4d80d214c654678983708ba

<a id="opId7e7b23fcc4d80d214c654678983708ba"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/takeOffTemplates/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Group": 0,
  "SubGroup": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/',
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

r = requests.post('/api/v1.0/companies/{companyID}/takeOffTemplates/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/takeOffTemplates/`

*Create a new take off template.*

> Body parameter

```json
{
  "Name": "string",
  "Group": 0,
  "SubGroup": 0
}
```

<h3 id="7e7b23fcc4d80d214c654678983708ba-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Take Off Template object|
|» Name|body|string|false|Name of Take Off Template.|
|» Group|body|integer|true|ID of a take off template group|
|» SubGroup|body|integer|false|ID of a take off template sub group|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 12345,
  "Name": "string",
  "Group": {
    "ID": 0,
    "Name": "string"
  },
  "SubGroup": {
    "ID": 0,
    "Name": "string"
  },
  "DisplayOrder": 0,
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Catalog": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string"
        },
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        }
      }
    ],
    "OneOffs": [
      {
        "ID": 0,
        "Type": "Material",
        "Description": "string",
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
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
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        }
      }
    ],
    "Labors": [
      {
        "ID": 0,
        "LaborType": {
          "ID": 12345,
          "Name": "string"
        },
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        }
      }
    ]
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Budget": {
    "MaterialsCost": {
      "Estimate": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Estimate": 1.57
      },
      "Labor": {
        "Estimate": 1.57
      },
      "LaborHours": {
        "Estimate": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57
      }
    },
    "MaterialsMarkup": {
      "Estimate": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Estimate": 1.57
      },
      "Labor": {
        "Estimate": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57
      }
    },
    "Overhead": {
      "Estimate": 1.57
    },
    "GrossProfitLoss": {
      "Estimate": 1.57
    },
    "GrossMargin": {
      "Estimate": 0
    },
    "NettProfitLoss": {
      "Estimate": 1.57
    },
    "NettMargin": {
      "Estimate": 0
    }
  },
  "Archived": true
}
```

<h3 id="7e7b23fcc4d80d214c654678983708ba-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Take Off Template created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="7e7b23fcc4d80d214c654678983708ba-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Name of Take Off Template.|
|» Group|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» SubGroup|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Items|object|true|none|none|
|»» Catalogs|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Catalog|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|The vendor part number for the item.|
|»»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» OneOffs|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Type|string|true|none|none|
|»»» Description|string|true|none|none|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» Prebuilds|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Prebuild|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|none|
|»»»» Name|string|true|none|none|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» Labors|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» LaborType|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Budget|object|true|none|none|
|»» MaterialsCost|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»» Overhead|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|

<aside class="success">
This operation does not require authentication
</aside>

## eb347bd3fa14cdf1ff518d9bddee341f

<a id="opIdeb347bd3fa14cdf1ff518d9bddee341f"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}`

*Retrieve details for a specific take off template.*

<h3 id="eb347bd3fa14cdf1ff518d9bddee341f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
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
  "Name": "string",
  "Group": {
    "ID": 0,
    "Name": "string"
  },
  "SubGroup": {
    "ID": 0,
    "Name": "string"
  },
  "DisplayOrder": 0,
  "Items": {
    "Catalogs": [
      {
        "ID": 0,
        "Catalog": {
          "ID": 0,
          "PartNo": "string",
          "Name": "string"
        },
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        }
      }
    ],
    "OneOffs": [
      {
        "ID": 0,
        "Type": "Material",
        "Description": "string",
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
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
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        }
      }
    ],
    "Labors": [
      {
        "ID": 0,
        "LaborType": {
          "ID": 12345,
          "Name": "string"
        },
        "SellPrice": {
          "ExTax": 1.57,
          "IncTax": 1.57
        },
        "Total": {
          "Qty": 0,
          "Amount": {
            "ExTax": 1.57,
            "Tax": 1.57,
            "IncTax": 1.57
          }
        }
      }
    ]
  },
  "Total": {
    "ExTax": 1.57,
    "IncTax": 1.57
  },
  "Budget": {
    "MaterialsCost": {
      "Estimate": 1.57
    },
    "ResourcesCost": {
      "Total": {
        "Estimate": 1.57
      },
      "Labor": {
        "Estimate": 1.57
      },
      "LaborHours": {
        "Estimate": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57
      },
      "PlantAndEquipmentHours": {
        "Estimate": 1.57
      }
    },
    "MaterialsMarkup": {
      "Estimate": 1.57
    },
    "ResourcesMarkup": {
      "Total": {
        "Estimate": 1.57
      },
      "Labor": {
        "Estimate": 1.57
      },
      "PlantAndEquipment": {
        "Estimate": 1.57
      }
    },
    "Overhead": {
      "Estimate": 1.57
    },
    "GrossProfitLoss": {
      "Estimate": 1.57
    },
    "GrossMargin": {
      "Estimate": 0
    },
    "NettProfitLoss": {
      "Estimate": 1.57
    },
    "NettMargin": {
      "Estimate": 0
    }
  },
  "Archived": true
}
```

<h3 id="eb347bd3fa14cdf1ff518d9bddee341f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Take Off Template details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template not found.|None|

<h3 id="eb347bd3fa14cdf1ff518d9bddee341f-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|Name of Take Off Template.|
|» Group|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» SubGroup|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Items|object|true|none|none|
|»» Catalogs|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Catalog|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|The vendor part number for the item.|
|»»»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» OneOffs|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Type|string|true|none|none|
|»»» Description|string|true|none|none|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» Prebuilds|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Prebuild|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» PartNo|string|true|none|none|
|»»»» Name|string|true|none|none|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|»» Labors|[object]|true|none|none|
|»»» ID|integer|true|none|none|
|»»» LaborType|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» SellPrice|object|true|none|none|
|»»»» ExTax|number|true|none|none|
|»»»» IncTax|number|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Qty|number|true|none|none|
|»»»» Amount|object|true|none|none|
|»»»»» ExTax|number|true|none|none|
|»»»»» Tax|number|true|none|none|
|»»»»» IncTax|number|true|none|none|
|» Total|object|true|none|none|
|»» ExTax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» Budget|object|true|none|none|
|»» MaterialsCost|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» ResourcesCost|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» LaborHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» PlantAndEquipmentHours|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»» MaterialsMarkup|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» ResourcesMarkup|object|true|none|none|
|»»» Total|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» Labor|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»»» PlantAndEquipment|object|true|none|none|
|»»»» Estimate|number|true|none|none|
|»» Overhead|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» GrossProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» GrossMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» NettProfitLoss|object|true|none|none|
|»»» Estimate|number|true|none|none|
|»» NettMargin|object|true|none|none|
|»»» Estimate|number|true|none|none|
|» Archived|boolean|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Material|
|Type|Labor|

<aside class="success">
This operation does not require authentication
</aside>

## 516e4e2d427287f9825957f842ecb188

<a id="opId516e4e2d427287f9825957f842ecb188"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "string",
  "Archived": true
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}`

*Update a take off template.*

> Body parameter

```json
{
  "Name": "string",
  "Archived": true
}
```

<h3 id="516e4e2d427287f9825957f842ecb188-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|
|body|body|object|true|Take Off Template object|
|» Name|body|string|false|Name of Take Off Template.|
|» Archived|body|boolean|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="516e4e2d427287f9825957f842ecb188-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## f9e852250a050091842c4380fa45684c

<a id="opIdf9e852250a050091842c4380fa45684c"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/takeOffTemplates/{takeOffTemplateID}`

*Delete a take off template.*

<h3 id="f9e852250a050091842c4380fa45684c-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|takeOffTemplateID|path|integer|true|A valid take off template id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="f9e852250a050091842c4380fa45684c-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Take Off Template deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Take Off Template does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>