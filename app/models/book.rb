class Book < ApplicationRecord
  # 本の価格が3000以上のもの
  scope :costly, -> { where("price > ?", 3000) }
　# 名前で検索するメソッド
  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%")}
　# リレーションの定義　１対多
  belongs_to :publisher
end
