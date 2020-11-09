class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
