class SongSerializer < ActiveModel::Serializer
    attributes :title, :artist, :content, :id
end