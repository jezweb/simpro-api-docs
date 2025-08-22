# Prebuilds

Prebuilds combine materials and labor as a single billable item to appear on jobs, quotes and invoices. The two main types are standard price prebuilds and set price pre-builds, and you can adapt these as desired.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Create-a-Pre-Build.htm">External documentation</a>

## 9ebc4024dd58ea034bfc45def3ee79e5

<a id="opId9ebc4024dd58ea034bfc45def3ee79e5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/`

*List all prebuilds.*

<h3 id="9ebc4024dd58ea034bfc45def3ee79e5-parameters">Parameters</h3>

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
    "_href": "string",
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  }
]
```

<h3 id="9ebc4024dd58ea034bfc45def3ee79e5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all prebuilds.|Inline|

<h3 id="9ebc4024dd58ea034bfc45def3ee79e5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» _href|string|true|none|none|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 487377fc49c02a88ccd268e1b20a8f0b

<a id="opId487377fc49c02a88ccd268e1b20a8f0b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/setPrice/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/setPrice/',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/setPrice/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/setPrice/`

*List all set-price prebuilds.*

<h3 id="487377fc49c02a88ccd268e1b20a8f0b-parameters">Parameters</h3>

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
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  }
]
```

<h3 id="487377fc49c02a88ccd268e1b20a8f0b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all set-price prebuilds.|Inline|

<h3 id="487377fc49c02a88ccd268e1b20a8f0b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 972aef061239d583dc54ae05ae6c08ec

<a id="opId972aef061239d583dc54ae05ae6c08ec"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/prebuilds/setPrice/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/setPrice/',
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

r = requests.post('/api/v1.0/companies/{companyID}/prebuilds/setPrice/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/prebuilds/setPrice/`

*Create a new set-price prebuild.*

> Body parameter

```json
{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="972aef061239d583dc54ae05ae6c08ec-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Set-price prebuild object|
|» Group|body|integer|true|ID of a prebuild group|
|» IsFavorite|body|boolean|false|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|body|string|false|none|
|» Name|body|string|true|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» LaborTime|body|number¦null|false|none|
|» TotalEx|body|number|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» STCsEnabled|body|boolean|false|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|body|object|false|none|
|»» Zone1|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone2|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone3|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone4|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone5|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|» VEECs|body|object|false|none|
|»» Metropolitan|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|
|»» Regional|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Group": {
    "ID": 0,
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  },
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "LaborTimeBasedOnBuild": 1.57,
  "Materials": 1.57,
  "Labour": 1.57,
  "MaterialMarkup": 1.57,
  "LabourMarkup": 1.57,
  "Profit": 1.57,
  "Margin": 1.57,
  "TotalEx": 1.57,
  "TotalInc": 1.57,
  "AddOnEnabled": true,
  "MaterialsAddOn": 1.57,
  "LabourAddOn": 1.57,
  "MaterialMarkupAddOn": 1.57,
  "LabourMarkupAddOn": 1.57,
  "ProfitAddOn": 1.57,
  "MarginAddOn": 1.57,
  "AddOnPrice": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
  },
  "DisplayOrder": 0,
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
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="972aef061239d583dc54ae05ae6c08ec-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Set-price prebuild created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="972aef061239d583dc54ae05ae6c08ec-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Group|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» ParentGroup|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» IsFavorite|boolean|true|none|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» LaborTime|number¦null|false|none|none|
|» LaborTimeBasedOnBuild|number|true|none|none|
|» Materials|number|true|none|none|
|» Labour|number|true|none|none|
|» MaterialMarkup|number|true|none|none|
|» LabourMarkup|number|true|none|none|
|» Profit|number|true|none|none|
|» Margin|number|true|none|none|
|» TotalEx|number|true|none|none|
|» TotalInc|number|true|none|none|
|» AddOnEnabled|boolean|true|none|none|
|» MaterialsAddOn|number|true|none|none|
|» LabourAddOn|number|true|none|none|
|» MaterialMarkupAddOn|number|true|none|none|
|» LabourMarkupAddOn|number|true|none|none|
|» ProfitAddOn|number|true|none|none|
|» MarginAddOn|number|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this set-price prebuild. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STCsEnabled|boolean|true|none|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|object|true|none|none|
|»» Zone1|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone2|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone3|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone4|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone5|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|» VEECs|object|true|none|none|
|»» Metropolitan|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|
|»» Regional|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## f2106d3416eb8f55a5c08c57fb5339cb

<a id="opIdf2106d3416eb8f55a5c08c57fb5339cb"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}`

*Retrieve details for a specific set-price prebuild.*

