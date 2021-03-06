class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to  posts_path # コメントと結びつくツイートの詳細画面に遷移する
  end

  

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
