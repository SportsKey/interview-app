class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update(user_params)
    redirect_to edit_user_path
  end

  private

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :country_code)
  end
end
