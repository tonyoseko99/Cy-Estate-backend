class SearchesController < ApplicationController

    def index
        @searches = Search.all
        render json: @searches
    end

    def show
        @search = Search.find(params[:id])
        render json: @search
    end

    def create
        @search = Search.new(search_params)
        if @search.save
            render json: @search
        else
            render json: {error: 'Error creating search'}
        end
    end

    def update
        @search = Search.find(params[:id])
        if @search.update(search_params)
            render json: @search
        else
            render json: {error: 'Error updating search'}
        end
    end

    def destroy
        @search = Search.find(params[:id])
        if @search.destroy
            render status: :no_content
        else
            render json: {error: 'Error destroying search'}
        end
    end

    private

    def search_params
        params.require(:search).permit(:location, :price_range)
    end

    
end
