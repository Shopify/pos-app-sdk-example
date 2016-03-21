class HomeController < AuthenticatedController

  before_action :configure_view_path

  def configure_view_path
    prepend_view_path "app/views/pos" if pos_embedded?
  end

  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 60})
  end

  def cart
    @products = ShopifyAPI::Product.find(:all)
  end

  def discounts
  end

  def loyalty
  end

  def modal
  end

  def customer
  end

  def modal_buttons
  end

  def regular_app_page
  end

  def buttons
  end

  def help
  end

  def error
    raise "An error page"
  end

  def form_page
    if request.post?
      if params[:name].present?
        flash[:notice] = "Created #{ params[:colour] } unicorn: #{ params[:name] }."
      else
        flash[:error] = "Name must be set."
      end
    end
  end

  def pagination
    @total_pages = 3
    @page = (params[:page].presence || 1).to_i
    @previous_page = "/pagination?page=#{ @page - 1 }" if @page > 1
    @next_page = "/pagination?page=#{ @page + 1 }" if @page < @total_pages
  end

end
