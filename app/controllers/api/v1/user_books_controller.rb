class Api::V1::UserBooksController < ApplicationController
  skip_before_action :authorized

  before_action :find_user_book, only: [:show, :edit, :update, :destroy]

  def index
    @user_books = UserBook.all
    render json: @user_books
  end

  def show
    render json: @user_book
    #done in the before action.
  end

  def new
    @user_book = UserBook.new
  end

  def create
    @user_book = UserBook.create(user_book_params)
    if @user_book.valid?
      render json: @user_book
    else
      flash[:error] = @user_book.errors.full_messages
      render json: { error: 'failed to create user_book' }, status: :not_acceptable
    end
  end

  def edit
    #done in the before action
  end

  def update
    @user_book.update(user_book_params)
    if @user_book.valid?
      # redirect_to @user_book
      render json: @user_book
    else
      flash[:error] = @user_book.errors.full_messages
      render json: { error: 'failed to edit user_book' }, status: :not_acceptable
    end
  end

  def destroy
    @user_book.destroy
    redirect_to user_books_path
  end

  private

  def user_book_params
    params.require(:user_book).permit(:user_id, :book_id, :current, :read, :want)
  end

  def find_user_book
    @user_book = UserBook.find_by(id: params[:id])
  end
end
