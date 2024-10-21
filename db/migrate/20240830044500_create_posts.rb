class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true  # ユーザーの外部キー
      t.references :prefecture, null: false, foreign_key: true  # 都道府県の外部キー
      t.references :station, null: false, foreign_key: true  # 駅名の外部キー
      t.references :line, null: false, foreign_key: true  # 路線名の外部キー

      t.string :photo_image, null: false  # 画像のファイル名を格納するカラム
      t.string :location, null: false  # 撮影場所を格納するカラム
      t.datetime :shooting_time, null: false  # 撮影時間を格納するカラム
      t.text :comment, null: false  # コメントを格納するカラム

      t.timestamps
    end
  end
end
