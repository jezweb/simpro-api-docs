# SimPro API Reference

This directory contains the complete SimPro REST API v1.0 reference documentation, split into manageable sections for better Context7 indexing and navigation.

## 📁 Structure

- `simpro-api.md` - Complete API reference in single file (5MB, 180k+ lines)
- `sections/` - Split into 300+ smaller files by API resource

## 🗂️ Major API Sections

### Core Resources
- **[Companies](sections/companies.md)** - Company information and settings
- **[Customers](sections/customers.md)** - Customer management
- **[Sites](sections/sites.md)** - Customer sites and locations
- **[Employees](sections/employees.md)** - Staff and employee management
- **[Contractors](sections/contractors.md)** - External contractors
- **[Vendors](sections/vendors.md)** - Supplier management

### Project Management
- **[Leads](sections/leads.md)** - Lead tracking and conversion
- **[Quotes](sections/quotes.md)** - Quote creation and management
- **[Jobs](sections/jobs.md)** - Job lifecycle management
- **[Tasks](sections/tasks.md)** - Task assignment and tracking
- **[Schedules](sections/schedules.md)** - Resource scheduling

### Inventory & Catalog
- **[Catalogs](sections/catalogs.md)** - Product and service catalogs
- **[Stock Items](sections/stock_items.md)** - Inventory management
- **[Vendor Orders](sections/vendor_orders.md)** - Purchase orders
- **[Prebuilds](sections/prebuilds.md)** - Pre-built assemblies

### Financial
- **[Invoices](sections/invoices.md)** - Customer invoicing
- **[Contractor Invoices](sections/contractor_invoices.md)** - Contractor billing
- **[Payments](sections/customer_payments.md)** - Payment processing
- **[Credit Notes](sections/credit_notes.md)** - Credit management

### Assets & Maintenance
- **[Customer Assets](sections/customer_assets.md)** - Asset tracking
- **[Asset Types](sections/asset_types.md)** - Asset classification
- **[Plant & Equipment](sections/plant_and_equipment.md)** - Company assets

### Configuration
- **[Custom Fields](sections/custom_fields.md)** - Custom field definitions
- **[Labor Rates](sections/labor_rates.md)** - Pricing configuration
- **[Tax Codes](sections/tax_codes.md)** - Tax setup
- **[Payment Terms](sections/payment_terms.md)** - Payment configuration

## 🔍 Finding What You Need

### By Resource Type
Each major resource (Customers, Jobs, Invoices, etc.) has its own section with:
- CRUD operations (Create, Read, Update, Delete)
- Related sub-resources (attachments, custom fields, etc.)
- Code examples in Shell, JavaScript, and Python

### By Functionality
- **Search Operations**: Most resources support search with filtering
- **Attachments**: Most entities support file attachments
- **Custom Fields**: Extensible fields for business-specific data
- **Relationships**: Linked resources (Customer → Sites → Jobs)

## 📚 Usage Examples

All endpoints include code samples:

```bash
# Shell/cURL example
curl -X GET "https://api.simprosuite.com/api/v1.0/customers/" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

```javascript
// JavaScript example
fetch('/api/v1.0/customers/', {
  headers: { 'Authorization': 'Bearer YOUR_TOKEN' }
})
```

```python
# Python example
import requests
response = requests.get('/api/v1.0/customers/', 
  headers={'Authorization': 'Bearer YOUR_TOKEN'})
```

## 🏷️ Authentication

All API calls require OAuth2 Bearer token authentication. See the [Getting Started Guide](../guides/getting-started.md) for authentication details.