<h3 id="f2106d3416eb8f55a5c08c57fb5339cb-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|setPricePrebuildID|path|integer|true|A valid set price prebuild id|
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
  "Group": {
    "ID": 0,
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  },
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "LaborTimeBasedOnBuild": 1.57,
  "Materials": 1.57,
  "Labour": 1.57,
  "MaterialMarkup": 1.57,
  "LabourMarkup": 1.57,
  "Profit": 1.57,
  "Margin": 1.57,
  "TotalEx": 1.57,
  "TotalInc": 1.57,
  "AddOnEnabled": true,
  "MaterialsAddOn": 1.57,
  "LabourAddOn": 1.57,
  "MaterialMarkupAddOn": 1.57,
  "LabourMarkupAddOn": 1.57,
  "ProfitAddOn": 1.57,
  "MarginAddOn": 1.57,
  "AddOnPrice": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
  },
  "DisplayOrder": 0,
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
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="f2106d3416eb8f55a5c08c57fb5339cb-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Set-price prebuild details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Set-price prebuild not found.|None|

<h3 id="f2106d3416eb8f55a5c08c57fb5339cb-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Group|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» ParentGroup|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» IsFavorite|boolean|true|none|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» LaborTime|number¦null|false|none|none|
|» LaborTimeBasedOnBuild|number|true|none|none|
|» Materials|number|true|none|none|
|» Labour|number|true|none|none|
|» MaterialMarkup|number|true|none|none|
|» LabourMarkup|number|true|none|none|
|» Profit|number|true|none|none|
|» Margin|number|true|none|none|
|» TotalEx|number|true|none|none|
|» TotalInc|number|true|none|none|
|» AddOnEnabled|boolean|true|none|none|
|» MaterialsAddOn|number|true|none|none|
|» LabourAddOn|number|true|none|none|
|» MaterialMarkupAddOn|number|true|none|none|
|» LabourMarkupAddOn|number|true|none|none|
|» ProfitAddOn|number|true|none|none|
|» MarginAddOn|number|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this set-price prebuild. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STCsEnabled|boolean|true|none|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|object|true|none|none|
|»» Zone1|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone2|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone3|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone4|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone5|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|» VEECs|object|true|none|none|
|»» Metropolitan|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|
|»» Regional|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 33d25dba33f2ce1efb3ca8d6c5875a3f

<a id="opId33d25dba33f2ce1efb3ca8d6c5875a3f"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}`

*Update a set-price prebuild.*

> Body parameter

```json
{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="33d25dba33f2ce1efb3ca8d6c5875a3f-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|setPricePrebuildID|path|integer|true|A valid set price prebuild id|
|body|body|object|true|Set-price prebuild object|
|» Group|body|integer|false|ID of a prebuild group|
|» IsFavorite|body|boolean|false|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|body|string|false|none|
|» Name|body|string|false|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» LaborTime|body|number¦null|false|none|
|» TotalEx|body|number|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» STCsEnabled|body|boolean|false|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|body|object|false|none|
|»» Zone1|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone2|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone3|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone4|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone5|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|» VEECs|body|object|false|none|
|»» Metropolitan|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|
|»» Regional|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="33d25dba33f2ce1efb3ca8d6c5875a3f-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Set-price prebuild updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 73f7944fe611cf9b096bc75c489281a4

<a id="opId73f7944fe611cf9b096bc75c489281a4"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/prebuilds/setPrice/{setPricePrebuildID}`

*Delete a set-price prebuild.*

<h3 id="73f7944fe611cf9b096bc75c489281a4-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|setPricePrebuildID|path|integer|true|A valid set price prebuild id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="73f7944fe611cf9b096bc75c489281a4-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Set-price prebuild deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Set-price prebuild does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 798c7889b9810c798d69e6e7ae2126b9

<a id="opId798c7889b9810c798d69e6e7ae2126b9"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/standardPrice/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/standardPrice/`

*List all standard-price prebuilds.*

<h3 id="798c7889b9810c798d69e6e7ae2126b9-parameters">Parameters</h3>

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
    "PartNo": "string",
    "Name": "string",
    "AddOnPrice": {
      "ExTax": 1.57,
      "Tax": 1.57,
      "IncTax": 1.57
    },
    "DisplayOrder": 0,
    "Archived": true
  }
]
```

<h3 id="798c7889b9810c798d69e6e7ae2126b9-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all standard-price prebuilds.|Inline|

<h3 id="798c7889b9810c798d69e6e7ae2126b9-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 3fd856835f5b9d817ae024b9578edbc3

<a id="opId3fd856835f5b9d817ae024b9578edbc3"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/prebuilds/standardPrice/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/',
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

r = requests.post('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/prebuilds/standardPrice/`

