class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.string :released_at
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
