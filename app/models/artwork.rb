class Artwork < ActiveRecord::Base
  attr_accessible :height, :image, :img_height, :img_width, :home_image, :medium, :series_id, :thumbnail, :title, :width, :year
  belongs_to :series

  has_attached_file :image
  has_attached_file :thumbnail

  validates_presence_of :title
  validates_associated :series
  validates_attachment_presence :image
  validates_attachment_presence :thumbnail
  validate :home_image_selected?

  def home_image_selected?
    results = Artwork.find_all_by_home_image(true)
    # Technically we shouldn't allow zero artworks selected but we have to in order
    # to make it possible to change which one you select. You have to set the
    # current one to false before you can set another to true.
    if results.length > 1
       errors.add(:base, "Please choose only one artwork for the home page.")
    end
  end
end
