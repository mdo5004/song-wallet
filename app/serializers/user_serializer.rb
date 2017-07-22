class UserSerializer < ActiveModel::Serializer
    attributes :username, :email
    has_many :songs, serializer: UserSongSerializer
end