# Catalogs

Your Simpro catalog is a list of all items that you can purchase from suppliers to use on jobs. catalog items added to a job are counted as estimated costs, and only become actual costs when allocated from stock.<br /><br />
You can organise your catalog with different structures using groups and subgroups. To curate your catalog, add individual catalog items manually, or import items in bulk.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Catalogue-Overview.htm">External documentation</a>

## 841c3ceab31ce8d4fb5278393873009b

<a id="opId841c3ceab31ce8d4fb5278393873009b"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/`

*List all catalog items.*

<h3 id="841c3ceab31ce8d4fb5278393873009b-parameters">Parameters</h3>

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
    "TradePrice": 0,
    "TradePriceEx": 0,
    "TradePriceInc": 0,
    "SplitPrice": 0,
    "SplitPriceEx": 0,
    "SplitPriceInc": 0
  }
]
```

<h3 id="841c3ceab31ce8d4fb5278393873009b-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all catalog items.|Inline|

<h3 id="841c3ceab31ce8d4fb5278393873009b-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» PartNo|string|true|none|The vendor part number for the item.|
|» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|

<aside class="success">
This operation does not require authentication
</aside>

## 98e58dfdf47e2de9717cec8a37ec2d48

<a id="opId98e58dfdf47e2de9717cec8a37ec2d48"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/catalogs/ \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```javascript
const inputBody = '{
  "PartNo": "string",
  "Name": "string",
  "IsFavorite": true,
  "IsInventory": true,
  "IsMultiCurrency": true,
  "UPC": "string",
  "Manufacturer": "string",
  "CountryOfOrigin": "string",
  "EstimatedTime": 1.57,
  "TradePrice": 0,
  "TradePriceEx": 0,
  "TradePriceInc": 0,
  "SplitPrice": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "TradeSplitQty": 1.57,
  "MinPackQty": 1.57,
  "PurchasingStage": 0,
  "Currencies": [
    "string"
  ],
  "StorageLocation": "Bay 5, Shelf 3",
  "UOM": 0,
  "PurchaseTaxCode": 0,
  "SalesTaxCode": 0,
  "Group": 0,
  "SearchTerm": "string",
  "Notes": "string",
  "LinkedCatalogs": [
    0
  ],
  "DisplayOrder": 0,
  "Archived": true,
  "AddOnPriceEnabled": true,
  "Vendors": [
    {
      "Vendor": 0,
      "VendorPartNo": "string",
      "Discount": 0,
      "NettPrice": 0,
      "NettPriceEx": 0,
      "NettPriceInc": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0,
      "Default": true
    }
  ],
  "VendorQuantity": 1.57,
  "VendorDescription": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/',
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

r = requests.post('/api/v1.0/companies/{companyID}/catalogs/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/catalogs/`

*Create a new catalog item.*

> Body parameter

```json
{
  "PartNo": "string",
  "Name": "string",
  "IsFavorite": true,
  "IsInventory": true,
  "IsMultiCurrency": true,
  "UPC": "string",
  "Manufacturer": "string",
  "CountryOfOrigin": "string",
  "EstimatedTime": 1.57,
  "TradePrice": 0,
  "TradePriceEx": 0,
  "TradePriceInc": 0,
  "SplitPrice": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "TradeSplitQty": 1.57,
  "MinPackQty": 1.57,
  "PurchasingStage": 0,
  "Currencies": [
    "string"
  ],
  "StorageLocation": "Bay 5, Shelf 3",
  "UOM": 0,
  "PurchaseTaxCode": 0,
  "SalesTaxCode": 0,
  "Group": 0,
  "SearchTerm": "string",
  "Notes": "string",
  "LinkedCatalogs": [
    0
  ],
  "DisplayOrder": 0,
  "Archived": true,
  "AddOnPriceEnabled": true,
  "Vendors": [
    {
      "Vendor": 0,
      "VendorPartNo": "string",
      "Discount": 0,
      "NettPrice": 0,
      "NettPriceEx": 0,
      "NettPriceInc": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0,
      "Default": true
    }
  ],
  "VendorQuantity": 1.57,
  "VendorDescription": "string"
}
```

