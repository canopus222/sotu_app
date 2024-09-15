class CreateBadges < ActiveRecord::Migration[7.1]
  def change
    create_table :badges do |t|
      t.string :name, null: false
      t.text :description
      t.references :user, null: false, foreign_key: true  # ユーザーとの関連付け

      t.timestamps
    end
  end
end

