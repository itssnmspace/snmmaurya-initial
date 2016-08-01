class BooksController < ApplicationController
  def index
    @books = Book.active
  end
end