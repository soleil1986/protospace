class PrototypesController < ApplicationController
  def index
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
    def prototype_params
      params.require(:prototype).permit(:title, :catchcopy, :concept, images_attributes: [:image, :roll]).merge(user_id: current_user.id)
    end
end
