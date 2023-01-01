class SuperusersController < ApplicationController
    def new
      @superuser = Superuser.new
    end
  
    def create
      @superuser = Superuser.new(superuser_params)
  
      if @superuser.save
        redirect_to @superuser, notice: 'Superuser was successfully created.'
      else
        render :new
      end
    end
  
    def destroy
      @superuser = Superuser.find(params[:id])
      @superuser.destroy
      redirect_to superusers_url, notice: 'Superuser was successfully destroyed.'
    end
  
    private
      def superuser_params
        params.require(:superuser).permit(:email, :password, :password_confirmation, :role)
      end
end
