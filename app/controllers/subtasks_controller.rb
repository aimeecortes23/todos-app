class SubtasksController < ApplicationController


def index
  @subtasks = Subtask.all
end

  def new
    @subtask = Subtask.new
  end

  def create
    @subtask = Subtask.new(subtask_params)
    @subtask.save
    redirect_to '/subtasks'
    #render json: @subtask
  end

  def show
    @subtask = Subtask.find(params[:id])
  end

  def edit
    @subtask = Subtask.find(params[:id])
  end

  def update
    @subtask = Subtask.find(params[:id])
    @subtask.update(subtask_params)
    redirect_to '/subtasks'
  end


  private
  def subtask_params
    params.require(:subtask).permit(:title, :priority)
  end
end
