class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = Booking.find(params[:booking_id])

    if @review.save
      redirect_to booking_path(@review.booking), notice: "Review was successfully created."
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to booking_path(@review.booking), notice: "Review was successfully deleted."
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
