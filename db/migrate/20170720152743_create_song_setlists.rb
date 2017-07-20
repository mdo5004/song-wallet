class CreateSongSetlists < ActiveRecord::Migration[5.0]
  def change
    create_table :song_setlists do |t|
      t.references :song, foreign_key: true
      t.references :setlist, foreign_key: true

      t.timestamps
    end
  end
end
