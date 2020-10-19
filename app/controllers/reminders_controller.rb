class RemindersController < ApplicationController

    def create
        reminder = Reminder.create(reminder_params)
        render json: reminder
        # render json: {message: 'hello we out here'}
    end

    private

    def reminder_params
        params.permit(:content, :user_id)
    end

end
