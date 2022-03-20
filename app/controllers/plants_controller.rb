class PlantsController < ApplicationController

    def index
        plants = Plant.all 
        render json: plants
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(create_plant)
        render json: plant, status: :created
    end

    private

    def create_plant
        params.permit(:name, :image, :price)
    end

end
