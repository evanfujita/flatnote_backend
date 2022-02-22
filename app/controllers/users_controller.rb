class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        if user = User.find_by(id: params[:id])
            render json: user
        else
            render json: {error: 'no user'}
        end
    end
    
    def new
        user = User.new(user_params)
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {error: 'user not created'}
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {message: 'deleted'}
    end

    def auth
        user = User.find_by(username: params[:user][:username])

    #need to add password validation

        if user
            render json: user
        else
            render json: { error: 'Invalid Username or Password'}
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
