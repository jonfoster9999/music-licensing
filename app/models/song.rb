class Song < ApplicationRecord


	filterrific(
	  default_filter_params: { :sorted_by => 'songs.id' },
	  available_filters: [
	  	:search_query,
	  	:sorted_by,
	    :with_artist_id,
	    :with_catalog_id,
	    :with_any_tag_ids_1,
	    :with_any_tag_ids_2,
	    :with_any_tag_ids_3,
	    :with_any_genre_ids,
	    :with_any_user_ids 
	  ]
	)


	belongs_to :artist, :required => false
	belongs_to :catalog, :required => false

	has_many :songs_tags
	has_many :tags, :through => :songs_tags
	
	has_many :songs_genres 
	has_many :genres, :through => :songs_genres 

	belongs_to :album_cover, :required => false

	has_many :user_favorites 
	has_many :favoriters, :through => :user_favorites, :source => :user
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
	scope :with_catalog_id, lambda { |catalog_id|
		if catalog_id != "Any"
			where("songs.catalog_id = '?'", catalog_id)
		end
	}

	scope :with_any_tag_ids_1, lambda { |tag_ids|
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
	scope :with_any_tag_ids_2, lambda { |tag_ids|
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
	scope :with_any_tag_ids_3, lambda { |tag_ids|
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
	scope :with_any_user_ids, lambda { |user_ids|
		if user_ids != "Any"
			user_favorites = UserFavorite.arel_table

			songs = Song.arel_table
			where(
				UserFavorite \
					.where(user_favorites[:song_id].eq(songs[:id])) \
					.where(user_favorites[:user_id].in([*user_ids].map(&:to_i))) \
					.exists
				)
		end
	}

	def tags_attributes=(attributes)
		if !attributes["0"]["name"].empty?
			tag = Tag.find_or_create_by(:name => attributes["0"]["name"])
			self.songs_tags.create(:tag_id => tag.id) if !self.tags.include?(tag)
		end
	end

	def genres_attributes=(attributes)
		if !attributes["0"]["name"].empty?
			genre = Genre.find_or_create_by(:name => attributes["0"]["name"]) 
			self.songs_genres.create(:genre_id => genre.id) if !self.genres.include?(genre)
		end
	end

	def catalog_name=(attributes)
		if !attributes.blank?
			catalog = Catalog.find_or_create_by(:name => attributes)
			self.catalog = catalog
			self.save 
		end
	end

	def artist_name
		self.artist.name
	end

	def self.artist_scope(artist_name)
		artist = Artist.find_by(:name => artist_name)
		self.where(:artist_id => artist.id)
	end
end
