class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            render json: @favorite
        else
            render json: {error: 'Error creating favorite'}
        end
    end

    def update
        @favorite = Favorite.find(params[:id])
        if @favorite.update(favorite_params)
            render json: @favorite
        else
            render json: {error: 'Error updating favorite'}
        end
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        if @favorite.destroy
            render status: :no_content
        else
            render json: {error: 'Error destroying favorite'}
        end
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :house_id)
    end
end
