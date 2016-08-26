class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :destroy, :edit, :update]

  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(8)
  end

  def show
    @comment = Comment.new
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path(current_user), notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path(current_user), danger: "prototype was successfully destroied"
  end

  def edit
  end

  def update
    if @prototype.update(update_prototype_params)
      redirect_to root_path(current_user), info: "prototype was successfully updated"
    else
      render :edit
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, images_attributes: [:image, :roll]).merge(user_id: current_user.id, tag_list: params[:prototype][:tag])
  end

  def update_prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, images_attributes: [:id, :image, :roll]).merge(user_id: current_user.id, tag_list: params[:prototype][:tag])
  end
end