<h3 id="98e58dfdf47e2de9717cec8a37ec2d48-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Catalog item object|
|» PartNo|body|string|false|The vendor part number for the item.|
|» Name|body|string|true|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» IsFavorite|body|boolean|false|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» IsInventory|body|boolean|false|Set this to true to include the item as stock when purchasing.|
|» IsMultiCurrency|body|boolean|false|Set this to true if the item has Multi Currency attributes enabled|
|» UPC|body|string|false|Universal Product Code|
|» Manufacturer|body|string|false|The manufacturer of the item.|
|» CountryOfOrigin|body|string|false|The country the item was manufactured in.|
|» EstimatedTime|body|number|false|The estimated installation time to assist in calculating labour in pre-builds, quotes, and jobs if desired.|
|» TradePrice|body|number|false|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|» TradePriceEx|body|number|false|The non-discounted price per unit excluding tax.|
|» TradePriceInc|body|number|false|The non-discounted price per unit including tax.|
|» SplitPrice|body|number|false|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|» SplitPriceEx|body|number|false|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|body|number|false|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» TradeSplitQty|body|number|false|Set the required quantity you need to purchase to pay the Net Price as negotiated with the vendor. When you purchase below this quantity, you will pay the Split Price.|
|» MinPackQty|body|number¦null|false|Set the minimum quantity of the item that can be purchased from the supplier.|
|» PurchasingStage|body|integer|false|ID of a purchasing stage|
|» Currencies|body|[string]|false|List of stock item currencies|
|» StorageLocation|body|string|false|The storage location within default storage device. Set the exact location of the item within its storage device if applicable to assist in performing stocktakes.|
|» UOM|body|integer|false|ID of a unit of measurement|
|» PurchaseTaxCode|body|integer|false|ID of a tax code|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Group|body|integer|false|ID of a catalog group|
|» SearchTerm|body|string|false|Enter alternative part numbers or names, extra descriptions, or enter or scan barcodes to assist in locating items more quicklywhen performing a local catalogue search. Each term is separated by a space. The system will automatically append the part number and upc code if they are not included.|
|» Notes|body|string|false|Enter additional details about an item for reference only. This column supports HTML formatting.|
|» LinkedCatalogs|body|[integer]|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» AddOnPriceEnabled|body|boolean|false|none|
|» Vendors|body|[object]|false|none|
|»» Vendor|body|integer|true|ID of a vendor|
|»» VendorPartNo|body|string|true|none|
|»» Discount|body|number|true|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPrice|body|number|true|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceEx|body|number|true|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceInc|body|number|true|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» SplitPriceEx|body|number|true|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|body|number|true|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|»» Default|body|boolean|true|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|
|» VendorQuantity|body|number|false|none|
|» VendorDescription|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

> Example responses

> 201 Response

