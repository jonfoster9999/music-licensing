class SongsTag < ApplicationRecord
	belongs_to :song, :required => false
	belongs_to :tag, :required => false
end
