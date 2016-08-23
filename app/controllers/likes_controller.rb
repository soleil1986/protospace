class LikesController < ApplicationController
  def like
    @prototype = Prototype.find(params[:prototype_id])
    like = current_user.likes.build(prototype_id: @prototype.id)
    like.save
    @prototype.reload
  end

  def unlike
    @prototype = Prototype.find(params[:prototype_id])
    like = current_user.likes.find_by(prototype_id: @prototype.id)
    like.destroy
    @prototype.reload
  end
end
