class CreateArtworks < ActiveRecord::Migration
  def self.up
    create_table :artworks do |t|
      t.string :title
      t.float :width
      t.float :height
      t.integer :img_width
      t.integer :img_height
      t.date :year
      t.string :img_file
      t.string :thumbnail_file
      t.references :series

      t.timestamps
    end
  end

  def self.down
    drop_table :artworks
  end
end
