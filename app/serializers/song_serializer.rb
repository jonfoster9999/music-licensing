class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :lyrics
  belongs_to :artist

  def lyrics
  	object.lyrics.gsub(/[\n]/, "<br>")
  end
end
