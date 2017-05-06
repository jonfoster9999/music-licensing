class Genre < ApplicationRecord
	has_many :songs_genres 
	has_many :songs, through: :songs_genres
end
