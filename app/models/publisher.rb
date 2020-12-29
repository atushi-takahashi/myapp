class Publisher < ApplicationRecord
  # リレーションの定義 １対多
  has_many :books
end
