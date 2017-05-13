class Tag < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	has_many :songs_tags
	has_many :songs, through: :songs_tags
end
