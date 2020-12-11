class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users, include: [:locations, :notifications]
    end

    def create
        # user = User.find_by
    end

    private
    def user_params
        params.require(:user).permit(:email)
    end

end