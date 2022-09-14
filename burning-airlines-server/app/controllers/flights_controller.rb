class FlightsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.create flight_params
        if @flight.persisted? 
            render json: @flight #send the created flight object as JSON response
        else
            render json: { error: 'Could not create flight' }, status: 422 #'Unprocessable Entity'
        end #end if
  end

  def index
    @flights = Flight.all
    respond_to do |format|
      format.html #shows page as html
      format.json {render json: @flights} #shows json
    end


  end

  def show
    # @flight = Flight.find_by params[:flight_number]
    @flight = Flight.find_by flight_number: params[:id]
    respond_to do |format|
      format.html #shows page as html
      format.json {render json: @flight, include: [:users, :airplane]} 
    end
    
  end

  def edit
  end

  def update
  end

  private

  def flight_params
    params.require(:flight).permit(:date, :origin, :destination, :flight_number, :airplane_id)

  end 


end


