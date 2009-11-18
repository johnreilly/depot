class InfoController < ApplicationController
  skip_before_filter :authorize
  
  def who_bought
    @product = Product.find(params[:id]) 
    @orders = @product.orders 
    respond_to do |format|
      format.html
      format.xml { render :layout => false } 
    end
  end

end
