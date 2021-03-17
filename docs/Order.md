# SezzleClient::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_id** | **String** |  | [optional]
**description** | **String** |  | [optional]
**requires_shipping_info** | **BOOLEAN** |  | [optional]
**items** | [**Array&lt;LineItem&gt;**](LineItem.md) |  | [optional]
**discounts** | [**Array&lt;Discount&gt;**](Discount.md) |  | [optional]
**metadata** | **Hash&lt;String, String&gt;** |  | [optional]
**shipping_amount** | [**Price**](Price.md) |  | [optional]
**tax_amount** | [**Price**](Price.md) |  | [optional]
**checkout_expiration** | **DateTime** |  | [optional]

