class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show]

  def index
    @prototypes = Prototype.includes(:user).all
  end

  def show
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

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, images_attributes: [:image, :roll]).merge(user_id: current_user.id)
  end
end
