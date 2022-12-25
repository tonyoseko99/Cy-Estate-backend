class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            render json: @review
        else
            render json: {error: 'Error creating review'}
        end
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            render json: @review
        else
            render json: {error: 'Error updating review'}
        end
    end

    def destroy
        @review = Review.find(params[:id])
        if @review.destroy
            render status: :no_content
        else
            render json: {error: 'Error destroying review'}
        end
    end

    private

    def review_params
        params.require(:review).permit(:text, :user_id, :house_id)
    end
end
