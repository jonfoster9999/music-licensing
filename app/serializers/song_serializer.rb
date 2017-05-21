class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :lyrics
  belongs_to :artist
end
