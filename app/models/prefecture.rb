class Prefecture < ApplicationRecord
  has_many :posts
  has_many :stations
  has_many :lines, through: :stations
end
