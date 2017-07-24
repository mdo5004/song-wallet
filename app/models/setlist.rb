class Setlist < ApplicationRecord
    has_many :song_setlists, dependent: :destroy
    has_many :songs, through: :song_setlists
end
