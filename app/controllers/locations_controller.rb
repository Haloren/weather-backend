class LocationsController < ApplicationController
    before_action :set_user

    def index
        locations = @user.locations
        render json: locations
    end

    def show
        location = Location.find_by(id: params[:id])
        render json: location
    end

    def create
        location = @user.locations.new(location_params)
        if location.save
            # render json: location
            render json: @user
        else 
            render json: {message: location.errors.full_messages.to_sentence}
        end
    end

    def destroy
        # byebug
        location = Location.all.find_by(id: params[:id])
        user = User.find(location.user_id)
        if location
            location.destroy
            render json: user
        else
            render json: {message: "Delete failed."}
        end
    end

    private
    def set_user
        @user = User.find(params[:user_id])
    end

    def location_params
        params.require(:location).permit(:zip, :user_id)
    end
end