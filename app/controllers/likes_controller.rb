class LikesController < ApplicationController
  def index
    @my_likes = Like.where(user: current_user)
  end

  def create
    @like = Like.create(user: current_user, question_id: params[:question_id])
    redirect_to questions_path
  end

  def delete
    Like.destroy(params[:like_id])
  end
end
