class InfoController < ApplicationController
  skip_before_filter :authorize
  
  def who_bought
    @product = Product.find(params[:id]) 
    @orders = @product.orders 
    respond_to do |format|
      format.html
      format.atom { render :layout => false }
      format.xml { render :layout => false } 
      format.json { render :layout => false , :json => @product.to_json(:include => :orders) }
    end
  end

end
