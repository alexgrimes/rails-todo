class TodosController < ApplicationController
  def index
    todos = todos.all
    render json: todos
  end 

  def create
    todo = Todo.create(name: params[:name], completed: params[:completed])
    render json: {todo}
  end
end
