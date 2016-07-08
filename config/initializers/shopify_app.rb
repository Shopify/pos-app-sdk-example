shopify_app_config = Rails.application.config_for(:shopify_app)

ShopifyApp.configure do |config|
  config.api_key = shopify_app_config.fetch('api_key')
  config.secret = shopify_app_config.fetch('secret')
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