```json
{
  "ID": 0,
  "PartNo": "string",
  "Name": "string",
  "IsFavorite": true,
  "IsInventory": true,
  "IsMultiCurrency": true,
  "IsAsset": true,
  "AssetTypeId": 0,
  "UPC": "string",
  "Manufacturer": "string",
  "CountryOfOrigin": "string",
  "EstimatedTime": 1.57,
  "TradePrice": 0,
  "TradePriceEx": 0,
  "TradePriceInc": 0,
  "SplitPrice": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "TradeSplitQty": 1.57,
  "MinPackQty": 1.57,
  "PurchasingStage": {
    "ID": 12345,
    "Name": "Stage 1"
  },
  "Currencies": [
    {
      "Currency": "string",
      "TradePrice": 1.57,
      "SplitPrice": 1.57,
      "IsDefault": true
    }
  ],
  "Markup": 1.57,
  "BasePrice": 1.57,
  "SellPrice": 1.57,
  "StorageLocation": "Bay 5, Shelf 3",
  "UOM": {
    "ID": 12345,
    "Name": "kg"
  },
  "PurchaseTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Group": {
    "ID": 0,
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  },
  "SearchTerm": "string",
  "Notes": "string",
  "LinkedCatalogs": [
    {
      "ID": 0,
      "PartNo": "string",
      "Name": "string",
      "TradePrice": 0,
      "TradePriceEx": 0,
      "TradePriceInc": 0,
      "SplitPrice": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0
    }
  ],
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true,
  "AddOnPriceEnabled": true,
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
  "Vendors": {
    "Vendor": {
      "ID": 0,
      "Name": "string"
    },
    "VendorPartNo": "string",
    "Discount": 0,
    "NettPrice": 0,
    "NettPriceEx": 0,
    "NettPriceInc": 0,
    "SplitPriceEx": 0,
    "SplitPriceInc": 0,
    "Default": true
  },
  "VendorQuantity": 1.57,
  "VendorDescription": "string"
}
```

<h3 id="98e58dfdf47e2de9717cec8a37ec2d48-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Catalog item created successfully.|Inline|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<h3 id="98e58dfdf47e2de9717cec8a37ec2d48-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» PartNo|string|true|none|The vendor part number for the item.|
|» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» IsFavorite|boolean|true|none|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» IsInventory|boolean|true|none|Set this to true to include the item as stock when purchasing.|
|» IsMultiCurrency|boolean|true|none|Set this to true if the item has Multi Currency attributes enabled|
|» IsAsset|boolean|true|none|none|
|» AssetTypeId|integer|true|none|none|
|» UPC|string|true|none|Universal Product Code|
|» Manufacturer|string|true|none|The manufacturer of the item.|
|» CountryOfOrigin|string|true|none|The country the item was manufactured in.|
|» EstimatedTime|number|true|none|The estimated installation time to assist in calculating labour in pre-builds, quotes, and jobs if desired.|
|» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» TradeSplitQty|number|true|none|Set the required quantity you need to purchase to pay the Net Price as negotiated with the vendor. When you purchase below this quantity, you will pay the Split Price.|
|» MinPackQty|number¦null|false|none|Set the minimum quantity of the item that can be purchased from the supplier.|
|» PurchasingStage|object¦null|false|none|Set the purchasing stage to categorise materials.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Currencies|[object]|true|none|List of stock item currencies|
|»» Currency|string|true|none|ID of a valid currency.|
|»» TradePrice|number|true|none|none|
|»» SplitPrice|number|true|none|none|
|»» IsDefault|boolean|true|none|Set this to true if the currency is default currency.|
|» Markup|number|true|none|The markup of this item.|
|» BasePrice|number|true|none|none|
|» SellPrice|number|true|none|none|
|» StorageLocation|string|true|none|The storage location within default storage device. Set the exact location of the item within its storage device if applicable to assist in performing stocktakes.|
|» UOM|object¦null|false|none|Set the unit the item is sold in.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» PurchaseTaxCode|object|true|none|Set this if the item is purchased using a different tax code, or set to null to use default purchase tax code.|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» SalesTaxCode|object|true|none|Set this if the item is sold using a different tax code, or set to null to use default sales tax code.|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Group|object¦null|false|none|Set the group catalog group of this item.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» ParentGroup|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» SearchTerm|string|true|none|Enter alternative part numbers or names, extra descriptions, or enter or scan barcodes to assist in locating items more quicklywhen performing a local catalogue search. Each term is separated by a space. The system will automatically append the part number and upc code if they are not included.|
|» Notes|string|true|none|Enter additional details about an item for reference only. This column supports HTML formatting.|
|» LinkedCatalogs|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» DisplayOrder|integer|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|
|» AddOnPriceEnabled|boolean|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this catalog item. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Vendors|object|true|none|List of catalog vendors.|
|»» Vendor|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» VendorPartNo|string|true|none|none|
|»» Discount|number|true|none|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPrice|number|true|none|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceEx|number|true|none|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceInc|number|true|none|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|»» Default|boolean|true|none|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|
|» VendorQuantity|number|true|none|none|
|» VendorDescription|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
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

