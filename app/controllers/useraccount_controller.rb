class UseraccountController < ApplicationController
    before_action :authenticate_user!, except: :index 

  # GET /useraccount/:user_id
  def useraccount 
      userId = params[:user_id];
      @user = User.where(user_id: userId)
      @products = Product.where(user_id: userId)
  end
end
