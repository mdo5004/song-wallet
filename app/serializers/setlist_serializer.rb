class SetlistSerializer < ActiveModel::Serializer
    attributes :name,:id
    has_many :songs, serializer: SetlistSongSerializer
end