class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to controller: :prototypes, action: :show, id: params[:prototype_id]
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(prototype_id: params[:prototype_id], user_id: current_user.id)
  end
end

