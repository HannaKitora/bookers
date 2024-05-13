class BooksController < ApplicationController
 
  def new
    @book = Book.new
  end
 
  def create
    @book = Book.new(book_params)
    
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      flash.now[:alart] = "2 errors prohibited this book from being saved:Title can't be blank Body can't be blank"
      @books = Book.all
      render :index
    end
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
    @book = Book.new #追加
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  def start
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
