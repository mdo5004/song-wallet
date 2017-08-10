class Setlist < ApplicationRecord
    has_many :song_setlists, dependent: :destroy
    has_many :songs, through: :song_setlists
    has_many :user_setlists
    has_many :users, through: :user_setlists
    has_many :group_setlists
    has_many :groups, through: :group_setlists
        
    def songs_attributes=(song_attrs)
        self.songs.clear
        song_attrs[:song_ids].each do |song_attr|
            self.songs << Song.find(song_attr) unless song_attr.empty?
        end
    end
end
