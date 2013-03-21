class AddAttachmentThumbnailToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    drop_attached_file :artworks, :thumbnail
  end
end
