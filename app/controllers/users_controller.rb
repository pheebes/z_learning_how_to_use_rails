class UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]

  def get_user
    @user = User.find(params[:id])
  end

  def index
    #@users = User.all
    respond_to do |format|
      format.html { @users = User.all }
      format.json {
        @users = User.all
        render json: @users.to_json
      }
    end
  end

  def show
    respond_to do |format|
      format.html {

      }
      format.json {
        render json: @user.to_json
      }
    end
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :years_of_experience, :email)
  end
end
