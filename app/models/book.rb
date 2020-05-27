class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :user_book_reviews
  has_many :users, through: :user_book_reviews
end
