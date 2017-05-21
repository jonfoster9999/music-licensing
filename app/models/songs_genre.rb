class SongsGenre < ApplicationRecord
	belongs_to :song, :required => false
	belongs_to :genre, :required => false 
end
