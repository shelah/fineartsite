class AddHomeImageToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :home_image, :boolean, :null => false, :default => false
  end
end
