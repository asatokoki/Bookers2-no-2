class UsersController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
    @users = User.all
  end

  def show
    @books = Book.all
    @book = Book.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to  user_path(@user.id)

  end

  private
  def user_params
  	params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
