class CreatePrefectures < ActiveRecord::Migration[7.1]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false
    end
  end
end
