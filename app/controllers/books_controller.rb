class BooksController < ApplicationController


  def create
    book = Book.new(book_params)
    book.save
    flash[:notion] = "Book was successfully created."
    redirect_to book_path(book.id)
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notion] = "Book was successfully updated."
    redirect_to book_path(book.id)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notion] = "Book was successfully destroyed."
    redirect_to '/books'
  end

  private
  def book_params
    #
    params.require(:book).permit(:title, :body)
  end
end
