class Favorite < ApplicationRecord

  # Ransackで検索可能な関連を指定
  def self.ransackable_associations(auth_object = nil)
    ["post"]  # 必要な関連を追加
  end

  belongs_to :post
  belongs_to :user

  validates :user_id, uniqueness: { scope: :post_id }
end
