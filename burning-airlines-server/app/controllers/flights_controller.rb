class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def create
    flight = Flight.create content: params[:content]
        if flight.persisted? 
            render json: flight #send the created flight object as JSON response
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
    @flight = Flight.find params[:id]
    
  end

  def edit
  end

  def update
  end
end


