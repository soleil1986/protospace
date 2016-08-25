class PopularsController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).all.order("likes_count DESC").page(params[:page]).per(8)
  end
end
