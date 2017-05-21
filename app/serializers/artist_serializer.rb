class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :songs
end