*Create a new standard-price prebuild.*

> Body parameter

```json
{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="3fd856835f5b9d817ae024b9578edbc3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Standard-price prebuild object|
|» Group|body|integer|true|ID of a prebuild group|
|» IsFavorite|body|boolean|false|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|body|string|false|none|
|» Name|body|string|true|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» LaborTime|body|number¦null|false|none|
|» TotalEx|body|number|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» STCsEnabled|body|boolean|false|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|body|object|false|none|
|»» Zone1|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone2|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone3|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone4|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone5|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|» VEECs|body|object|false|none|
|»» Metropolitan|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|
|»» Regional|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "Group": {
    "ID": 0,
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  },
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "LaborTimeBasedOnBuild": 1.57,
  "Materials": 1.57,
  "Labour": 1.57,
  "MaterialMarkup": 1.57,
  "LabourMarkup": 1.57,
  "Profit": 1.57,
  "Margin": 1.57,
  "TotalEx": 1.57,
  "TotalInc": 1.57,
  "AddOnEnabled": true,
  "MaterialsAddOn": 1.57,
  "LabourAddOn": 1.57,
  "MaterialMarkupAddOn": 1.57,
  "LabourMarkupAddOn": 1.57,
  "ProfitAddOn": 1.57,
  "MarginAddOn": 1.57,
  "AddOnPrice": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
  },
  "DisplayOrder": 0,
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
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="3fd856835f5b9d817ae024b9578edbc3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Standard-price prebuild created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="3fd856835f5b9d817ae024b9578edbc3-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Group|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» ParentGroup|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» IsFavorite|boolean|true|none|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» LaborTime|number¦null|false|none|none|
|» LaborTimeBasedOnBuild|number|true|none|none|
|» Materials|number|true|none|none|
|» Labour|number|true|none|none|
|» MaterialMarkup|number|true|none|none|
|» LabourMarkup|number|true|none|none|
|» Profit|number|true|none|none|
|» Margin|number|true|none|none|
|» TotalEx|number|true|none|none|
|» TotalInc|number|true|none|none|
|» AddOnEnabled|boolean|true|none|none|
|» MaterialsAddOn|number|true|none|none|
|» LabourAddOn|number|true|none|none|
|» MaterialMarkupAddOn|number|true|none|none|
|» LabourMarkupAddOn|number|true|none|none|
|» ProfitAddOn|number|true|none|none|
|» MarginAddOn|number|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this standard-price prebuild. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STCsEnabled|boolean|true|none|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|object|true|none|none|
|»» Zone1|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone2|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone3|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone4|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone5|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|» VEECs|object|true|none|none|
|»» Metropolitan|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|
|»» Regional|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## 3afb11c663158fce6772efb0d5299dc3

<a id="opId3afb11c663158fce6772efb0d5299dc3"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}`

*Retrieve details for a specific standard-price prebuild.*

<h3 id="3afb11c663158fce6772efb0d5299dc3-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|standardPricePrebuildID|path|integer|true|A valid standard price prebuild id|
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
  "Group": {
    "ID": 0,
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  },
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "LaborTimeBasedOnBuild": 1.57,
  "Materials": 1.57,
  "Labour": 1.57,
  "MaterialMarkup": 1.57,
  "LabourMarkup": 1.57,
  "Profit": 1.57,
  "Margin": 1.57,
  "TotalEx": 1.57,
  "TotalInc": 1.57,
  "AddOnEnabled": true,
  "MaterialsAddOn": 1.57,
  "LabourAddOn": 1.57,
  "MaterialMarkupAddOn": 1.57,
  "LabourMarkupAddOn": 1.57,
  "ProfitAddOn": 1.57,
  "MarginAddOn": 1.57,
  "AddOnPrice": {
    "ExTax": 1.57,
    "Tax": 1.57,
    "IncTax": 1.57
  },
  "DisplayOrder": 0,
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
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="3afb11c663158fce6772efb0d5299dc3-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Standard-price prebuild details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Standard-price prebuild not found.|None|

