class TodosController < ApplicationController
  def index
    todos = Todo.all
  end 

  def create
    todo = Todo.create(name: params[:name], completed: params[:completed])
    render json: todo
  end
end
