class BookContentsController < ApplicationController
  before_action :book

  def index
    @book_contents = @book.book_contents
    if params[:content].present?
      @book_content = BookContent.find params[:content]
    else
      @book_content = @book_contents.first
    end
  end

  def show
    @book_content = BookContent.find params[:id]
  end  

  def book
    @book = Book.find params[:book_id]
  end
end