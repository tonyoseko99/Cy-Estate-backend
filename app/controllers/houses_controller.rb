class HousesController < ApplicationController

    def index
        @houses = House.all
        render json: @houses
    end

    def show
        @house = House.find(params[:id])
        render json: @house, include: [:reviews]
    end

    def create
        @house = House.new(house_params)
        if @house.save
            render json: @house
        else
            render json: {error: 'Error creating house'}
        end
    end

    def update
        @house = House.find(params[:id])
        if @house.update(house_params)
            render json: @house
        else
            render json: {error: 'Error updating house'}
        end
    end

    def destroy
        @house = House.find(params[:id])
        if @house.destroy
            render status: :no_content
        else
            render json: {error: 'Error destroying house'}
        end
    end

    private

    def house_params
        params.require(:house).permit(:address, :price, :bedrooms, :description, :image, :title)
    end


end
