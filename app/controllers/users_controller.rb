class UsersController < ApplicationController

  def notes
    user = User.find(params[:id])
    notes = user.notes

    render json: {
      status: 'Succeed',
      notes: notes
    }
  end

end