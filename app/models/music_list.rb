class MusicList < ApplicationRecord
  belongs_to :users
  has_many :songs
end