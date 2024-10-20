require 'rails_helper'

RSpec.describe Post, type: :model do
  # Postモデルのインスタンスが正しく作成できるか確認
  it "is valid with valid attributes" do
    post = FactoryBot.build(:post)
    expect(post).to be_valid
  end

  # バリデーションのテスト
  it "is not valid without a photo_image" do
    post = FactoryBot.build(:post, photo_image: nil)
    expect(post).to_not be_valid
  end

  it "is not valid without a location" do
    post = FactoryBot.build(:post, location: nil)
    expect(post).to_not be_valid
  end

  it "is not valid without a comment" do
    post = FactoryBot.build(:post, comment: nil)
    expect(post).to_not be_valid
  end

  it "is not valid if the comment is longer than 250 characters" do
    long_comment = "a" * 251
    post = FactoryBot.build(:post, comment: long_comment)
    expect(post).to_not be_valid
  end
end
