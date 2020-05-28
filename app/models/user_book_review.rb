class UserBookReview < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def user_name=(name)
    self.user = User.find_or_create_by(name: name)
  
  end

  def user_name
    self.user ? self.user.name : nil
  end

  def book_name=(name)
    self.book = Book.find_or_create_by(name: name)
  end

  def book_name
    self.book ? self.book.title : nil
  end





end
