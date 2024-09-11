class AddLineIdAndPrefectureIdToStations < ActiveRecord::Migration[7.1]
  def change
    add_reference :stations, :line, null: false, foreign_key: true
    add_reference :stations, :prefecture, null: false, foreign_key: true
  end
end
