class User < ApplicationRecord
  authenticates_with_sorcery!

  mount_uploader :avatar, AvatarUploader

  # Google 認証
  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications

  # ユーザーが複数の投稿を持つ（Postモデルとの関連）
  has_many :posts, dependent: :destroy  # ユーザーが削除されたら関連する投稿も削除される

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: true
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :password, presence: true, on: :reset_password
  validates :password_confirmation, presence: true, on: :reset_password

  def own?(object)
    id == object&.user_id
  end
end
