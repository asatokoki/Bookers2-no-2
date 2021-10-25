class BooksController < ApplicationController


def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
end

def index
    @books = Book.all
    @book = Book.new
    @user = current_user

end

def show
    @post = Book.find(params[:id])
    @user = @post.user
    @book = Book.new
end

def destroy

end

def edit

end


def update

    redirect_to book_path(@book.id)
end

private

  def book_params
  params.require(:book).permit(:title, :body)
  end


end
