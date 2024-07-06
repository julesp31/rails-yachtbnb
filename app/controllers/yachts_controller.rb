class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    if @yacht.save
      redirect_to @yacht, notice: "Yacht was successfully created."
    else
      render :new
    end
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :description, :price, :location, :is_available, :has_captain, :capacity, :photo)
  end
end
