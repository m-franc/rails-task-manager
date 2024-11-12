class TasksController < ApplicationController
  def all
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)
    # No need for app/views/restaurants/create.html.erb
    redirect_to update_path(@task)
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to all_path, status: :see_other
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
