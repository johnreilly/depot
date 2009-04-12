class StoreController < ApplicationController
  def index
    @generated_timestamp = DateTime.now
    @products = Product.find_products_for_sale
  end

end
