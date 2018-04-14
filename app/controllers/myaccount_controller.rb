class MyaccountController < ApplicationController
    before_action :authenticate_user!, except: :index 
    
  # GET /myaccount/products
  def myaccount
    @products = Product.where(user_id: current_user.id)
  end
  
end
