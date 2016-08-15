class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(update_params)

    respond_to do |format|
      if @user.update(update_params)
        format.html { redirect_to root_path(current_user), notice: 'Picture was successfully updated.' }
      else
        format.html { redirect_to edit_user_path(current_user.id), alert: 'one more chance!!!!!!!!!!!!!!'}
      end
    end
  end


  private
    def set_user
      @user = User.find(params[:id])
    end

    def update_params
      params.require(:user).permit(:username, :image, :password, :member, :profile, :works, :email)
    end
end


