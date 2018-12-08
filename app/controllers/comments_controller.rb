class CommentsController < ApplicationController
  before_action :set_comment, except: [:new, :create]
  before_action :set_post
  def index
    @comment = current_user.comments
  end

  def show
  end

  def edit
  end

 

  # get
  def new
    @comment = Comment.new
  end

  # post
  def create
    @comment = @current_user.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Post Created"
      redirect_to posts_path
    else
      flash[:error] = "error #{@commentt.errors.full_messages.join("\n")}"
      render :new
    end
  end 

 private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end
  
  def set_comment
    @comment = current_user.comments.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
