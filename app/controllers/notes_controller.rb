class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: note
    end
    
    def new
        note = Note.new(note_params)
    end

    def create
        note = Note.new(note_params)
        note.save
        render json: note
    end

    def destroy
        note = Note.find_by(id: params[:id])
        note.destroy
        render json: {message: 'deleted'}
    end

    private

    def note_params
        params.require(:note).permit(:title, :body, :user_id)
    end

end