## d23db538dc215154bf0a38278cecde90

<a id="opIdd23db538dc215154bf0a38278cecde90"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/catalogs/{catalogID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}',
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

r = requests.get('/api/v1.0/companies/{companyID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/catalogs/{catalogID}`

*Retrieve details for a specific catalog item.*

<h3 id="d23db538dc215154bf0a38278cecde90-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
  "ID": 0,
  "PartNo": "string",
  "Name": "string",
  "IsFavorite": true,
  "IsInventory": true,
  "IsMultiCurrency": true,
  "IsAsset": true,
  "AssetTypeId": 0,
  "UPC": "string",
  "Manufacturer": "string",
  "CountryOfOrigin": "string",
  "EstimatedTime": 1.57,
  "TradePrice": 0,
  "TradePriceEx": 0,
  "TradePriceInc": 0,
  "SplitPrice": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "TradeSplitQty": 1.57,
  "MinPackQty": 1.57,
  "PurchasingStage": {
    "ID": 12345,
    "Name": "Stage 1"
  },
  "Currencies": [
    {
      "Currency": "string",
      "TradePrice": 1.57,
      "SplitPrice": 1.57,
      "IsDefault": true
    }
  ],
  "Markup": 1.57,
  "BasePrice": 1.57,
  "SellPrice": 1.57,
  "StorageLocation": "Bay 5, Shelf 3",
  "UOM": {
    "ID": 12345,
    "Name": "kg"
  },
  "PurchaseTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "SalesTaxCode": {
    "ID": 12345,
    "Code": "GST",
    "Type": "Single",
    "Rate": 10
  },
  "Group": {
    "ID": 0,
    "Name": "string",
    "ParentGroup": {
      "ID": 0,
      "Name": "string"
    }
  },
  "SearchTerm": "string",
  "Notes": "string",
  "LinkedCatalogs": [
    {
      "ID": 0,
      "PartNo": "string",
      "Name": "string",
      "TradePrice": 0,
      "TradePriceEx": 0,
      "TradePriceInc": 0,
      "SplitPrice": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0
    }
  ],
  "DisplayOrder": 0,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "Archived": true,
  "AddOnPriceEnabled": true,
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
  "Vendors": {
    "Vendor": {
      "ID": 0,
      "Name": "string"
    },
    "VendorPartNo": "string",
    "Discount": 0,
    "NettPrice": 0,
    "NettPriceEx": 0,
    "NettPriceInc": 0,
    "SplitPriceEx": 0,
    "SplitPriceInc": 0,
    "Default": true
  },
  "VendorQuantity": 1.57,
  "VendorDescription": "string"
}
```

<h3 id="d23db538dc215154bf0a38278cecde90-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Catalog item details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog item not found.|None|

<h3 id="d23db538dc215154bf0a38278cecde90-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» PartNo|string|true|none|The vendor part number for the item.|
|» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» IsFavorite|boolean|true|none|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» IsInventory|boolean|true|none|Set this to true to include the item as stock when purchasing.|
|» IsMultiCurrency|boolean|true|none|Set this to true if the item has Multi Currency attributes enabled|
|» IsAsset|boolean|true|none|none|
|» AssetTypeId|integer|true|none|none|
|» UPC|string|true|none|Universal Product Code|
|» Manufacturer|string|true|none|The manufacturer of the item.|
|» CountryOfOrigin|string|true|none|The country the item was manufactured in.|
|» EstimatedTime|number|true|none|The estimated installation time to assist in calculating labour in pre-builds, quotes, and jobs if desired.|
|» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» TradeSplitQty|number|true|none|Set the required quantity you need to purchase to pay the Net Price as negotiated with the vendor. When you purchase below this quantity, you will pay the Split Price.|
|» MinPackQty|number¦null|false|none|Set the minimum quantity of the item that can be purchased from the supplier.|
|» PurchasingStage|object¦null|false|none|Set the purchasing stage to categorise materials.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» Currencies|[object]|true|none|List of stock item currencies|
|»» Currency|string|true|none|ID of a valid currency.|
|»» TradePrice|number|true|none|none|
|»» SplitPrice|number|true|none|none|
|»» IsDefault|boolean|true|none|Set this to true if the currency is default currency.|
|» Markup|number|true|none|The markup of this item.|
|» BasePrice|number|true|none|none|
|» SellPrice|number|true|none|none|
|» StorageLocation|string|true|none|The storage location within default storage device. Set the exact location of the item within its storage device if applicable to assist in performing stocktakes.|
|» UOM|object¦null|false|none|Set the unit the item is sold in.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|» PurchaseTaxCode|object|true|none|Set this if the item is purchased using a different tax code, or set to null to use default purchase tax code.|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» SalesTaxCode|object|true|none|Set this if the item is sold using a different tax code, or set to null to use default sales tax code.|
|»» ID|integer|true|none|none|
|»» Code|string|true|none|Tax code|
|»» Type|string|true|none|Tax code type, "Component" and "Combine" tax types are used in US builds only.|
|»» Rate|number|true|none|Tax rate|
|» Group|object¦null|false|none|Set the group catalog group of this item.|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|
|»» ParentGroup|object¦null|false|none|none|
|»»» ID|integer|false|none|none|
|»»» Name|string|false|none|none|
|» SearchTerm|string|true|none|Enter alternative part numbers or names, extra descriptions, or enter or scan barcodes to assist in locating items more quicklywhen performing a local catalogue search. Each term is separated by a space. The system will automatically append the part number and upc code if they are not included.|
|» Notes|string|true|none|Enter additional details about an item for reference only. This column supports HTML formatting.|
|» LinkedCatalogs|[object]|true|none|none|
|»» ID|integer|true|none|none|
|»» PartNo|string|true|none|The vendor part number for the item.|
|»» Name|string|true|none|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|»» TradePrice|number|true|none|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|»» TradePriceEx|number|true|none|The non-discounted price per unit excluding tax.|
|»» TradePriceInc|number|true|none|The non-discounted price per unit including tax.|
|»» SplitPrice|number|true|none|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» DisplayOrder|integer|true|none|none|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» Archived|boolean|true|none|none|
|» AddOnPriceEnabled|boolean|true|none|none|
|» CustomFields|[object]|true|none|All of the custom fields for this catalog item. See the custom fields handler for more information.|
|»» CustomField|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»»» Type|string|true|none|<b>Text:</b> Enter a small amount of text.<br /><b>Date:</b> Enter a date (YYYY-mm-dd) value (API) or select a date from a day picker (web UI).<br /><b>List:</b> Enter a value from pre-defined options (API) or choose from a drop-down list of options (webUI).|
|»»» ListItems|[string]¦null|true|none|List of text to be used when the customer field type is set to `List` only.|
|»»» IsMandatory|boolean|true|none|Set this column to true to make in a compulsory field. (web UI)|
|»» Value|string¦null|true|none|Value of custom field, set 'NULL' to grab all the objects which custom field value has not set.|
|» Vendors|object|true|none|List of catalog vendors.|
|»» Vendor|object|true|none|none|
|»»» ID|integer|true|none|none|
|»»» Name|string|true|none|none|
|»» VendorPartNo|string|true|none|none|
|»» Discount|number|true|none|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPrice|number|true|none|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceEx|number|true|none|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceInc|number|true|none|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» SplitPriceEx|number|true|none|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|number|true|none|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|»» Default|boolean|true|none|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|
|» VendorQuantity|number|true|none|none|
|» VendorDescription|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Type|Single|
|Type|Component|
|Type|Combine|
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

## 428d19402b293850f1d3b10069d547e2

<a id="opId428d19402b293850f1d3b10069d547e2"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "PartNo": "string",
  "Name": "string",
  "IsFavorite": true,
  "IsInventory": true,
  "IsMultiCurrency": true,
  "UPC": "string",
  "Manufacturer": "string",
  "CountryOfOrigin": "string",
  "EstimatedTime": 1.57,
  "TradePrice": 0,
  "TradePriceEx": 0,
  "TradePriceInc": 0,
  "SplitPrice": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "TradeSplitQty": 1.57,
  "MinPackQty": 1.57,
  "PurchasingStage": 0,
  "Currencies": [
    "string"
  ],
  "StorageLocation": "Bay 5, Shelf 3",
  "UOM": 0,
  "PurchaseTaxCode": 0,
  "SalesTaxCode": 0,
  "Group": 0,
  "SearchTerm": "string",
  "Notes": "string",
  "LinkedCatalogs": [
    0
  ],
  "DisplayOrder": 0,
  "Archived": true,
  "AddOnPriceEnabled": true,
  "Vendors": [
    {
      "Vendor": 0,
      "VendorPartNo": "string",
      "Discount": 0,
      "NettPrice": 0,
      "NettPriceEx": 0,
      "NettPriceInc": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0,
      "Default": true
    }
  ],
  "VendorQuantity": 1.57,
  "VendorDescription": "string"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}/catalogs/{catalogID}`

