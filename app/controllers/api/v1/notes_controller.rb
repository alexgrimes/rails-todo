class Api::V1::NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end 

  def show
    @note = Note.find_by(title: params[:title])
    render json: @note
  end 

  def destroy
    @note = Note.find_by(slug: params[:slug])
    note.destroy
    render json: {
        status: "Note Deleted"
    }
  end 

  def create 
    @note = Note.create(
      title: params[:title],
      description: params[:description],
      user_id: params[:user_id],
      completed: false)
    if note 
      render json: {
        status: :created,
        note: @note
      }
    else 
      render json: { status: 401 }
    end
  end 

  def update
    @note = Note.find(params[:id])

    if note 
      if params[:title]
        note.update(title: params[:title])
      end

      if params[:description]
        note.update(description: params[:description])
      end 

      note.save

      render json: {
        status: "Success",
        note: @note
      }

    else 
      render json: {
        status: "Error"
      }

    end
  end 
end
