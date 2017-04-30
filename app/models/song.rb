class Song < ApplicationRecord

	filterrific(
	  default_filter_params: { :sorted_by => 'songs.id' },
	  available_filters: [
	  	:search_query,
	  	:sorted_by,
	    :with_artist_id,
	    :with_any_tag_ids
	  ]
	)


	belongs_to :artist
	has_many :songs_tags
	has_many :tags, :through => :songs_tags

	scope :sorted_by, lambda {|query|
		order(query)
	}

	scope :with_artist_id, lambda { |artist_id|
		if artist_id != "Any"
			where("songs.artist_id = '?'", artist_id)
		end
	}

	scope :with_any_tag_ids, lambda { |tag_ids|
		if tag_ids != "Any"
			songs_tags = SongsTag.arel_table

			songs = Song.arel_table
			where(
				SongsTag \
					.where(songs_tags[:song_id].eq(songs[:id])) \
					.where(songs_tags[:tag_id].in([*tag_ids].map(&:to_i))) \
					.exists
				)
		end
	}


	def artist_name
		self.artist.name
	end
end
