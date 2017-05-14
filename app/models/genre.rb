class Genre < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	has_many :songs_genres 
	has_many :songs, through: :songs_genres
end
