class UsersController < ApplicationController

    def index
        user = User.find_by(id: params[:id])
        render JSON: user
    end

    def show

    end

    def destroy

    end

end
