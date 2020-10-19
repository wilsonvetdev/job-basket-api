class RemindersController < ApplicationController

    def create
        reminder = Reminder.create(reminder_params)
        render json: reminder
        # render json: {message: 'hello we out here'}
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
