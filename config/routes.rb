Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  get 'cart' => 'home#cart'
  get 'random-product' => 'home#cart'
  get 'discounts' => 'home#discounts'
  get 'loyalty' => 'home#loyalty'
  get 'customer' => 'home#customer'
end
