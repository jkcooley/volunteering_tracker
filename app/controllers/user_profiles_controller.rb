class UserProfilesController < ApplicationController
  #http_basic_authenticate_with name: "user", password: "mid_password", only: [:admin_show]
  def index
    @user_profiles = UserProfile.all
  end
  
  def new
    puts "in new ~~~~~~~~~~~~~~~~`"
    @user_profile = UserProfile.new
  end

  def create
    puts "in create !!!!!!!!!!!!"
    @user_profile = UserProfile.new(user_profile_params)
    puts "profile params are ", user_profile_params
    if @user_profile.save
      puts "this seems like the GOOD one"
      redirect_to @user_profile
    else
      puts "this seems like the BAD one : ("
      puts @user_profile.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def log_task
    @user_profile = UserProfile.find(params[:user_id])
    @task = Tasks.find(params[:task_id])

    if @user_profile.update(user_profile_params)
      # TODO redirect to something that says "add more" and "go to dashboard"
      redirect_to @user_profile
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @user_profile = UserProfile.find(params[:id])
    @friends = []

 #   puts "****************************"
    # @user_profile.friends_id.each do |friend_id|
    #   @friends.push(UserProfile.find(@user_profile.friend_id))
    #   puts "friend added"
    # end
  end

  def edit
    @user_profile = UserProfile.find(params[:id])
  end

  def update
    @user_profile = UserProfile.find(params[:id])

    if @user_profile.update(user_profile_params)
      # puts "000000000******************************"
      redirect_to @user_profile
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def user_profile_params
      params.require(:user_profile).permit(:password, :name, :email)
    end
end
