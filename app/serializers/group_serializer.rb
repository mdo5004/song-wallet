class GroupSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :users, :serializer => UserGroupSerializer
end