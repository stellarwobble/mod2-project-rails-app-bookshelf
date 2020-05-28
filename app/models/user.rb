class User < ApplicationRecord
    has_many :user_book_reviews
    has_many :books, through: :user_book_reviews
    has_secure_password

    validates :name, presence: true
    validates :password_digest, presence: true

end
