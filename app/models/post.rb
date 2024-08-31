class Post < ApplicationRecord
  # photo_imageという属性にファイルアップローダーをマウント（CarrierWaveを使用）
  mount_uploader :photo_image, PhotoImageUploader

  # モデル間の関連を定義
  belongs_to :user  # PostはUserに属している
  belongs_to :prefecture  # PostはPrefecture（都道府県）に属している
  belongs_to :station  # PostはStation（駅名）に属している
  belongs_to :line  # PostはLine（路線名）に属している
  has_many :favorites, dependent: :destroy  # Postは多くのFavoriteを持ち、Postが削除されたら関連するFavoriteも削除される

  # バリデーション（データの保存前にチェックするルール）
  validates :line, presence: true  # 路線名は必須
  validates :photo_image, presence: true  # 画像のアップロードは必須
  validates :station, presence: true  # 駅名は必須
  validates :location, presence: true  # 撮影場所は必須
  validates :prefecture, presence: true  # 都道府県は必須
  validates :shooting_time, presence: true  # 撮影時間は必須
  validates :comment, presence: true, length: { maximum: 250 }  # コメントは必須で、最大250文字まで

  # 検索用のスコープ
  scope :search_by_prefecture, ->(prefecture_id) { where(prefecture_id: prefecture_id) if prefecture_id.present? }
  # 都道府県IDで検索

  scope :search_by_station, ->(station_name) { where('station.name LIKE ?', "%#{station_name}%") if station_name.present? }
  # 駅名で部分一致検索

  scope :search_by_line, ->(line_name) { where('line.name LIKE ?', "%#{line_name}%") if line_name.present? }
  # 路線名で部分一致検索
end
