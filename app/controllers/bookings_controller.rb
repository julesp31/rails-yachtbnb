class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new
  end

  def new
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to @booking, notice: "Booking was successfully created."
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:yacht_id, :status, :start_date, :end_date)
  end
end
