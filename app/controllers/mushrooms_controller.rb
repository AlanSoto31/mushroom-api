class MushroomsController < ApplicationController
  before_action :authenticate, only: %i[create update destroy]
  before_action :admin, only: %i[create update destroy]

  def index
    mushrooms = Mushroom.all
    render json: { data: mushrooms }
  end

  def create
    mushroom = Mushroom.new(mushroom_params)
    if mushroom.save
      render json: { data: mushroom }, status: :created
    else
      render json: { error: mushroom.errors }, status: :unprocessable_entity
    end
  end

  def update
    mushroom = find_mush(params[:id])
    if mushroom.update(mushroom_params)
      render json: { data: mushroom }, status: :ok
    else
      render json: { error: mushroom.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    mushroom = find_mush(params[:id])
    if mushroom.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def mushroom_params
    params.require(:mushroom).permit(:name, :img_url, :description, :scientific_name, :wiki_url, :edibility,
                                     :dimensions, :location)
  end

  def admin
    render status: :unauthorized unless @user.admin
  end

  def find_mush(id)
    Mushroom.find(id)
  end
end
