class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
 

  # GET /products
  def index
    @products = Product.all.order('created_at DESC')
  end
  
  # def subtract
  #   funding_events = FundingEvent.where(product_id: product.id)
  #   raised_amount = funding_events.sum('amount')
  #   left_amount = Product.goal_amount - raised_amount
  # end
    

  # GET /products/1
  def show
    # @likes = Like.find_by()
    likes_group = Like.all.group_by(&:product_id)
    @likes = likes_group[params[:id]]
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    respond_to do |format|
       if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /products/1
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      else
       render :edit 
      end
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
      redirect_to products_url, notice: 'Product was successfully destroyed.' 
  end

  ## TODO - Move this to contact controller
  def send_contact_email
    contact_email = params[:contact_email]
    contact_message = params[:contact_message]
    UserMailer.contact_email(contact_email, contact_message).deliver_later
    
    redirect_to products_path
  end
  
  def liked
    @product = Product.find(params[:product_id])
    
    logger.debug params[:product_id]
    @product.likes += 1
    @product.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:user_id, :name, :likes, :description, :images, :video, :category, :funding, :goal_amount, :due_date)
    end
end
