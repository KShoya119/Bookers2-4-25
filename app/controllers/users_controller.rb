class UsersController < ApplicationController
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    @book.user_id = current_user.id
  end
  
  def edit
   @user = User.find(params[:id])
    if @user == current_user
      render "edit"
    else
      redirect_to user_path(current_user.id)
    end
  end
  
  def update
   @user = User.find(params[:id])
   @user.update(user_params)
   redirect_to user_path(current_user.id)
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end
