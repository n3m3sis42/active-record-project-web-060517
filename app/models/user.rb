class User < ActiveRecord::Base
  has_many :book_users
  has_many :books, through: :book_users


  def check_out_book(book, due_date)
    self.books << book
    self.book_users[0].due_date = due_date
  end

  def return_book(book)
    self.book_users[0].returned = true
  end

end
