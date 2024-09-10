namespace :import do
  desc "Import prefectures, lines, and stations"
  task csv: :environment do
    require 'csv'
 
    # 都道府県のインポート
    CSV.foreach(Rails.root.join('db/prefectures.csv'), headers: true) do |row|
      Prefecture.create!(id: row['id'], name: row['name'])
    end

    # 路線のインポート
    CSV.foreach(Rails.root.join('db/lines.csv'), headers: true) do |row|
      Line.create!(id: row['id'], name: row['name'])
    end

    # 駅のインポート
    CSV.foreach(Rails.root.join('db/stations.csv'), headers: true) do |row|
      Station.create!(id: row['id'], name: row['name'], line_id: row['line_id'], prefecture_id: row['prefecture_id'])
    end
  end
end
