class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
#        authorize @user
        if @user.save
            session[:user_id] = @user.id
            # return JSON TOKEN
            render json: @user
        else 
            render status: 400
        end
    end
    
    def update
        @user = User.find(params[:id])
        @user.authenticate(password: user_params[:old_password])
#        authorize @user
        if @user.update(user_params)
            render json: @user
        else
            render :edit
        end
    end
    def show
        @user = User.find(params[:id])
#        authorize @user
        render json: @user
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
    def index
        @users = User.all
#        authorize @users
        render json: @users
    end
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    def old_password
        params.permit(:old_password) 
    end
end
