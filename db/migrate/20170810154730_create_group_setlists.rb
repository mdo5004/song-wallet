class CreateGroupSetlists < ActiveRecord::Migration[5.0]
  def change
    create_table :group_setlists do |t|
      t.integer :setlist_id
      t.integer :group_id

      t.timestamps
    end
  end
end
