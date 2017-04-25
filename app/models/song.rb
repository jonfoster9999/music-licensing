class Song < ApplicationRecord
	belongs_to :artist

	def artist_name
		self.artist.name
	end
end
