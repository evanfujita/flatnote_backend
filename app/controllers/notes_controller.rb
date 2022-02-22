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
        note = Note.new(note_params(:title, :body, :user_id))
        note.save
        render json: note
    end

    def destroy
        note = Note.find_by(id: params[:id])
        note.destroy
        render json: {message: 'deleted'}
    end

    def edit
        note = Note.find_by(id: params[:id])
    end

    def update
        note = Note.find_by(id: params[:id])
        note.update(note_params(:title, :body))
        render json: note
    end

    private

    def note_params(*args)
        params.require(:note).permit(*args)
    end

end
