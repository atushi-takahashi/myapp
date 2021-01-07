class Author < ApplicationRecord
  # リレーションの定義　多対多
  has_many :book_authors
  has_many :books, through: :book_authors
  
end
