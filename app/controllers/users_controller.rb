class UsersController < ApplicationController
  def show
    @book = Book.new
    @books = Book.all
    @user = User.find(params[:id])
  end

  def index
  end
  
end
