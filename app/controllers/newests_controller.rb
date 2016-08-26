class NewestsController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user, :tags).order("created_at DESC").page(params[:page]).per(8)
    render template: "prototypes/index"
  end
end
