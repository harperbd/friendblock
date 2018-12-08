class UsersController < ApplicationController
    def index
      @users = current_user.users
    end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = current_user.users.new(user_params)
    if @user.save
      flash[:success] = "User Created"
      redirect_to users_path
    else
      flash[:error] = "error #{@user.errors.full_messages.join("\n")}"
      render :new
    end
  end
end