*Update a catalog item.*

> Body parameter

```json
{
  "PartNo": "string",
  "Name": "string",
  "IsFavorite": true,
  "IsInventory": true,
  "IsMultiCurrency": true,
  "UPC": "string",
  "Manufacturer": "string",
  "CountryOfOrigin": "string",
  "EstimatedTime": 1.57,
  "TradePrice": 0,
  "TradePriceEx": 0,
  "TradePriceInc": 0,
  "SplitPrice": 0,
  "SplitPriceEx": 0,
  "SplitPriceInc": 0,
  "TradeSplitQty": 1.57,
  "MinPackQty": 1.57,
  "PurchasingStage": 0,
  "Currencies": [
    "string"
  ],
  "StorageLocation": "Bay 5, Shelf 3",
  "UOM": 0,
  "PurchaseTaxCode": 0,
  "SalesTaxCode": 0,
  "Group": 0,
  "SearchTerm": "string",
  "Notes": "string",
  "LinkedCatalogs": [
    0
  ],
  "DisplayOrder": 0,
  "Archived": true,
  "AddOnPriceEnabled": true,
  "Vendors": [
    {
      "Vendor": 0,
      "VendorPartNo": "string",
      "Discount": 0,
      "NettPrice": 0,
      "NettPriceEx": 0,
      "NettPriceInc": 0,
      "SplitPriceEx": 0,
      "SplitPriceInc": 0,
      "Default": true
    }
  ],
  "VendorQuantity": 1.57,
  "VendorDescription": "string"
}
```

