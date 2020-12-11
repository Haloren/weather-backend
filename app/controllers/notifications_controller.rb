class NotificationsController < ApplicationController

    def index
        notifications = Notification.all
        render json: notifications
    end

    def show
        notification = Notification.find_by(id: params[:id])
        render json: notification
    end

    def create

    end

    def destroy
        notification = Notification.all.find_by(id: params[:id])
        if notification
            notification.destroy
            render json: {message: "Notification deleted"}
        else
            render json: {message: "Delete failed"}
        end
    end

    private
    def notification_params
        params.require(:notification).permit(:event, :notes, :date, :user_id)
    end

end