<h3 id="3afb11c663158fce6772efb0d5299dc3-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Group|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Name|string|true|none|none|
|»» ParentGroup|object¦null|true|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» IsFavorite|boolean|true|none|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|string|true|none|none|
|» Name|string|true|none|none|
|» SalesTaxCode|object|true|none|none|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Description|string|true|none|This column supports HTML formatting.|
|» Notes|string|true|none|This column supports HTML formatting.|
|» LaborTime|number¦null|false|none|none|
|» LaborTimeBasedOnBuild|number|true|none|none|
|» Materials|number|true|none|none|
|» Labour|number|true|none|none|
|» MaterialMarkup|number|true|none|none|
|» LabourMarkup|number|true|none|none|
|» Profit|number|true|none|none|
|» Margin|number|true|none|none|
|» TotalEx|number|true|none|none|
|» TotalInc|number|true|none|none|
|» AddOnEnabled|boolean|true|none|none|
|» MaterialsAddOn|number|true|none|none|
|» LabourAddOn|number|true|none|none|
|» MaterialMarkupAddOn|number|true|none|none|
|» LabourMarkupAddOn|number|true|none|none|
|» ProfitAddOn|number|true|none|none|
|» MarginAddOn|number|true|none|none|
|» AddOnPrice|object|true|none|Add-on prices will only be available when the add-ons are enabled.|
|»» ExTax|number|true|none|none|
|»» Tax|number|true|none|none|
|»» IncTax|number|true|none|none|
|» DisplayOrder|integer|true|none|none|
|» Archived|boolean|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» CustomFields|[object]|true|none|All of the custom fields for this standard-price prebuild. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» STCsEnabled|boolean|true|none|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|object|true|none|none|
|»» Zone1|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone2|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone3|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone4|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|»» Zone5|object|true|none|none|
|»»» NumberOfSTCs|number|true|none|none|
|» VEECs|object|true|none|none|
|»» Metropolitan|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|
|»» Regional|object|true|none|none|
|»»» Gas|number|true|none|none|
|»»» Electric|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
|Type|List|
|Type|Text|
|Type|Date|
|Type|Numeric|
|Type|Hyperlink|

<aside class="success">
This operation does not require authentication
</aside>

## a54dc05fd7aeedcd4a36575b72f09a8a

<a id="opIda54dc05fd7aeedcd4a36575b72f09a8a"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}`

*Update a standard-price prebuild.*

> Body parameter

```json
{
  "Group": 0,
  "IsFavorite": true,
  "PartNo": "string",
  "Name": "string",
  "SalesTaxCode": 0,
  "Description": "string",
  "Notes": "string",
  "LaborTime": 1.57,
  "TotalEx": 1.57,
  "DisplayOrder": 0,
  "Archived": true,
  "STCsEnabled": true,
  "STCs": {
    "Zone1": {
      "NumberOfSTCs": 1.57
    },
    "Zone2": {
      "NumberOfSTCs": 1.57
    },
    "Zone3": {
      "NumberOfSTCs": 1.57
    },
    "Zone4": {
      "NumberOfSTCs": 1.57
    },
    "Zone5": {
      "NumberOfSTCs": 1.57
    }
  },
  "VEECs": {
    "Metropolitan": {
      "Gas": 1.57,
      "Electric": 1.57
    },
    "Regional": {
      "Gas": 1.57,
      "Electric": 1.57
    }
  }
}
```

<h3 id="a54dc05fd7aeedcd4a36575b72f09a8a-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|standardPricePrebuildID|path|integer|true|A valid standard price prebuild id|
|body|body|object|true|Standard-price prebuild object|
|» Group|body|integer|false|ID of a prebuild group|
|» IsFavorite|body|boolean|false|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» PartNo|body|string|false|none|
|» Name|body|string|false|none|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Description|body|string|false|This column supports HTML formatting.|
|» Notes|body|string|false|This column supports HTML formatting.|
|» LaborTime|body|number¦null|false|none|
|» TotalEx|body|number|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» STCsEnabled|body|boolean|false|Small-scale Technology Certificates, an Australian government rebate used in conjunctionwith the renewable energy sector. This also turns on VEECs if that is enabled.|
|» STCs|body|object|false|none|
|»» Zone1|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone2|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone3|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone4|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|»» Zone5|body|object|false|none|
|»»» NumberOfSTCs|body|number|false|none|
|» VEECs|body|object|false|none|
|»» Metropolitan|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|
|»» Regional|body|object|false|none|
|»»» Gas|body|number|false|none|
|»»» Electric|body|number|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="a54dc05fd7aeedcd4a36575b72f09a8a-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Standard-price prebuild updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## 5b7796544175461820466fce3da5526e

<a id="opId5b7796544175461820466fce3da5526e"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/prebuilds/standardPrice/{standardPricePrebuildID}`

*Delete a standard-price prebuild.*

<h3 id="5b7796544175461820466fce3da5526e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|standardPricePrebuildID|path|integer|true|A valid standard price prebuild id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="5b7796544175461820466fce3da5526e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Standard-price prebuild deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Standard-price prebuild does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>