class Station < ApplicationRecord
  # Ransackで検索可能な属性（カラム）を指定
  def self.ransackable_attributes(auth_object = nil)
    ['name']
  end

  # 'name'カラムで部分一致検索を行うスコープを定義
  scope :search_by_name, ->(query) { where('name LIKE ?', "%#{query}%") }

  has_many :posts
end
