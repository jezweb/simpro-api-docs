# Getting Started with SimPro API

## Authentication

SimPro uses OAuth2 for authentication. You'll need to:

1. Register your application in SimPro
2. Obtain client credentials
3. Request access tokens
4. Use bearer tokens in API calls

## Base URL

```
https://api.simprosuite.com/api/v1.0/
```

## Quick Examples

### List Customers

```bash
curl -X GET "https://api.simprosuite.com/api/v1.0/customers/" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -H "Accept: application/json"
```

### Create a Job

```bash
curl -X POST "https://api.simprosuite.com/api/v1.0/jobs/" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "CustomerID": 123,
    "SiteID": 456,
    "Description": "New job description"
  }'
```

## Rate Limits

SimPro enforces rate limits on API calls. Check the API documentation for current limits and best practices.

## Resources

- [Full API Reference](../api-reference/simpro-api.md)
- [SimPro Developer Portal](https://developer.simprogroup.com/apidoc)
- [Authentication Guide](https://developer.simprogroup.com/apidoc/?page=b0d64c044a432c8e0f9f01e0641d5596)