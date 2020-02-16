class Song < ApplicationRecord
  belongs_to :music_lists
  has_one :album
end