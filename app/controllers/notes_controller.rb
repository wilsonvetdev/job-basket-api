class NotesController < ApplicationController

    before_action :authorized

    def create
        if @user
            note = Note.create(note_params)
            render json: note
        else 
            render json: {error: 'Unauthorized Action'}, status: 401
        end
    end

    def update
        if @user
            note = Note.find(params[:id])
            note.update(note_params)
            render json: note
        else 
            render json: {error: 'Unauthorized Action'}, status: 401
        end
    end

    def destroy 
        if @user
            note = Note.find(params[:id])
            note.destroy
            render json: note
        else 
            render json: {error: 'Unauthorized Action'}, status: 401
        end
    end

    private 

    def note_params 
        params.permit(:content, :job_id)
    end

end
