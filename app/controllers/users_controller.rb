class UsersController < ApplicationController
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    @book.user_id = current_user.id
  end
  
  def edit
  end

  def index
  end
  
end
