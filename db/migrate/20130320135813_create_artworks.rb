class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.float :width
      t.float :height
      t.integer :img_width
      t.integer :img_height
      t.date :year
      t.references :series

      t.timestamps
    end
  end
end
