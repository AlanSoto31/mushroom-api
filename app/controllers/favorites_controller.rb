class FavoritesController < ApplicationController
  def index
    favorites = Favorite.where(user_id: favorite_params[:user_id])
    render json: { data: favorites }, status: :ok
  end

  def create
    favorite = Favorite.new(favorite_params)
    if favorite.save
      render json: { data: favorite }, status: :ok
    else
      render json: { error: favorite.errors }, status: :unprocessable_entity
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :mushroom_id)
  end
end
