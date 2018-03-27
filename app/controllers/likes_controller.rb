class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]

  # GET /likes/:product_id
  def like
    #see if record exists in table
    like = Like.where(user_id: current_user.id).where(product_id: params[:product_id])
    
    if(like.present?)
      #user already liked
      #delete record
      puts 'Test----------------------------------------'
    else
      #user have not liked before
      puts 'Test222----------------------------------------'
      like = Like.new
      like.product_id = params[:product_id]
      like.user_id = current_user.id
      like.save
    end
  end
  
    # DELETE /likes/1
  # DELETE /likes/1.json
  # def unlike

    
    # like = Like.where(user_id: current_user.id).where(product_id: params[:product_id])
    # like.destroy
    # @like.destroy
    # respond_to do |format|
    #   format.html { redirect_to likes_url, notice: 'Like was successfully destroyed.' }
    #   format.json { head :no_content }
    # end


  # GET /likes
  # GET /likes.json
  def index
    @likes = Like.all
  end

  # GET /likes/1
  # GET /likes/1.json
  def show
  end

  # GET /likes/new
  def new
    @like = Like.new
  end

  # GET /likes/1/edit
  def edit
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new(like_params)

    respond_to do |format|
      if @like.save
        format.html { redirect_to @like, notice: 'Like was successfully created.' }
        format.json { render :show, status: :created, location: @like }
      else
        format.html { render :new }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likes/1
  # PATCH/PUT /likes/1.json
  def update
    respond_to do |format|
      if @like.update(like_params)
        format.html { redirect_to @like, notice: 'Like was successfully updated.' }
        format.json { render :show, status: :ok, location: @like }
      else
        format.html { render :edit }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      params.require(:like).permit(:user_id, :product_id)
    end
end
