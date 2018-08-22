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
 def update
   @note = Note.find(params[:id])
   if @note.update(note_params2)
     @note.save
   render json: Note.all
  end
 end

def destroy
  Note.find(params[:id]).destroy

end
 private
 def note_params
   params.require(:note).permit(:title, :description,:date,:status)
 end

 def note_params2
  params.require(:note).permit(:status)
end
end
