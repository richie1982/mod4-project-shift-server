class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :title
      t.string :genre
      t.string :artwork_url

      t.timestamps
    end
  end
end
