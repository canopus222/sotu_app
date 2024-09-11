# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'

# 都道府県のデータを読み込む
CSV.foreach(Rails.root.join('db/prefectures.csv'), headers: true) do |row|
  Prefecture.create(id: row['id'], name: row['name'])
end

# 路線のデータを読み込む
CSV.foreach(Rails.root.join('db/lines.csv'), headers: true) do |row|
  Line.create(id: row['id'], name: row['name'])
end

# 駅のデータを読み込む
CSV.foreach(Rails.root.join('db/stations.csv'), headers: true) do |row|
  Station.create(
    id: row['id'],
    name: row['name'],
    line_id: row['line_id'],
    prefecture_id: row['prefecture_id']
  )
end
