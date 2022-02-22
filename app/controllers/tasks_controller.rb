class TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find_by(id: params[:id])
        render json: task
    end
    
    def new
        task = Task.new(task_params)
    end

    def create
        task = Task.new(task_params(:title, :body, :user_id))
        task.save
        render json: task
    end

    def destroy
        task = Task.find_by(id: params[:id])
        task.destroy
        render json: {message: 'deleted'}
    end

    def edit
        task = Task.find_by(id: params[:id])
    end

    def update
        task = Task.find_by(id: params[:id])
        task.update(task_params(:title, :body, :completed))
        render json: task
    end

    private

    def task_params(*args)
        params.require(:task).permit(*args)
    end

end
