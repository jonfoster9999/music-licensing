class MusicImporter < ApplicationRecord

	def self.read_songs 
		dir = Rails.root + "app" + "assets" + "songs"
		Dir.entries(dir).select { |song| song.include?("-") }
	end

	def self.import
		songs = self.read_songs
		songs.each do |song|
			title = song.split(" - ")[1].split(".")[0]
			artist_name = song.split(" - ")[0]
			artist = Artist.find_or_create_by(:name => artist_name)
			song = Song.find_or_create_by(:title => title) do |song|
				song.artist = artist
			end
		end
	end
end