<h3 id="428d19402b293850f1d3b10069d547e2-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|
|body|body|object|true|Catalog item object|
|» PartNo|body|string|false|The vendor part number for the item.|
|» Name|body|string|false|Set a name for the item to appear on itemised quotes, jobs and invoices, and to search for in the catalogue local search.|
|» IsFavorite|body|boolean|false|Set this to true if the item is commonly used and you wish to allocate it to the favourites group for quick access.|
|» IsInventory|body|boolean|false|Set this to true to include the item as stock when purchasing.|
|» IsMultiCurrency|body|boolean|false|Set this to true if the item has Multi Currency attributes enabled|
|» UPC|body|string|false|Universal Product Code|
|» Manufacturer|body|string|false|The manufacturer of the item.|
|» CountryOfOrigin|body|string|false|The country the item was manufactured in.|
|» EstimatedTime|body|number|false|The estimated installation time to assist in calculating labour in pre-builds, quotes, and jobs if desired.|
|» TradePrice|body|number|false|Deprecated: Please use TradePriceEx/TradePriceInc. The non-discounted price per unit.|
|» TradePriceEx|body|number|false|The non-discounted price per unit excluding tax.|
|» TradePriceInc|body|number|false|The non-discounted price per unit including tax.|
|» SplitPrice|body|number|false|Deprecated: Please use SplitPriceEx/SplitPriceInc. Set the trade price you pay per unit when purchasing below the Trade Split Quantity.|
|» SplitPriceEx|body|number|false|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|» SplitPriceInc|body|number|false|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|» TradeSplitQty|body|number|false|Set the required quantity you need to purchase to pay the Net Price as negotiated with the vendor. When you purchase below this quantity, you will pay the Split Price.|
|» MinPackQty|body|number¦null|false|Set the minimum quantity of the item that can be purchased from the supplier.|
|» PurchasingStage|body|integer|false|ID of a purchasing stage|
|» Currencies|body|[string]|false|List of stock item currencies|
|» StorageLocation|body|string|false|The storage location within default storage device. Set the exact location of the item within its storage device if applicable to assist in performing stocktakes.|
|» UOM|body|integer|false|ID of a unit of measurement|
|» PurchaseTaxCode|body|integer|false|ID of a tax code|
|» SalesTaxCode|body|integer|false|ID of a tax code|
|» Group|body|integer|false|ID of a catalog group|
|» SearchTerm|body|string|false|Enter alternative part numbers or names, extra descriptions, or enter or scan barcodes to assist in locating items more quicklywhen performing a local catalogue search. Each term is separated by a space. The system will automatically append the part number and upc code if they are not included.|
|» Notes|body|string|false|Enter additional details about an item for reference only. This column supports HTML formatting.|
|» LinkedCatalogs|body|[integer]|false|none|
|» DisplayOrder|body|integer|false|none|
|» Archived|body|boolean|false|none|
|» AddOnPriceEnabled|body|boolean|false|none|
|» Vendors|body|[object]|false|none|
|»» Vendor|body|integer|true|ID of a vendor|
|»» VendorPartNo|body|string|true|none|
|»» Discount|body|number|true|The discount of the catalog item's SellPrice. If you specify this, NettPrice will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPrice|body|number|true|Deprecated: Please use NettPriceEx/NettPriceInc. The nett price of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceEx|body|number|true|The nett price excluding tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» NettPriceInc|body|number|true|The nett price including tax of this catalog item. If you specify this, Discount will be automatically calculated. Please ensure that the catalog's trade price is not set to 0 before specifying this field.|
|»» SplitPriceEx|body|number|true|Set the trade price you pay per unit excluding tax when purchasing below the Trade Split Quantity.|
|»» SplitPriceInc|body|number|true|Set the trade price you pay per unit including tax when purchasing below the Trade Split Quantity.|
|»» Default|body|boolean|true|Set this to true if this vendor is the default vendor of this catalog item. If there is only one vendor, it will automatically be the default.|
|» VendorQuantity|body|number|false|none|
|» VendorDescription|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="428d19402b293850f1d3b10069d547e2-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog item updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>

## dadc5815c618d10e6a82926ac7cd300e

<a id="opIddadc5815c618d10e6a82926ac7cd300e"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}

```

```javascript

fetch('/api/v1.0/companies/{companyID}/catalogs/{catalogID}',
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

r = requests.delete('/api/v1.0/companies/{companyID}/catalogs/{catalogID}')

print(r.json())

```

`DELETE /api/v1.0/companies/{companyID}/catalogs/{catalogID}`

*Delete a catalog item.*

<h3 id="dadc5815c618d10e6a82926ac7cd300e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|catalogID|path|integer|true|A valid catalog id|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="dadc5815c618d10e6a82926ac7cd300e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Catalog item deleted successfully.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Catalog item does not exist.|None|

<aside class="success">
This operation does not require authentication
</aside>