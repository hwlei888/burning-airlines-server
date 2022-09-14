class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create reservation_params
  end

  def index
    @reservations = Reservation.all

    # @reservations.each do |r| 
    #   {
    #     row: r.row,
    #     column: r.column,
    #     user: r.user.name,
    #     origin: r.flight.origin,
    #     destination: r.flight.destination,
    #     date: r.flight.date,
    #     airplane: r.flight.airplane.name
    #   }
    # end

    respond_to do |format|
      format.html #shows page as html
      format.json {render json: @reservations} #shows json
    end

  end

  def show
    @reservation = Reservation.find params[:id]
  end

  def edit
    @reservation = Reservation.find params[:id]
  end

  def update
    @reservation = Reservation.find params[:id]

  end

  private

  def reservation_params
    params.require(:reservation).permit(:row, :column, :user_id, :flight_id)
  end


end