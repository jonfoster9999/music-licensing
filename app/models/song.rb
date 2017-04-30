class Song < ApplicationRecord

	filterrific(
	  default_filter_params: { :sorted_by => 'songs.id' },
	  available_filters: [
	  	:search_query,
	  	:sorted_by,
	    :with_artist_id
	  ]
	)


	belongs_to :artist
	has_many :songs_tags
	has_many :tags, :through => :songs_tags

	scope :sorted_by, lambda {|query|
		order(query)
	}

	scope :with_artist_id, lambda { |artist_id|
		where("songs.artist_id = '?'", artist_id)
	}


	def artist_name
		self.artist.name
	end
end
