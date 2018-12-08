class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = current_user.posts
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = "Post Created"
      redirect_to posts_path
    else
      flash[:error] = "error #{@post.errors.full_messages.join("\n")}"
      render :new
    end
  end

private

def post_params
  params.require(:post).permit(:body, :user_id)
end

def set_account
  @post = current_user.posts.find(params[:id])
end

end

