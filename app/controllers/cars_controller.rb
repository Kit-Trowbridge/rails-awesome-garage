class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    # how do we show time car was created?
    @reviews = @car.reviews
    @review = Review.new
  end
end
