class LikesController < ApplicationController
  def like
    @prototype = Prototype.find(params[:prototype_id])
    like = current_user.likes.build(prototype_id: @prototype.id)
    like.save
  end

  def unlike
    @picture = Prototype.find(params[:prototype_id])
    like = current_user.likes.find_by(prototype_id: @prototype.id)
    like.destroy
  end
end
