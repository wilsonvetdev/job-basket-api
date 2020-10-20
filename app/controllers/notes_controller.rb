class NotesController < ApplicationController

    def create
        note = Note.create(note_params)
        render json: note
    end

    private 

    def note_params 
        params.permit(:content, :job_id)
    end

end
