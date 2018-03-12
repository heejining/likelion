class FundingEventsController < ApplicationController
  before_action :set_funding_event, only: [:show, :edit, :update, :destroy]

  # GET /funding_events
  # GET /funding_events.json
  def index
    @funding_events = FundingEvent.all
  end

  # GET /funding_events/1
  # GET /funding_events/1.json
  def show
  end

  # GET /funding_events/new
  def new
    @funding_event = FundingEvent.new
  end

  # GET /funding_events/1/edit
  def edit
  end

  # POST /funding_events
  # POST /funding_events.json
  def create
    @funding_event = FundingEvent.new(funding_event_params)

    respond_to do |format|
      if @funding_event.save
        format.html { redirect_to @funding_event, notice: 'Funding event was successfully created.' }
        format.json { render :show, status: :created, location: @funding_event }
      else
        format.html { render :new }
        format.json { render json: @funding_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funding_events/1
  # PATCH/PUT /funding_events/1.json
  def update
    respond_to do |format|
      if @funding_event.update(funding_event_params)
        format.html { redirect_to @funding_event, notice: 'Funding event was successfully updated.' }
        format.json { render :show, status: :ok, location: @funding_event }
      else
        format.html { render :edit }
        format.json { render json: @funding_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funding_events/1
  # DELETE /funding_events/1.json
  def destroy
    @funding_event.destroy
    respond_to do |format|
      format.html { redirect_to funding_events_url, notice: 'Funding event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding_event
      @funding_event = FundingEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funding_event_params
      params.require(:funding_event).permit(:user_id, :product_id, :amount, :datetime)
    end
end
