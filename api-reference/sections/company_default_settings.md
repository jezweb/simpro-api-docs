# Company Default Settings

## 70740f651f936d290e83bab72ce49938

<a id="opId70740f651f936d290e83bab72ce49938"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID}/setup/defaults/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/setup/defaults/',
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

r = requests.get('/api/v1.0/companies/{companyID}/setup/defaults/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}/setup/defaults/`

*Retrieve details for a specific company default settings.*

<h3 id="70740f651f936d290e83bab72ce49938-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|

> Example responses

> 200 Response

```json
{
  "System": {
    "General": {
      "DateFormat": "dd/mm/YYYY",
      "TimeFormat": "h:mm tt",
      "ThousandsSeparator": "",
      "NegativeNumberFormat": "-"
    },
    "JobsQuotes": {
      "DefaultCostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "SingleCostCenter": true
    },
    "Jobs": {
      "WarrantyCostCenter": {
        "ID": 12345,
        "Name": "string"
      },
      "MandatoryDueDateOnCreation": {
        "ServiceJob": true,
        "ProjectJob": true
      }
    },
    "Quotes": {
      "MandatoryDueDateOnCreation": {
        "ServiceQuote": true,
        "ProjectQuote": true
      }
    }
  },
  "Financial": {
    "Accounts": {
      "IncomeAccount": "string",
      "DepositAccount": "string",
      "ExpenseAccount": "string",
      "ContractorInvoiceAccount": "string",
      "RetainageAssetAccount": "string",
      "RetainageLiabilityAccount": "string",
      "FinanceChargeAccount": "string",
      "FreightAccount": "string",
      "RestockingFeeAccount": "string",
      "TaxAccount": "string"
    },
    "Invoicing": {
      "ShowSellCostPrices": "off",
      "FinanceChargeLabel": "string",
      "Tracking": "off",
      "RetainageHold": "incGST"
    }
  },
  "Schedule": {
    "WorkWeekStart": "Monday",
    "ScheduleFormat": "15"
  }
}
```

<h3 id="70740f651f936d290e83bab72ce49938-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Company Default Settings details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Company Default Settings not found.|None|

<h3 id="70740f651f936d290e83bab72ce49938-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» System|object|true|none|none|
|»» General|object|true|none|none|
|»»» DateFormat|string|true|none|none|
|»»» TimeFormat|string|true|none|none|
|»»» ThousandsSeparator|string|true|none|none|
|»»» NegativeNumberFormat|string|true|none|none|
|»» JobsQuotes|object|true|none|none|
|»»» DefaultCostCenter|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» SingleCostCenter|boolean|true|none|none|
|»» Jobs|object|true|none|none|
|»»» WarrantyCostCenter|object|true|none|none|
|»»»» ID|integer|true|none|none|
|»»»» Name|string|true|none|none|
|»»» MandatoryDueDateOnCreation|object|true|none|none|
|»»»» ServiceJob|boolean|true|none|none|
|»»»» ProjectJob|boolean|true|none|none|
|»» Quotes|object|true|none|none|
|»»» MandatoryDueDateOnCreation|object|true|none|none|
|»»»» ServiceQuote|boolean|true|none|none|
|»»»» ProjectQuote|boolean|true|none|none|
|» Financial|object|true|none|none|
|»» Accounts|object|true|none|none|
|»»» IncomeAccount|string|true|none|none|
|»»» DepositAccount|string|true|none|none|
|»»» ExpenseAccount|string|true|none|none|
|»»» ContractorInvoiceAccount|string|true|none|none|
|»»» RetainageAssetAccount|string|true|none|none|
|»»» RetainageLiabilityAccount|string|true|none|none|
|»»» FinanceChargeAccount|string|true|none|none|
|»»» FreightAccount|string|true|none|none|
|»»» RestockingFeeAccount|string|true|none|none|
|»»» TaxAccount|string|true|none|none|
|»» Invoicing|object|true|none|none|
|»»» ShowSellCostPrices|string|true|none|none|
|»»» FinanceChargeLabel|string|true|none|none|
|»»» Tracking|string|true|none|none|
|»»» RetainageHold|string|true|none|none|
|» Schedule|object|true|none|none|
|»» WorkWeekStart|string|true|none|none|
|»» ScheduleFormat|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|DateFormat|dd/mm/YYYY|
|DateFormat|d/m/YY|
|DateFormat|YYYY/mm/dd|
|DateFormat|YY/m/d|
|DateFormat|YYYY/m/d|
|DateFormat|mm/dd/YYYY|
|DateFormat|m/d/YY|
|DateFormat|m/d/YYYY|
|TimeFormat|h:mm tt|
|TimeFormat|hh:mm tt|
|TimeFormat|H:mm|
|TimeFormat|HH:mm|
|ThousandsSeparator||
|ThousandsSeparator|,|
|ThousandsSeparator| |
|NegativeNumberFormat|-|
|NegativeNumberFormat|()|
|ShowSellCostPrices|off|
|ShowSellCostPrices|category|
|ShowSellCostPrices|businessGroup|
|Tracking|off|
|Tracking|category|
|Tracking|businessGroup|
|RetainageHold|incGST|
|RetainageHold|exGST|
|WorkWeekStart|Monday|
|WorkWeekStart|Tuesday|
|WorkWeekStart|Wednesday|
|WorkWeekStart|Thursday|
|WorkWeekStart|Friday|
|WorkWeekStart|Saturday|
|WorkWeekStart|Sunday|
|ScheduleFormat|15|
|ScheduleFormat|30|

<aside class="success">
This operation does not require authentication
</aside>