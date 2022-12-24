class House < ApplicationRecord
    def index
        @houses = House.all
        render json: @houses
    end

    def show
        @house = House.find(params[:id])
        render json: @house
    end

end
