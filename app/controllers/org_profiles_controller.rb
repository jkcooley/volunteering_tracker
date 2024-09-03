class OrgProfilesController < ApplicationController  
  #http_basic_authenticate_with name: "org_user", password: "strong_password", only: [:admin_show]  
  def home
   end
  
    def index
      @org_profiles = OrgProfile.all
    end

    def show
        @org_profile = OrgProfile.find(params[:id])
    end
  
    def new
    end

    def create
    end

    def edit
    end

    def update
      @org_profile = OrgProfile.find(params[:id])

      if @org_profile.update(org_profile_params)
        #redirect_to @org_profile
        puts "THIS HAPPENED"
      else
        render :bad, status: :unprocessable_entity
      end
    end

    def public_show
      show
    end

    def admin_show
      show
    end

    private
    def org_profile_params
      params.permit(:name, :contact_info, :mission_statement, :blurb, :tasks)
    end
end


