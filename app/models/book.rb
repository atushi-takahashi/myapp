class Book < ApplicationRecord
  # 本の価格が3000以上のもの
  scope :costly, -> { where("price > ?", 3000) }

  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%")}
end
