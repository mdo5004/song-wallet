class Setlist < ApplicationRecord
    has_many :song_setlists
    has_many :songs, through: :song_setlists
end
