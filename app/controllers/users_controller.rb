class UsersController < ApplicationController
  def index
    #@users = User.all
    respond_to do |format|
      format.html { @users = User.all }
      format.json { @users = User.all }
    end
  end

  def show
  end

  def create
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :years_of_experience, :email)
  end
end
