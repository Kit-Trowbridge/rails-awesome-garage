class FavoritesController < ApplicationController

  def create
    @car = Car.find(params[:car_id])
    @favorite = Favorite.new
    @favorite.car = @car
    if @favorite.save
      redirect_to car_favorites_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @favorites = Favorite.all
  end

  def destroy
  end

end
