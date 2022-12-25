class UsersController < ApplicationController
    
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: 'Error creating user'}
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: {error: 'Error updating user'}
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            render status: :no_content
        else
            render json: {error: 'Error destroying user'}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
