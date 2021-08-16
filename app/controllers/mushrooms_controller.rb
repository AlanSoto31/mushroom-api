class MushroomsController < ApplicationController

    before_action :authenticate, only: [:create]

    def index
        mushrooms = Mushroom.all
        render json: {data: mushrooms}
    end

    def create
        if @user.admin
            mushroom = Mushroom.new(mushroom_params)
            if mushroom.save
                render json: {data: mushroom}
            else
                render json: {error: mushroom.errors}, status: :unprocessable_entity
            end
        
        else
            render status: :unauthorized
        end  
    end

    private

    def mushroom_params
        params.require(:mushroom).permit(:name, :img_url, :description, :scientific_name, :wiki_url, :edibility, :dimensions, :location)
    end
    
end
