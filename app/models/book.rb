class Book < ApplicationRecord
  # 本の価格が3000以上のもの
  scope :costly, -> { where("price > ?", 3000) }
　# 名前で検索するメソッド
  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%")}
　# リレーションの定義　多対１
  belongs_to :publisher
  # リレーションの定義　多対多
  has_many :book_authors
  has_many :authors, through: :book_authors
  
end
