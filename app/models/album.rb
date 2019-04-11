class Album < ApplicationRecord
  belongs_to :artist
  has_manny :songs
end
