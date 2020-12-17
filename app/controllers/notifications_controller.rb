class NotificationsController < ApplicationController
    before_action :set_user

    def index
        notifications = @user.notifications
        render json: notifications
    end

    def show
        notification = @user.notifications.find_by(id: params[:id])
        render json: notification
    end

    def create
        notification = @user.notifications.new(notification_params)
        if notification.save
            # render json: notification
            render json: @user
        else 
            render json: {message: notification.errors.full_messages.to_sentence}
        end
    end

    def destroy
        # byebug
        notification = Notification.all.find_by(id: params[:id])
        user = User.find(notification.user_id)
        if notification
            notification.destroy
            render json: user
        else
            render json: {message: "Delete failed"}
        end
    end

    private
    def set_user
        @user = User.find(params[:user_id])
    end

    def notification_params
        params.require(:notification).permit(:event, :notes, :date, :user_id)
    end

end