class Post < ApplicationRecord
  # photo_imageという属性にファイルアップローダーをマウント（CarrierWaveを使用）
  mount_uploader :photo_image, PhotoImageUploader

  # Ransackで検索可能な属性（カラム）を指定
  def self.ransackable_attributes(auth_object = nil)
    ["comment", "content", "location", "photo_image", "prefecture_id", "shooting_time", "station_id", "line_id", "user_id"]
  end

  # Ransackで検索可能な関連を指定
  def self.ransackable_associations(auth_object = nil)
    ["user", "prefecture", "station", "line", "favorites"]
  end

  # モデル間の関連を定義
  belongs_to :user  # PostはUserに属している
  belongs_to :prefecture  # PostはPrefecture（都道府県）に属している。都道府県は必須
  belongs_to :station  # PostはStation（駅名）に属している。駅名は必須
  belongs_to :line  # PostはLine（路線名）に属している。路線名は必須
  has_many :favorites, dependent: :destroy  # Postは多くのFavoriteを持ち、Postが削除されたら関連するFavoriteも削除される

  # バリデーション（データの保存前にチェックするルール）
  validates :photo_image, presence: true  # 画像のアップロードは必須
  validates :location, presence: true  # 撮影場所は必須
  validates :shooting_time, presence: true  # 撮影時間は必須
  validates :comment, presence: true, length: { maximum: 250 }  # コメントは必須で、最大250文字まで

end
