class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

#   def update
#     if @post.update(post_params)
#       redirect_to posts_path
#     else
#       render :edit
#     end
#   end 

#   def new
#     # creates a sub in memory 
#     @post = Post.new 
#     # renders the sub form 
#     render partial: "form"
#   end

  
#     def create
#       @post = Post.create(post_params)
  
#       if @post.save 
#         redirect_to root_path
#       else
#         render :new
#       end 
  
#     end 


#   def show

#   end

#   def edit
#   end

#   def destroy
#     @post.destroy
#     redirect_to posts_path
#   end 


# private

# def post_params
#   params.require(:post).permit(:body, :user_id)
# end

# def set_account
#   @post = current_user.posts.find(params[:id])
# end

end

