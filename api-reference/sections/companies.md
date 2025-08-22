# Companies

Company operations provide the ability to modify limited company information equivalent

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Set-Up-Company-Information.htm">External documentation</a>

## 280504eb9a1a7ebae0495c7a556db50e

<a id="opId280504eb9a1a7ebae0495c7a556db50e"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/ \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/',
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

r = requests.get('/api/v1.0/companies/', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/`

*List all companies.*

<h3 id="280504eb9a1a7ebae0495c7a556db50e-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|search|query|string|false|Search result must have a match on all provided fields or a match on any of the provided fields.|
|columns|query|array[string]|false|When listing or searching a resource, specify which columns to be displayed|
|orderby|query|array[string]|false|Set the order of the requested records, by prefixing '-' on the column name you can get records by descending order. Comma separated list can also be provided.|

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
    "Name": "simPRO Software Australia"
  }
]
```

<h3 id="280504eb9a1a7ebae0495c7a556db50e-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List all companies.|Inline|

<h3 id="280504eb9a1a7ebae0495c7a556db50e-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## 2f1b600f5834798247a53cc22aebfbc5

<a id="opId2f1b600f5834798247a53cc22aebfbc5"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /api/v1.0/companies/{companyID} \
  -H 'Accept: application/json'

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/api/v1.0/companies/{companyID}',
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

r = requests.get('/api/v1.0/companies/{companyID}', headers = headers)

print(r.json())

```

`GET /api/v1.0/companies/{companyID}`

*Retrieve details for a specific company.*

<h3 id="2f1b600f5834798247a53cc22aebfbc5-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
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
  "Name": "simPRO Software Australia",
  "Phone": "+61 7 3147 8777",
  "Fax": "+61 7 3147 8777",
  "Email": "sales@simpro.com.au",
  "Address": {
    "Line1": "Ground floor",
    "Line2": "31 McKechnie Drive"
  },
  "BillingAddress": {
    "Line1": "Ground floor",
    "Line2": "31 McKechnie Drive"
  },
  "EIN": "string",
  "CompanyNo": "string",
  "Licence": "string",
  "Website": "string",
  "Banking": {
    "Bank": "string",
    "BranchCode": "string",
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "IBAN": "string",
    "SwiftCode": "string"
  },
  "CISCertNo": "string",
  "EmployerTaxRefNo": "string",
  "Timezone": "Australia/Brisbane",
  "TimezoneOffset": "+10:00",
  "DefaultLanguage": "en_AU",
  "Template": true,
  "MultiCompanyLabel": "string",
  "MultiCompanyColor": "#0000FF",
  "Currency": "string",
  "Country": "Australia",
  "TaxName": "string",
  "UIDateFormat": "string",
  "UITimeFormat": "string",
  "ScheduleFormat": 15,
  "SingleCostCenterMode": true,
  "DateModified": "2018-05-21T19:53:39+10:00",
  "DefaultCostCenter": {
    "ID": 12345,
    "Name": "string"
  }
}
```

<h3 id="2f1b600f5834798247a53cc22aebfbc5-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Company details.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|Company not found.|None|

<h3 id="2f1b600f5834798247a53cc22aebfbc5-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» ID|integer|true|none|none|
|» Name|string|true|none|none|
|» Phone|string|true|none|none|
|» Fax|string|true|none|none|
|» Email|string|true|none|none|
|» Address|object|true|none|none|
|»» Line1|string|true|none|none|
|»» Line2|string|true|none|none|
|» BillingAddress|object|true|none|none|
|»» Line1|string|true|none|none|
|»» Line2|string|true|none|none|
|» EIN|string|true|none|none|
|» CompanyNo|string|true|none|none|
|» Licence|string|true|none|none|
|» Website|string|true|none|none|
|» Banking|object|true|none|none|
|»» Bank|string|true|none|Bank name|
|»» BranchCode|string|true|none|Branch Code / BIC Code|
|»» AccountName|string|true|none|Bank account name|
|»» RoutingNo|string|true|none|Routing number / BSB / Bank Code / Sort Code|
|»» AccountNo|string|true|none|Company bank account number|
|»» IBAN|string|true|none|IBAN (UK Only)|
|»» SwiftCode|string|true|none|Swift code|
|» CISCertNo|string|true|none|Payment and deduction certificate number for the Construction Industry Scheme (UK Only).|
|» EmployerTaxRefNo|string|true|none|none|
|» Timezone|string|true|none|none|
|» TimezoneOffset|string|true|none|none|
|» DefaultLanguage|string|true|none|The language that will be used by most users.|
|» Template|boolean|true|none|none|
|» MultiCompanyLabel|string¦null|false|none|Set a label name for a company (Multi-Companies only).|
|» MultiCompanyColor|string¦null|false|none|Color code in hex decimal format (Multi-Companies only) eg. #0000FF or #00F|
|» Currency|string|true|none|none|
|» Country|string|true|none|none|
|» TaxName|string|true|none|none|
|» UIDateFormat|string|true|none|This column returns the date format on web UI.|
|» UITimeFormat|string|true|none|This column returns the time format on web UI.|
|» ScheduleFormat|integer|true|none|This column returns the minimum schedule block size, either 15 minutes or 30 minutes.|
|» SingleCostCenterMode|boolean|true|none|This column returns true if it is a service build or an enterprise build with single cost center mode enabled.|
|» DateModified|string(date-time)|true|none|RFC3339 date-time format eg. 2018-05-21T19:53:39+10:00. See https://tools.ietf.org/html/rfc3339#section-5.6|
|» DefaultCostCenter|object¦null|false|none|none|
|»» ID|integer|false|none|none|
|»» Name|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|Timezone|Africa/Abidjan|
|Timezone|Africa/Accra|
|Timezone|Africa/Addis_Ababa|
|Timezone|Africa/Algiers|
|Timezone|Africa/Asmara|
|Timezone|Africa/Bamako|
|Timezone|Africa/Bangui|
|Timezone|Africa/Banjul|
|Timezone|Africa/Bissau|
|Timezone|Africa/Blantyre|
|Timezone|Africa/Brazzaville|
|Timezone|Africa/Bujumbura|
|Timezone|Africa/Cairo|
|Timezone|Africa/Casablanca|
|Timezone|Africa/Ceuta|
|Timezone|Africa/Conakry|
|Timezone|Africa/Dakar|
|Timezone|Africa/Dar_es_Salaam|
|Timezone|Africa/Djibouti|
|Timezone|Africa/Douala|
|Timezone|Africa/El_Aaiun|
|Timezone|Africa/Freetown|
|Timezone|Africa/Gaborone|
|Timezone|Africa/Harare|
|Timezone|Africa/Johannesburg|
|Timezone|Africa/Juba|
|Timezone|Africa/Kampala|
|Timezone|Africa/Khartoum|
|Timezone|Africa/Kigali|
|Timezone|Africa/Kinshasa|
|Timezone|Africa/Lagos|
|Timezone|Africa/Libreville|
|Timezone|Africa/Lome|
|Timezone|Africa/Luanda|
|Timezone|Africa/Lubumbashi|
|Timezone|Africa/Lusaka|
|Timezone|Africa/Malabo|
|Timezone|Africa/Maputo|
|Timezone|Africa/Maseru|
|Timezone|Africa/Mbabane|
|Timezone|Africa/Mogadishu|
|Timezone|Africa/Monrovia|
|Timezone|Africa/Nairobi|
|Timezone|Africa/Ndjamena|
|Timezone|Africa/Niamey|
|Timezone|Africa/Nouakchott|
|Timezone|Africa/Ouagadougou|
|Timezone|Africa/Porto-Novo|
|Timezone|Africa/Sao_Tome|
|Timezone|Africa/Tripoli|
|Timezone|Africa/Tunis|
|Timezone|Africa/Windhoek|
|Timezone|America/Adak|
|Timezone|America/Anchorage|
|Timezone|America/Anguilla|
|Timezone|America/Antigua|
|Timezone|America/Araguaina|
|Timezone|America/Argentina/Buenos_Aires|
|Timezone|America/Argentina/Catamarca|
|Timezone|America/Argentina/Cordoba|
|Timezone|America/Argentina/Jujuy|
|Timezone|America/Argentina/La_Rioja|
|Timezone|America/Argentina/Mendoza|
|Timezone|America/Argentina/Rio_Gallegos|
|Timezone|America/Argentina/Salta|
|Timezone|America/Argentina/San_Juan|
|Timezone|America/Argentina/San_Luis|
|Timezone|America/Argentina/Tucuman|
|Timezone|America/Argentina/Ushuaia|
|Timezone|America/Aruba|
|Timezone|America/Asuncion|
|Timezone|America/Atikokan|
|Timezone|America/Bahia|
|Timezone|America/Bahia_Banderas|
|Timezone|America/Barbados|
|Timezone|America/Belem|
|Timezone|America/Belize|
|Timezone|America/Blanc-Sablon|
|Timezone|America/Boa_Vista|
|Timezone|America/Bogota|
|Timezone|America/Boise|
|Timezone|America/Cambridge_Bay|
|Timezone|America/Campo_Grande|
|Timezone|America/Cancun|
|Timezone|America/Caracas|
|Timezone|America/Cayenne|
|Timezone|America/Cayman|
|Timezone|America/Chicago|
|Timezone|America/Chihuahua|
|Timezone|America/Ciudad_Juarez|
|Timezone|America/Costa_Rica|
|Timezone|America/Creston|
|Timezone|America/Cuiaba|
|Timezone|America/Curacao|
|Timezone|America/Danmarkshavn|
|Timezone|America/Dawson|
|Timezone|America/Dawson_Creek|
|Timezone|America/Denver|
|Timezone|America/Detroit|
|Timezone|America/Dominica|
|Timezone|America/Edmonton|
|Timezone|America/Eirunepe|
|Timezone|America/El_Salvador|
|Timezone|America/Fort_Nelson|
|Timezone|America/Fortaleza|
|Timezone|America/Glace_Bay|
|Timezone|America/Goose_Bay|
|Timezone|America/Grand_Turk|
|Timezone|America/Grenada|
|Timezone|America/Guadeloupe|
|Timezone|America/Guatemala|
|Timezone|America/Guayaquil|
|Timezone|America/Guyana|
|Timezone|America/Halifax|
|Timezone|America/Havana|
|Timezone|America/Hermosillo|
|Timezone|America/Indiana/Indianapolis|
|Timezone|America/Indiana/Knox|
|Timezone|America/Indiana/Marengo|
|Timezone|America/Indiana/Petersburg|
|Timezone|America/Indiana/Tell_City|
|Timezone|America/Indiana/Vevay|
|Timezone|America/Indiana/Vincennes|
|Timezone|America/Indiana/Winamac|
|Timezone|America/Inuvik|
|Timezone|America/Iqaluit|
|Timezone|America/Jamaica|
|Timezone|America/Juneau|
|Timezone|America/Kentucky/Louisville|
|Timezone|America/Kentucky/Monticello|
|Timezone|America/Kralendijk|
|Timezone|America/La_Paz|
|Timezone|America/Lima|
|Timezone|America/Los_Angeles|
|Timezone|America/Lower_Princes|
|Timezone|America/Maceio|
|Timezone|America/Managua|
|Timezone|America/Manaus|
|Timezone|America/Marigot|
|Timezone|America/Martinique|
|Timezone|America/Matamoros|
|Timezone|America/Mazatlan|
|Timezone|America/Menominee|
|Timezone|America/Merida|
|Timezone|America/Metlakatla|
|Timezone|America/Mexico_City|
|Timezone|America/Miquelon|
|Timezone|America/Moncton|
|Timezone|America/Monterrey|
|Timezone|America/Montevideo|
|Timezone|America/Montserrat|
|Timezone|America/Nassau|
|Timezone|America/New_York|
|Timezone|America/Nome|
|Timezone|America/Noronha|
|Timezone|America/North_Dakota/Beulah|
|Timezone|America/North_Dakota/Center|
|Timezone|America/North_Dakota/New_Salem|
|Timezone|America/Nuuk|
|Timezone|America/Ojinaga|
|Timezone|America/Panama|
|Timezone|America/Paramaribo|
|Timezone|America/Phoenix|
|Timezone|America/Port-au-Prince|
|Timezone|America/Port_of_Spain|
|Timezone|America/Porto_Velho|
|Timezone|America/Puerto_Rico|
|Timezone|America/Punta_Arenas|
|Timezone|America/Rankin_Inlet|
|Timezone|America/Recife|
|Timezone|America/Regina|
|Timezone|America/Resolute|
|Timezone|America/Rio_Branco|
|Timezone|America/Santarem|
|Timezone|America/Santiago|
|Timezone|America/Santo_Domingo|
|Timezone|America/Sao_Paulo|
|Timezone|America/Scoresbysund|
|Timezone|America/Sitka|
|Timezone|America/St_Barthelemy|
|Timezone|America/St_Johns|
|Timezone|America/St_Kitts|
|Timezone|America/St_Lucia|
|Timezone|America/St_Thomas|
|Timezone|America/St_Vincent|
|Timezone|America/Swift_Current|
|Timezone|America/Tegucigalpa|
|Timezone|America/Thule|
|Timezone|America/Tijuana|
|Timezone|America/Toronto|
|Timezone|America/Tortola|
|Timezone|America/Vancouver|
|Timezone|America/Whitehorse|
|Timezone|America/Winnipeg|
|Timezone|America/Yakutat|
|Timezone|Antarctica/Casey|
|Timezone|Antarctica/Davis|
|Timezone|Antarctica/DumontDUrville|
|Timezone|Antarctica/Macquarie|
|Timezone|Antarctica/Mawson|
|Timezone|Antarctica/McMurdo|
|Timezone|Antarctica/Palmer|
|Timezone|Antarctica/Rothera|
|Timezone|Antarctica/Syowa|
|Timezone|Antarctica/Troll|
|Timezone|Antarctica/Vostok|
|Timezone|Arctic/Longyearbyen|
|Timezone|Asia/Aden|
|Timezone|Asia/Almaty|
|Timezone|Asia/Amman|
|Timezone|Asia/Anadyr|
|Timezone|Asia/Aqtau|
|Timezone|Asia/Aqtobe|
|Timezone|Asia/Ashgabat|
|Timezone|Asia/Atyrau|
|Timezone|Asia/Baghdad|
|Timezone|Asia/Bahrain|
|Timezone|Asia/Baku|
|Timezone|Asia/Bangkok|
|Timezone|Asia/Barnaul|
|Timezone|Asia/Beirut|
|Timezone|Asia/Bishkek|
|Timezone|Asia/Brunei|
|Timezone|Asia/Chita|
|Timezone|Asia/Colombo|
|Timezone|Asia/Damascus|
|Timezone|Asia/Dhaka|
|Timezone|Asia/Dili|
|Timezone|Asia/Dubai|
|Timezone|Asia/Dushanbe|
|Timezone|Asia/Famagusta|
|Timezone|Asia/Gaza|
|Timezone|Asia/Hebron|
|Timezone|Asia/Ho_Chi_Minh|
|Timezone|Asia/Hong_Kong|
|Timezone|Asia/Hovd|
|Timezone|Asia/Irkutsk|
|Timezone|Asia/Jakarta|
|Timezone|Asia/Jayapura|
|Timezone|Asia/Jerusalem|
|Timezone|Asia/Kabul|
|Timezone|Asia/Kamchatka|
|Timezone|Asia/Karachi|
|Timezone|Asia/Kathmandu|
|Timezone|Asia/Khandyga|
|Timezone|Asia/Kolkata|
|Timezone|Asia/Krasnoyarsk|
|Timezone|Asia/Kuala_Lumpur|
|Timezone|Asia/Kuching|
|Timezone|Asia/Kuwait|
|Timezone|Asia/Macau|
|Timezone|Asia/Magadan|
|Timezone|Asia/Makassar|
|Timezone|Asia/Manila|
|Timezone|Asia/Muscat|
|Timezone|Asia/Nicosia|
|Timezone|Asia/Novokuznetsk|
|Timezone|Asia/Novosibirsk|
|Timezone|Asia/Omsk|
|Timezone|Asia/Oral|
|Timezone|Asia/Phnom_Penh|
|Timezone|Asia/Pontianak|
|Timezone|Asia/Pyongyang|
|Timezone|Asia/Qatar|
|Timezone|Asia/Qostanay|
|Timezone|Asia/Qyzylorda|
|Timezone|Asia/Riyadh|
|Timezone|Asia/Sakhalin|
|Timezone|Asia/Samarkand|
|Timezone|Asia/Seoul|
|Timezone|Asia/Shanghai|
|Timezone|Asia/Singapore|
|Timezone|Asia/Srednekolymsk|
|Timezone|Asia/Taipei|
|Timezone|Asia/Tashkent|
|Timezone|Asia/Tbilisi|
|Timezone|Asia/Tehran|
|Timezone|Asia/Thimphu|
|Timezone|Asia/Tokyo|
|Timezone|Asia/Tomsk|
|Timezone|Asia/Ulaanbaatar|
|Timezone|Asia/Urumqi|
|Timezone|Asia/Ust-Nera|
|Timezone|Asia/Vientiane|
|Timezone|Asia/Vladivostok|
|Timezone|Asia/Yakutsk|
|Timezone|Asia/Yangon|
|Timezone|Asia/Yekaterinburg|
|Timezone|Asia/Yerevan|
|Timezone|Atlantic/Azores|
|Timezone|Atlantic/Bermuda|
|Timezone|Atlantic/Canary|
|Timezone|Atlantic/Cape_Verde|
|Timezone|Atlantic/Faroe|
|Timezone|Atlantic/Madeira|
|Timezone|Atlantic/Reykjavik|
|Timezone|Atlantic/South_Georgia|
|Timezone|Atlantic/St_Helena|
|Timezone|Atlantic/Stanley|
|Timezone|Australia/Adelaide|
|Timezone|Australia/Brisbane|
|Timezone|Australia/Broken_Hill|
|Timezone|Australia/Darwin|
|Timezone|Australia/Eucla|
|Timezone|Australia/Hobart|
|Timezone|Australia/Lindeman|
|Timezone|Australia/Lord_Howe|
|Timezone|Australia/Melbourne|
|Timezone|Australia/Perth|
|Timezone|Australia/Sydney|
|Timezone|Europe/Amsterdam|
|Timezone|Europe/Andorra|
|Timezone|Europe/Astrakhan|
|Timezone|Europe/Athens|
|Timezone|Europe/Belgrade|
|Timezone|Europe/Berlin|
|Timezone|Europe/Bratislava|
|Timezone|Europe/Brussels|
|Timezone|Europe/Bucharest|
|Timezone|Europe/Budapest|
|Timezone|Europe/Busingen|
|Timezone|Europe/Chisinau|
|Timezone|Europe/Copenhagen|
|Timezone|Europe/Dublin|
|Timezone|Europe/Gibraltar|
|Timezone|Europe/Guernsey|
|Timezone|Europe/Helsinki|
|Timezone|Europe/Isle_of_Man|
|Timezone|Europe/Istanbul|
|Timezone|Europe/Jersey|
|Timezone|Europe/Kaliningrad|
|Timezone|Europe/Kirov|
|Timezone|Europe/Kyiv|
|Timezone|Europe/Lisbon|
|Timezone|Europe/Ljubljana|
|Timezone|Europe/London|
|Timezone|Europe/Luxembourg|
|Timezone|Europe/Madrid|
|Timezone|Europe/Malta|
|Timezone|Europe/Mariehamn|
|Timezone|Europe/Minsk|
|Timezone|Europe/Monaco|
|Timezone|Europe/Moscow|
|Timezone|Europe/Oslo|
|Timezone|Europe/Paris|
|Timezone|Europe/Podgorica|
|Timezone|Europe/Prague|
|Timezone|Europe/Riga|
|Timezone|Europe/Rome|
|Timezone|Europe/Samara|
|Timezone|Europe/San_Marino|
|Timezone|Europe/Sarajevo|
|Timezone|Europe/Saratov|
|Timezone|Europe/Simferopol|
|Timezone|Europe/Skopje|
|Timezone|Europe/Sofia|
|Timezone|Europe/Stockholm|
|Timezone|Europe/Tallinn|
|Timezone|Europe/Tirane|
|Timezone|Europe/Ulyanovsk|
|Timezone|Europe/Vaduz|
|Timezone|Europe/Vatican|
|Timezone|Europe/Vienna|
|Timezone|Europe/Vilnius|
|Timezone|Europe/Volgograd|
|Timezone|Europe/Warsaw|
|Timezone|Europe/Zagreb|
|Timezone|Europe/Zurich|
|Timezone|Indian/Antananarivo|
|Timezone|Indian/Chagos|
|Timezone|Indian/Christmas|
|Timezone|Indian/Cocos|
|Timezone|Indian/Comoro|
|Timezone|Indian/Kerguelen|
|Timezone|Indian/Mahe|
|Timezone|Indian/Maldives|
|Timezone|Indian/Mauritius|
|Timezone|Indian/Mayotte|
|Timezone|Indian/Reunion|
|Timezone|Pacific/Apia|
|Timezone|Pacific/Auckland|
|Timezone|Pacific/Bougainville|
|Timezone|Pacific/Chatham|
|Timezone|Pacific/Chuuk|
|Timezone|Pacific/Easter|
|Timezone|Pacific/Efate|
|Timezone|Pacific/Fakaofo|
|Timezone|Pacific/Fiji|
|Timezone|Pacific/Funafuti|
|Timezone|Pacific/Galapagos|
|Timezone|Pacific/Gambier|
|Timezone|Pacific/Guadalcanal|
|Timezone|Pacific/Guam|
|Timezone|Pacific/Honolulu|
|Timezone|Pacific/Kanton|
|Timezone|Pacific/Kiritimati|
|Timezone|Pacific/Kosrae|
|Timezone|Pacific/Kwajalein|
|Timezone|Pacific/Majuro|
|Timezone|Pacific/Marquesas|
|Timezone|Pacific/Midway|
|Timezone|Pacific/Nauru|
|Timezone|Pacific/Niue|
|Timezone|Pacific/Norfolk|
|Timezone|Pacific/Noumea|
|Timezone|Pacific/Pago_Pago|
|Timezone|Pacific/Palau|
|Timezone|Pacific/Pitcairn|
|Timezone|Pacific/Pohnpei|
|Timezone|Pacific/Port_Moresby|
|Timezone|Pacific/Rarotonga|
|Timezone|Pacific/Saipan|
|Timezone|Pacific/Tahiti|
|Timezone|Pacific/Tarawa|
|Timezone|Pacific/Tongatapu|
|Timezone|Pacific/Wake|
|Timezone|Pacific/Wallis|
|Timezone|UTC|
|DefaultLanguage|en_AU|
|DefaultLanguage|en_GB|
|DefaultLanguage|en_US|
|DefaultLanguage|es_US.utf8|
|ScheduleFormat|15|
|ScheduleFormat|30|

<aside class="success">
This operation does not require authentication
</aside>

## 1a5b55a5be6a01c50efb03a59837803d

<a id="opId1a5b55a5be6a01c50efb03a59837803d"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH /api/v1.0/companies/{companyID} \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "Name": "simPRO Software Australia",
  "Phone": "+61 7 3147 8777",
  "Fax": "+61 7 3147 8777",
  "Email": "sales@simpro.com.au",
  "Address": {
    "Line1": "Ground floor",
    "Line2": "31 McKechnie Drive"
  },
  "BillingAddress": {
    "Line1": "Ground floor",
    "Line2": "31 McKechnie Drive"
  },
  "EIN": "string",
  "CompanyNo": "string",
  "Licence": "string",
  "Website": "string",
  "Banking": {
    "Bank": "string",
    "BranchCode": "string",
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "IBAN": "string",
    "SwiftCode": "string"
  },
  "CISCertNo": "string",
  "EmployerTaxRefNo": "string",
  "Timezone": "Australia/Brisbane",
  "DefaultLanguage": "en_AU",
  "MultiCompanyLabel": "string",
  "MultiCompanyColor": "#0000FF",
  "Country": "Australia"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}',
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

