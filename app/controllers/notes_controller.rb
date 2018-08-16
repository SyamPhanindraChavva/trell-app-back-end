class NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def create
   @note = Note.new(note_params)
   if @note.save
     render json:@note, status: :created, location: @note
   else
      render json: @note.errors, status: :unprocessable_entity
   end
 end

 private
 def note_params
   params.require(:note).permit(:title, :description,:date)
 end
end
