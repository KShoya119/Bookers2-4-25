class UsersController < ApplicationController
  def show
    @book = Book.new
    @books = Book.all
    @book.user_id = current_user.id
    @user = User.find(params[:id])
  end

  def index
  end
  
end
