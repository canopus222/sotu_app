FactoryBot.define do
  factory :post do
    # 画像ファイルはシンプルなサンプルデータを指定します
    photo_image { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/files/sample_image.jpg'), 'image/jpeg') }

    # 必須項目を定義
    location { "Tokyo Station" }
    comment { "This is a sample comment for testing purposes." }

    # 関連を定義
    association :user
    association :prefecture
    association :station
    association :line
  end
end
