# Stock Transfers

Transfer stock between storage devices to monitor your inventory and manage costs efficiently.

<a href="https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Transfer-Stock-Between-Storage-Devices.htm">External documentation</a>

## 44160d9828eebbe1135f10ac228a17dc

<a id="opId44160d9828eebbe1135f10ac228a17dc"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /api/v1.0/companies/{companyID}/stockTransfer/ \
  -H 'Content-Type: application/json'

```

```javascript
const inputBody = '{
  "SourceStorageDeviceID": 0,
  "stockTransferReasonID": 0,
  "TransferDate": "2021-04-22",
  "Items": [
    {
      "CatalogID": 0,
      "DestinationStorageDeviceID": 0,
      "Quantity": 1.57
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/api/v1.0/companies/{companyID}/stockTransfer/',
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
  'Content-Type': 'application/json'
}

r = requests.post('/api/v1.0/companies/{companyID}/stockTransfer/', headers = headers)

print(r.json())

```

`POST /api/v1.0/companies/{companyID}/stockTransfer/`

*Create a new stock transfer.*

> Body parameter

```json
{
  "SourceStorageDeviceID": 0,
  "stockTransferReasonID": 0,
  "TransferDate": "2021-04-22",
  "Items": [
    {
      "CatalogID": 0,
      "DestinationStorageDeviceID": 0,
      "Quantity": 1.57
    }
  ]
}
```

<h3 id="44160d9828eebbe1135f10ac228a17dc-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|companyID|path|integer|true|A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />|
|body|body|object|true|Stock Transfer object|
|» SourceStorageDeviceID|body|integer|true|ID of a Storage Device.|
|» stockTransferReasonID|body|integer|false|Stock Transfer Reason ID|
|» TransferDate|body|string(date)|false|Transfer date for stock.|
|» Items|body|[object]|true|none|
|»» CatalogID|body|integer|false|ID of a Catalog.|
|»» DestinationStorageDeviceID|body|integer|false|ID of a Storage Device.|
|»» Quantity|body|number¦null|false|Quantity to transfer from source to destination storage device.|

#### Detailed descriptions

**companyID**: A build with Multi-company setup may have companyID >= 0, other builds use 0 by default.<br />
For more information about Multi-company, see:<br />
https://helpguide.simprogroup.com/Content/Service-and-Enterprise/Multi-company.htm

<h3 id="44160d9828eebbe1135f10ac228a17dc-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Stock Transfer created successfully.|None|
|422|[Unprocessable Entity](https://tools.ietf.org/html/rfc2518#section-10.3)|body contains invalid data.|None|

<aside class="success">
This operation does not require authentication
</aside>