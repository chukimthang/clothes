class Frontend::UsersController < ApplicationController
  layout "frontend"

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Register Success!"
      redirect_to :new_user
    else
      render :new
    end
  end

  private
  def user_params
    user = params.require(:user).permit :name, :email, :password,
      :password_confirmation, :phone, :avatar
    user.merge!({"is_admin" => 0})
  end
end
