class SkillsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :get_user

  def get_user
    @user = User.find(params[:user_id])
  end

  def index
    @skills = @user.skills
    respond_to do |format|
      format.html { }
      format.json {
        render json: @skills.to_json
      }
    end
  end


  def new
    @skill = @user.skills.build
  end

  def create
    @skill = @user.skills.build(skill_params)
    @skill.save
    respond_to do |format|
      format.html { }
      format.json {
        render json: @skills.to_json
      }
    end
  end

   def edit
   end

   def update
   end

   def destroy
   end

   private
   def skill_params
     params.require(:skill).permit(:name, :level)
   end
end
