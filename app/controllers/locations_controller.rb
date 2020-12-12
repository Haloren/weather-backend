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
            render json: location
        else 
            render json: {message: location.errors.full_messages.to_sentence}
        end
    end

    def destroy
        location = Location.all.find_by(id: params[:id])
        if location
            location.destroy
            render json: {message: "Zip code deleted"}
        else
            render json: {message: "Delete failed"}
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