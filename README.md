## README

This is an example application for building Shopify Embedded Applications for Shopify POS (Point of Sale). Your application credentials need to have embedded access make this example work locally.

The example uses Ruby on Rails as a backend framework but the Shopify Embedded API is JavaScript based, so it is backend language/framework agnostic. Use this as a reference.

The usage of the Shopify POS App SDK is contained within `/app/assets/javascripts/cart.js` and used in each of the `app/views/home/*.erb` files. Our CSS may be used and remixed as you wish, available within `/app/assets/stylesheets`.

### Getting Started

1. Add your `api_key`, `secret` and `scope` to `config/initializers/shopify_app.rb`.

2. In your partner dashboard, enable Shopify POS in the Embedded Settings.

3. Use the root path for Application URL (e.g., `https://1234abcd.ngrok.io/`) and `/auth/shopify/callback` for Redirection URL (e.g., `https://1234abcd.ngrok.io/auth/shopify/callback`). We highly recommend using [ngrok](https://ngrok.com) when running the app locally and connecting for use in Shopify and POS.

4. Add Shop POS links for actions. The list of actions available in this sample app are broken down by integration point and URL. You can try out modal or fullscreen view types listed here, shown as path to add along with your hosted URL (e.g., `https://1234abcd.ngrok.io/cart`). The available integration points to add in your Partner dashboard are:
    - `/cart` - Edit Cart action
    - `/random-product` - Add to Cart action
    - `/loyalty` - Order Completed action
    - `/discounts` - Edit Cart action
    - `/customer` - Edit Cart action

5. Prepare the app by running `bundle install`, and `bundle exec rails server`. The app runs by default at `localhost:3000`.

6. For more information, see the documentation for the [`shopify_app` ruby gem](https://github.com/Shopify/shopify_app).
