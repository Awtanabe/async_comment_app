class CommentsController < ApplicationController
  def create
    commet = Comment.new(comment_params)

    if commet.save
      redirect_to "/products/#{params[:product_id]}"
    else
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
