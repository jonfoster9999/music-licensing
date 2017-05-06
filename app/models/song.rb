class Song < ApplicationRecord


	filterrific(
	  default_filter_params: { :sorted_by => 'songs.id' },
	  available_filters: [
	  	:search_query,
	  	:sorted_by,
	    :with_artist_id,
	    :with_any_tag_ids,
	    :with_any_genre_ids 
	  ]
	)


	belongs_to :artist


	has_many :songs_tags
	has_many :tags, :through => :songs_tags
	
	has_many :songs_genres 
	has_many :genres, :through => :songs_genres 


	accepts_nested_attributes_for :tags
	accepts_nested_attributes_for :genres

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
	scope :with_any_genre_ids, lambda { |genre_ids|
		if genre_ids != "Any"
			songs_genres = SongsGenre.arel_table

			songs = Song.arel_table
			where(
				SongsGenre \
					.where(songs_genres[:song_id].eq(songs[:id])) \
					.where(songs_genres[:genre_id].in([*genre_ids].map(&:to_i))) \
					.exists
				)
		end
	}

	def tags_attributes=(attributes)
		if !attributes["0"]["name"].empty?
			tag = Tag.create(:name => attributes["0"]["name"])
			self.songs_tags.create(:tag_id => tag.id)
		end
	end

	def genres_attributes=(attributes)
		if !attributes["0"]["name"].empty?
			genre = Genre.create(:name => attributes["0"]["name"])
			self.songs_genres.create(:genre_id => genre.id)
		end
	end

	def artist_name
		self.artist.name
	end
end
