class User < ApplicationRecord
    has_secure_password
    has_many :user_songs
    has_many :songs, through: :user_songs
    has_many :user_friends
    has_many :friends, through: :user_friends, :class_name => "User", :foreign_key => "friend_id"
    has_many :user_groups
    has_many :groups, through: :user_groups
    has_many :user_setlists
    has_many :setlists, through: :user_setlists
    
    def name
        return "#{self.first_name || ''} #{self.last_name || ''}"
    end
end
