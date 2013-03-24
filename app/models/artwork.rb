class Artwork < ActiveRecord::Base
  attr_accessible :height, :image, :img_height, :img_width, :medium, :series_id, :thumbnail, :title, :width, :year
  belongs_to :series

  has_attached_file :image
  has_attached_file :thumbnail

  validates_presence_of :title
  validates_associated :series
  validates_attachment_presence :image
  validates_attachment_presence :thumbnail
end
