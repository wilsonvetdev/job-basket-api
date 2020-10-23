class RemindersController < ApplicationController

    before_action :authorized

    def create
        reminder = @user.reminders.create(reminder_params)
        render json: reminder
        
    end

    def destroy
        reminder = Reminder.find(params[:id])
        reminder.destroy
        render json: reminder
    end

    private

    def reminder_params
        params.permit(:content, :user_id)
    end

end
