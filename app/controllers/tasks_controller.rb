class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end
  
    def show
      unless params[:task_id].nil?
        @task_id = params[:task_id]
        puts "task ID is ", :task_id
      else 
        @task_id = params[:id]
      end
      @task = Task.find(@task_id)
      @org_profile = OrgProfile.find(params[:org_profile_id])
      @user_signed_in = false
      if defined? params[:user_id]
        @user_signed_in = true
        @user_id = params[:user_id]
      end
    end

    def new
        @task = Task.new
    end

    def create
        @org_profile = OrgProfile.find(params[:org_profile_id])
        @task = @org_profile.tasks.create(task_params)
        redirect_to org_profile_path(@org_profile)
    end

    def edit
      @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])

        if @task.save
          redirect to @task
        else
          render :new, status: :unprocessable_entity
        end
    end

    private
      def task_params
        params.require(:task).permit(:title, :blurb)
      end
end
