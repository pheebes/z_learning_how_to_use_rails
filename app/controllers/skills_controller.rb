class SkillsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @user = User.find(params[:user_id])
    @skills = @user.skills
  end

  def show
  end

  def new
  end

   def create
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
