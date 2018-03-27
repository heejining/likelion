class MyaccountController < ApplicationController
    before_action :authenticate_user!, except: :index 

    def myaccount
       # @product = Product.find(params[:user_id])
    end
end
