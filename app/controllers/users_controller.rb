class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
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
    @user = User.new(user_params)
    #respond_to do |format|
      #format.html {

      #}
      #format.json {
        if @user.save
          render status: 200, json: {
            message: "Successfully created user!",
            user: @user
          }.to_json
        else
          render status: 422, json: {
            message: "Unable to create user.",
            errors: @user.errors
          }.to_json
        end
      #}
    #end
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
