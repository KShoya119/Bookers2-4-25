class UsersController < ApplicationController
  before_action :move_to_signed_in
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
      redirect_to current_user
    end
  end
  
  def update
   @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user.id), notice: 'You have updated user successfully.'
    else
      render :edit
    end
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
  
  def move_to_signed_in
    unless user_signed_in?
      redirect_to  '/users/sign_in'
    end
  end
  
end
