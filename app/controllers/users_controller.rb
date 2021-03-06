class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @prototypes = @user.prototypes.includes(:tags).order('created_at DESC')
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.update(user_params)
      redirect_to root_path(current_user), success: "Successfully created your prototype."
    else
      flash[:warning] = "one more chance!!!!!!!!!!!"
      render :edit
    end
  end


  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :avatar, :password, :member, :profile, :works, :email)
  end
end


