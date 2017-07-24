class User < ApplicationRecord
    has_secure_password
    has_many :user_songs, dependent: :destroy
    has_many :songs, through: :user_songs
    has_many :user_friends, dependent: :destroy
    has_many :friends, through: :user_friends, :class_name => "User", :foreign_key => "friend_id"
end
