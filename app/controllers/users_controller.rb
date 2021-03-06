class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end
    
    def new
        user = User.new(user_params)
    end

    def create
        user = User.new(user_params)
        user.save
        render json: user
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {message: 'deleted'}
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end