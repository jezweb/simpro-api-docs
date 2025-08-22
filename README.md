# SimPro API Documentation

This repository contains the complete SimPro REST API documentation converted to Markdown format for use with Context7 and other documentation tools.

## 📖 About

SimPro is a comprehensive field service management software. This documentation covers their REST API v1.0, providing access to customers, jobs, invoices, quotes, and all other SimPro resources.

## 🔗 Context7 Integration

This documentation is optimized for Context7 retrieval:

```bash
# Add to your Context7 configuration
mcp__context7__resolve-library-id --libraryName "simpro-api"
mcp__context7__get-library-docs --context7CompatibleLibraryID "/jezweb/simpro-api-docs"
```

## 📁 Structure

- `api-reference/` - Complete API reference documentation
- `guides/` - Getting started guides and examples  
- `scripts/` - Update and maintenance scripts
- `swagger.json` - Original OpenAPI 2.0 specification (23MB)

## 🔄 Updates

This documentation is generated from SimPro's official Swagger specification. To refresh:

```bash
./scripts/update-docs.sh
```

## 📚 Resources

- [SimPro Developer Portal](https://developer.simprogroup.com/apidoc)
- [SimPro Help Guide](https://helpguide.simprogroup.com/)
- [Original Swagger Spec](https://developer.simprogroup.com/apidoc/swagger.zip)

## 🏷️ Tags

`simpro` `api` `field-service` `rest-api` `openapi` `swagger` `context7` `documentation`

---

**Last Updated:** $(date)
**API Version:** 1.0
**Documentation Size:** ~5MB Markdown + 23MB JSON