r = requests.patch('/api/v1.0/companies/{companyID}', headers = headers)

print(r.json())

```

`PATCH /api/v1.0/companies/{companyID}`

*Update a company.*

> Body parameter

```json
{
  "Name": "simPRO Software Australia",
  "Phone": "+61 7 3147 8777",
  "Fax": "+61 7 3147 8777",
  "Email": "sales@simpro.com.au",
  "Address": {
    "Line1": "Ground floor",
    "Line2": "31 McKechnie Drive"
  },
  "BillingAddress": {
    "Line1": "Ground floor",
    "Line2": "31 McKechnie Drive"
  },
  "EIN": "string",
  "CompanyNo": "string",
  "Licence": "string",
  "Website": "string",
  "Banking": {
    "Bank": "string",
    "BranchCode": "string",
    "AccountName": "string",
    "RoutingNo": "string",
    "AccountNo": "string",
    "IBAN": "string",
    "SwiftCode": "string"
  },
  "CISCertNo": "string",
  "EmployerTaxRefNo": "string",
  "Timezone": "Australia/Brisbane",
  "DefaultLanguage": "en_AU",
  "MultiCompanyLabel": "string",
  "MultiCompanyColor": "#0000FF",
  "Country": "Australia"
}
```

<h3 id="1a5b55a5be6a01c50efb03a59837803d-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Company object|
|» Name|body|string|false|none|
|» Phone|body|string|false|none|
|» Fax|body|string|false|none|
|» Email|body|string|false|none|
|» Address|body|object|false|none|
|»» Line1|body|string|false|none|
|»» Line2|body|string|false|none|
|» BillingAddress|body|object|false|none|
|»» Line1|body|string|false|none|
|»» Line2|body|string|false|none|
|» EIN|body|string|false|none|
|» CompanyNo|body|string|false|none|
|» Licence|body|string|false|none|
|» Website|body|string|false|none|
|» Banking|body|object|false|none|
|»» Bank|body|string|false|Bank name|
|»» BranchCode|body|string|false|Branch Code / BIC Code|
|»» AccountName|body|string|false|Bank account name|
|»» RoutingNo|body|string|false|Routing number / BSB / Bank Code / Sort Code|
|»» AccountNo|body|string|false|Company bank account number|
|»» IBAN|body|string|false|IBAN (UK Only)|
|»» SwiftCode|body|string|false|Swift code|
|» CISCertNo|body|string|false|Payment and deduction certificate number for the Construction Industry Scheme (UK Only).|
|» EmployerTaxRefNo|body|string|false|none|
|» Timezone|body|string|false|none|
|» DefaultLanguage|body|string|false|The language that will be used by most users.|
|» MultiCompanyLabel|body|string¦null|false|Set a label name for a company (Multi-Companies only).|
|» MultiCompanyColor|body|string¦null|false|Color code in hex decimal format (Multi-Companies only) eg. #0000FF or #00F|
|» Country|body|string|false|none|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

#### Enumerated Values

|Parameter|Value|
|---|---|
|» Timezone|Africa/Abidjan|
|» Timezone|Africa/Accra|
|» Timezone|Africa/Addis_Ababa|
|» Timezone|Africa/Algiers|
|» Timezone|Africa/Asmara|
|» Timezone|Africa/Bamako|
|» Timezone|Africa/Bangui|
|» Timezone|Africa/Banjul|
|» Timezone|Africa/Bissau|
|» Timezone|Africa/Blantyre|
|» Timezone|Africa/Brazzaville|
|» Timezone|Africa/Bujumbura|
|» Timezone|Africa/Cairo|
|» Timezone|Africa/Casablanca|
|» Timezone|Africa/Ceuta|
|» Timezone|Africa/Conakry|
|» Timezone|Africa/Dakar|
|» Timezone|Africa/Dar_es_Salaam|
|» Timezone|Africa/Djibouti|
|» Timezone|Africa/Douala|
|» Timezone|Africa/El_Aaiun|
|» Timezone|Africa/Freetown|
|» Timezone|Africa/Gaborone|
|» Timezone|Africa/Harare|
|» Timezone|Africa/Johannesburg|
|» Timezone|Africa/Juba|
|» Timezone|Africa/Kampala|
|» Timezone|Africa/Khartoum|
|» Timezone|Africa/Kigali|
|» Timezone|Africa/Kinshasa|
|» Timezone|Africa/Lagos|
|» Timezone|Africa/Libreville|
|» Timezone|Africa/Lome|
|» Timezone|Africa/Luanda|
|» Timezone|Africa/Lubumbashi|
|» Timezone|Africa/Lusaka|
|» Timezone|Africa/Malabo|
|» Timezone|Africa/Maputo|
|» Timezone|Africa/Maseru|
|» Timezone|Africa/Mbabane|
|» Timezone|Africa/Mogadishu|
|» Timezone|Africa/Monrovia|
|» Timezone|Africa/Nairobi|
|» Timezone|Africa/Ndjamena|
|» Timezone|Africa/Niamey|
|» Timezone|Africa/Nouakchott|
|» Timezone|Africa/Ouagadougou|
|» Timezone|Africa/Porto-Novo|
|» Timezone|Africa/Sao_Tome|
|» Timezone|Africa/Tripoli|
|» Timezone|Africa/Tunis|
|» Timezone|Africa/Windhoek|
|» Timezone|America/Adak|
|» Timezone|America/Anchorage|
|» Timezone|America/Anguilla|
|» Timezone|America/Antigua|
|» Timezone|America/Araguaina|
|» Timezone|America/Argentina/Buenos_Aires|
|» Timezone|America/Argentina/Catamarca|
|» Timezone|America/Argentina/Cordoba|
|» Timezone|America/Argentina/Jujuy|
|» Timezone|America/Argentina/La_Rioja|
|» Timezone|America/Argentina/Mendoza|
|» Timezone|America/Argentina/Rio_Gallegos|
|» Timezone|America/Argentina/Salta|
|» Timezone|America/Argentina/San_Juan|
|» Timezone|America/Argentina/San_Luis|
|» Timezone|America/Argentina/Tucuman|
|» Timezone|America/Argentina/Ushuaia|
|» Timezone|America/Aruba|
|» Timezone|America/Asuncion|
|» Timezone|America/Atikokan|
|» Timezone|America/Bahia|
|» Timezone|America/Bahia_Banderas|
|» Timezone|America/Barbados|
|» Timezone|America/Belem|
|» Timezone|America/Belize|
|» Timezone|America/Blanc-Sablon|
|» Timezone|America/Boa_Vista|
|» Timezone|America/Bogota|
|» Timezone|America/Boise|
|» Timezone|America/Cambridge_Bay|
|» Timezone|America/Campo_Grande|
|» Timezone|America/Cancun|
|» Timezone|America/Caracas|
|» Timezone|America/Cayenne|
|» Timezone|America/Cayman|
|» Timezone|America/Chicago|
|» Timezone|America/Chihuahua|
|» Timezone|America/Ciudad_Juarez|
|» Timezone|America/Costa_Rica|
|» Timezone|America/Creston|
|» Timezone|America/Cuiaba|
|» Timezone|America/Curacao|
|» Timezone|America/Danmarkshavn|
|» Timezone|America/Dawson|
|» Timezone|America/Dawson_Creek|
|» Timezone|America/Denver|
|» Timezone|America/Detroit|
|» Timezone|America/Dominica|
|» Timezone|America/Edmonton|
|» Timezone|America/Eirunepe|
|» Timezone|America/El_Salvador|
|» Timezone|America/Fort_Nelson|
|» Timezone|America/Fortaleza|
|» Timezone|America/Glace_Bay|
|» Timezone|America/Goose_Bay|
|» Timezone|America/Grand_Turk|
|» Timezone|America/Grenada|
|» Timezone|America/Guadeloupe|
|» Timezone|America/Guatemala|
|» Timezone|America/Guayaquil|
|» Timezone|America/Guyana|
|» Timezone|America/Halifax|
|» Timezone|America/Havana|
|» Timezone|America/Hermosillo|
|» Timezone|America/Indiana/Indianapolis|
|» Timezone|America/Indiana/Knox|
|» Timezone|America/Indiana/Marengo|
|» Timezone|America/Indiana/Petersburg|
|» Timezone|America/Indiana/Tell_City|
|» Timezone|America/Indiana/Vevay|
|» Timezone|America/Indiana/Vincennes|
|» Timezone|America/Indiana/Winamac|
|» Timezone|America/Inuvik|
|» Timezone|America/Iqaluit|
|» Timezone|America/Jamaica|
|» Timezone|America/Juneau|
|» Timezone|America/Kentucky/Louisville|
|» Timezone|America/Kentucky/Monticello|
|» Timezone|America/Kralendijk|
|» Timezone|America/La_Paz|
|» Timezone|America/Lima|
|» Timezone|America/Los_Angeles|
|» Timezone|America/Lower_Princes|
|» Timezone|America/Maceio|
|» Timezone|America/Managua|
|» Timezone|America/Manaus|
|» Timezone|America/Marigot|
|» Timezone|America/Martinique|
|» Timezone|America/Matamoros|
|» Timezone|America/Mazatlan|
|» Timezone|America/Menominee|
|» Timezone|America/Merida|
|» Timezone|America/Metlakatla|
|» Timezone|America/Mexico_City|
|» Timezone|America/Miquelon|
|» Timezone|America/Moncton|
|» Timezone|America/Monterrey|
|» Timezone|America/Montevideo|
|» Timezone|America/Montserrat|
|» Timezone|America/Nassau|
|» Timezone|America/New_York|
|» Timezone|America/Nome|
|» Timezone|America/Noronha|
|» Timezone|America/North_Dakota/Beulah|
|» Timezone|America/North_Dakota/Center|
|» Timezone|America/North_Dakota/New_Salem|
|» Timezone|America/Nuuk|
|» Timezone|America/Ojinaga|
|» Timezone|America/Panama|
|» Timezone|America/Paramaribo|
|» Timezone|America/Phoenix|
|» Timezone|America/Port-au-Prince|
|» Timezone|America/Port_of_Spain|
|» Timezone|America/Porto_Velho|
|» Timezone|America/Puerto_Rico|
|» Timezone|America/Punta_Arenas|
|» Timezone|America/Rankin_Inlet|
|» Timezone|America/Recife|
|» Timezone|America/Regina|
|» Timezone|America/Resolute|
|» Timezone|America/Rio_Branco|
|» Timezone|America/Santarem|
|» Timezone|America/Santiago|
|» Timezone|America/Santo_Domingo|
|» Timezone|America/Sao_Paulo|
|» Timezone|America/Scoresbysund|
|» Timezone|America/Sitka|
|» Timezone|America/St_Barthelemy|
|» Timezone|America/St_Johns|
|» Timezone|America/St_Kitts|
|» Timezone|America/St_Lucia|
|» Timezone|America/St_Thomas|
|» Timezone|America/St_Vincent|
|» Timezone|America/Swift_Current|
|» Timezone|America/Tegucigalpa|
|» Timezone|America/Thule|
|» Timezone|America/Tijuana|
|» Timezone|America/Toronto|
|» Timezone|America/Tortola|
|» Timezone|America/Vancouver|
|» Timezone|America/Whitehorse|
|» Timezone|America/Winnipeg|
|» Timezone|America/Yakutat|
|» Timezone|Antarctica/Casey|
|» Timezone|Antarctica/Davis|
|» Timezone|Antarctica/DumontDUrville|
|» Timezone|Antarctica/Macquarie|
|» Timezone|Antarctica/Mawson|
|» Timezone|Antarctica/McMurdo|
|» Timezone|Antarctica/Palmer|
|» Timezone|Antarctica/Rothera|
|» Timezone|Antarctica/Syowa|
|» Timezone|Antarctica/Troll|
|» Timezone|Antarctica/Vostok|
|» Timezone|Arctic/Longyearbyen|
|» Timezone|Asia/Aden|
|» Timezone|Asia/Almaty|
|» Timezone|Asia/Amman|
|» Timezone|Asia/Anadyr|
|» Timezone|Asia/Aqtau|
|» Timezone|Asia/Aqtobe|
|» Timezone|Asia/Ashgabat|
|» Timezone|Asia/Atyrau|
|» Timezone|Asia/Baghdad|
|» Timezone|Asia/Bahrain|
|» Timezone|Asia/Baku|
|» Timezone|Asia/Bangkok|
|» Timezone|Asia/Barnaul|
|» Timezone|Asia/Beirut|
|» Timezone|Asia/Bishkek|
|» Timezone|Asia/Brunei|
|» Timezone|Asia/Chita|
|» Timezone|Asia/Colombo|
|» Timezone|Asia/Damascus|
|» Timezone|Asia/Dhaka|
|» Timezone|Asia/Dili|
|» Timezone|Asia/Dubai|
|» Timezone|Asia/Dushanbe|
|» Timezone|Asia/Famagusta|
|» Timezone|Asia/Gaza|
|» Timezone|Asia/Hebron|
|» Timezone|Asia/Ho_Chi_Minh|
|» Timezone|Asia/Hong_Kong|
|» Timezone|Asia/Hovd|
|» Timezone|Asia/Irkutsk|
|» Timezone|Asia/Jakarta|
|» Timezone|Asia/Jayapura|
|» Timezone|Asia/Jerusalem|
|» Timezone|Asia/Kabul|
|» Timezone|Asia/Kamchatka|
|» Timezone|Asia/Karachi|
|» Timezone|Asia/Kathmandu|
|» Timezone|Asia/Khandyga|
|» Timezone|Asia/Kolkata|
|» Timezone|Asia/Krasnoyarsk|
|» Timezone|Asia/Kuala_Lumpur|
|» Timezone|Asia/Kuching|
|» Timezone|Asia/Kuwait|
|» Timezone|Asia/Macau|
|» Timezone|Asia/Magadan|
|» Timezone|Asia/Makassar|
|» Timezone|Asia/Manila|
|» Timezone|Asia/Muscat|
|» Timezone|Asia/Nicosia|
|» Timezone|Asia/Novokuznetsk|
|» Timezone|Asia/Novosibirsk|
|» Timezone|Asia/Omsk|
|» Timezone|Asia/Oral|
|» Timezone|Asia/Phnom_Penh|
|» Timezone|Asia/Pontianak|
|» Timezone|Asia/Pyongyang|
|» Timezone|Asia/Qatar|
|» Timezone|Asia/Qostanay|
|» Timezone|Asia/Qyzylorda|
|» Timezone|Asia/Riyadh|
|» Timezone|Asia/Sakhalin|
|» Timezone|Asia/Samarkand|
|» Timezone|Asia/Seoul|
|» Timezone|Asia/Shanghai|
|» Timezone|Asia/Singapore|
|» Timezone|Asia/Srednekolymsk|
|» Timezone|Asia/Taipei|
|» Timezone|Asia/Tashkent|
|» Timezone|Asia/Tbilisi|
|» Timezone|Asia/Tehran|
|» Timezone|Asia/Thimphu|
|» Timezone|Asia/Tokyo|
|» Timezone|Asia/Tomsk|
|» Timezone|Asia/Ulaanbaatar|
|» Timezone|Asia/Urumqi|
|» Timezone|Asia/Ust-Nera|
|» Timezone|Asia/Vientiane|
|» Timezone|Asia/Vladivostok|
|» Timezone|Asia/Yakutsk|
|» Timezone|Asia/Yangon|
|» Timezone|Asia/Yekaterinburg|
|» Timezone|Asia/Yerevan|
|» Timezone|Atlantic/Azores|
|» Timezone|Atlantic/Bermuda|
|» Timezone|Atlantic/Canary|
|» Timezone|Atlantic/Cape_Verde|
|» Timezone|Atlantic/Faroe|
|» Timezone|Atlantic/Madeira|
|» Timezone|Atlantic/Reykjavik|
|» Timezone|Atlantic/South_Georgia|
|» Timezone|Atlantic/St_Helena|
|» Timezone|Atlantic/Stanley|
|» Timezone|Australia/Adelaide|
|» Timezone|Australia/Brisbane|
|» Timezone|Australia/Broken_Hill|
|» Timezone|Australia/Darwin|
|» Timezone|Australia/Eucla|
|» Timezone|Australia/Hobart|
|» Timezone|Australia/Lindeman|
|» Timezone|Australia/Lord_Howe|
|» Timezone|Australia/Melbourne|
|» Timezone|Australia/Perth|
|» Timezone|Australia/Sydney|
|» Timezone|Europe/Amsterdam|
|» Timezone|Europe/Andorra|
|» Timezone|Europe/Astrakhan|
|» Timezone|Europe/Athens|
|» Timezone|Europe/Belgrade|
|» Timezone|Europe/Berlin|
|» Timezone|Europe/Bratislava|
|» Timezone|Europe/Brussels|
|» Timezone|Europe/Bucharest|
|» Timezone|Europe/Budapest|
|» Timezone|Europe/Busingen|
|» Timezone|Europe/Chisinau|
|» Timezone|Europe/Copenhagen|
|» Timezone|Europe/Dublin|
|» Timezone|Europe/Gibraltar|
|» Timezone|Europe/Guernsey|
|» Timezone|Europe/Helsinki|
|» Timezone|Europe/Isle_of_Man|
|» Timezone|Europe/Istanbul|
|» Timezone|Europe/Jersey|
|» Timezone|Europe/Kaliningrad|
|» Timezone|Europe/Kirov|
|» Timezone|Europe/Kyiv|
|» Timezone|Europe/Lisbon|
|» Timezone|Europe/Ljubljana|
|» Timezone|Europe/London|
|» Timezone|Europe/Luxembourg|
|» Timezone|Europe/Madrid|
|» Timezone|Europe/Malta|
|» Timezone|Europe/Mariehamn|
|» Timezone|Europe/Minsk|
|» Timezone|Europe/Monaco|
|» Timezone|Europe/Moscow|
|» Timezone|Europe/Oslo|
|» Timezone|Europe/Paris|
|» Timezone|Europe/Podgorica|
|» Timezone|Europe/Prague|
|» Timezone|Europe/Riga|
|» Timezone|Europe/Rome|
|» Timezone|Europe/Samara|
|» Timezone|Europe/San_Marino|
|» Timezone|Europe/Sarajevo|
|» Timezone|Europe/Saratov|
|» Timezone|Europe/Simferopol|
|» Timezone|Europe/Skopje|
|» Timezone|Europe/Sofia|
|» Timezone|Europe/Stockholm|
|» Timezone|Europe/Tallinn|
|» Timezone|Europe/Tirane|
|» Timezone|Europe/Ulyanovsk|
|» Timezone|Europe/Vaduz|
|» Timezone|Europe/Vatican|
|» Timezone|Europe/Vienna|
|» Timezone|Europe/Vilnius|
|» Timezone|Europe/Volgograd|
|» Timezone|Europe/Warsaw|
|» Timezone|Europe/Zagreb|
|» Timezone|Europe/Zurich|
|» Timezone|Indian/Antananarivo|
|» Timezone|Indian/Chagos|
|» Timezone|Indian/Christmas|
|» Timezone|Indian/Cocos|
|» Timezone|Indian/Comoro|
|» Timezone|Indian/Kerguelen|
|» Timezone|Indian/Mahe|
|» Timezone|Indian/Maldives|
|» Timezone|Indian/Mauritius|
|» Timezone|Indian/Mayotte|
|» Timezone|Indian/Reunion|
|» Timezone|Pacific/Apia|
|» Timezone|Pacific/Auckland|
|» Timezone|Pacific/Bougainville|
|» Timezone|Pacific/Chatham|
|» Timezone|Pacific/Chuuk|
|» Timezone|Pacific/Easter|
|» Timezone|Pacific/Efate|
|» Timezone|Pacific/Fakaofo|
|» Timezone|Pacific/Fiji|
|» Timezone|Pacific/Funafuti|
|» Timezone|Pacific/Galapagos|
|» Timezone|Pacific/Gambier|
|» Timezone|Pacific/Guadalcanal|
|» Timezone|Pacific/Guam|
|» Timezone|Pacific/Honolulu|
|» Timezone|Pacific/Kanton|
|» Timezone|Pacific/Kiritimati|
|» Timezone|Pacific/Kosrae|
|» Timezone|Pacific/Kwajalein|
|» Timezone|Pacific/Majuro|
|» Timezone|Pacific/Marquesas|
|» Timezone|Pacific/Midway|
|» Timezone|Pacific/Nauru|
|» Timezone|Pacific/Niue|
|» Timezone|Pacific/Norfolk|
|» Timezone|Pacific/Noumea|
|» Timezone|Pacific/Pago_Pago|
|» Timezone|Pacific/Palau|
|» Timezone|Pacific/Pitcairn|
|» Timezone|Pacific/Pohnpei|
|» Timezone|Pacific/Port_Moresby|
|» Timezone|Pacific/Rarotonga|
|» Timezone|Pacific/Saipan|
|» Timezone|Pacific/Tahiti|
|» Timezone|Pacific/Tarawa|
|» Timezone|Pacific/Tongatapu|
|» Timezone|Pacific/Wake|
|» Timezone|Pacific/Wallis|
|» Timezone|UTC|
|» DefaultLanguage|en_AU|
|» DefaultLanguage|en_GB|
|» DefaultLanguage|en_US|
|» DefaultLanguage|es_US.utf8|

<h3 id="1a5b55a5be6a01c50efb03a59837803d-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Company updated successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>