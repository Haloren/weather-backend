class LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: locations
    end

    def create

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
    def location_params
        params.require(:location).permit(:zip, :user_id)
    end
end