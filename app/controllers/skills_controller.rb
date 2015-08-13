class SkillsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :get_user, only: [:index, :new, :create, :edit, :update, :destroy]

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


  def show_skills
  end


  def new
    @skill = @user.skills.build
  end

  def create
    @skill = @user.skills.build(skill_params)
      respond_to do |format|
        format.html {
          @skill.save
        }
        format.json {
          if @skill.save
            render status: 200, json: {
              message: "New skill was saved!",
              skill: @skill
            }.to_json
          else render status: 422, json: {
            message: "Skill was not saved."
          }.to_json
          end
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
