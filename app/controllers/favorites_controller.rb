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
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorite_path(@favorite), status: :see_other
  end
end
