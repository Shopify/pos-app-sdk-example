ShopifyApp.configure do |config|
  config.api_key = "1234567890abcdef1234567890abcdef"
  config.secret = "1234567890abcdef1234567890abcdef"
  config.redirect_uri = "http://localhost:3000/auth/shopify/callback"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
