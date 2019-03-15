class Api::V1::BooksController < ApplicationController
  skip_before_action :authorized

  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: @book
    #done in the before action.
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.valid?
      render json: @book
    else
      flash[:error] = @book.errors.full_messages
      render json: { error: 'failed to create book' }, status: :not_acceptable
    end
  end

  def edit
    #done in the before action
  end

  def update
    @book.update(book_params)
    if @book.valid?
      render json: @book
    else
      flash[:error] = @book.errors.full_messages
      render json: { error: 'failed to edit book' }, status: :not_acceptable
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :average_rating, :number_of_ratings, :thumbnail, :date_published, :publisher, :subtitle, :authors, :page_count)
  end

  def find_book
    @book = Book.find_by(id: params[:id])
  end

end
