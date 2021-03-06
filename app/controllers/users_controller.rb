class UsersController < ApplicationController
  def index
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
    params.require(:user).permit(:id, :email, :country_code)
  end
end
