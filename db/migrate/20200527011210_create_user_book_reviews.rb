class CreateUserBookReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :user_book_reviews do |t|
      t.string :review
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
