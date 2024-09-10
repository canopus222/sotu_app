class Line < ApplicationRecord
  # Ransackで検索可能な属性（カラム）を指定
  def self.ransackable_attributes(auth_object = nil)
    ['name']
  end

  # 名前による部分一致検索を実装したスコープ
  scope :search_by_name, ->(query) { where('name LIKE ?', "%#{query}%") }

  has_many :posts
  has_many :stations, dependent: :destroy  # 路線が削除されたら関連する駅も削除
end
