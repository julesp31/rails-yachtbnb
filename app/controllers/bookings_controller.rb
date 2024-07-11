class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @yacht = Yacht.find(params[:yacht_id])
    @booking.yacht = @yacht
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "yachts/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:yacht_id, :start_date, :end_date)
  end
end
