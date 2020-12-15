class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users, include: [:locations, :notifications]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {message: user.errors.full_messages.to_sentence}
        end
    end

    private
    def user_params
        params.require(:user).permit(:email)
    end

end