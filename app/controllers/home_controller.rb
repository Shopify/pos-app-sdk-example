class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end

  def cart
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end

  def discounts
  end

  def loyalty
  end

  def customer
  end
end
