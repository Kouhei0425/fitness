class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(10)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
