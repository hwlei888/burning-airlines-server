class ReservationsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @reservations = Reservation.all
    respond_to do |format|
      format.html #shows page as html
      format.json {render json: @reservations} #shows json
    end

  end

  def show
  end

  def edit
  end

  def update
  end
end
