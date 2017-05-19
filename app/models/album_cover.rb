class AlbumCover < ApplicationRecord
	has_many :songs
	accepts_nested_attributes_for :songs

	def self.read_covers 
		dir = Rails.root + "app" + "assets" + "covers"
		Dir.entries(dir).select {|s| s.match(/\.(jpe?g|png|gif|bmp)$/)}
	end

	def self.import
		cover_names = self.read_covers
		cover_names.each do |cover_name|
			AlbumCover.find_or_create_by(:file_name => cover_name)
		end
	end
end
