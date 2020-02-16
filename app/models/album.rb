class Album < ApplicationRecord
  has_one :artists
  has_many :songs
end