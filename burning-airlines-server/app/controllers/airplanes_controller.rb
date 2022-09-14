class AirplanesController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]
  
  def new
    @airplane = Airplane.new
  end

  def create
    @airplane = Airplane.create airplane_params

    redirect_to airplanes_path
  end

  def index
    @airplanes = Airplane.all
    respond_to do |format|
      format.html #shows page as html
      format.json {render json: @airplanes} #shows json
    end
  end

  def show
    @airplane = Airplane.find params [:id]
  end

  def edit
  end

  def update
    
  end

  private 

  def airplane_params
    params.require(:airplane).permit(:name, :row, :column)
  
  end



end
