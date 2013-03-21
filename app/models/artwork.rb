class Artwork < ActiveRecord::Base
  attr_accessible :height, :image, :img_height, :img_width, :medium, :series_id, :thumbnail, :title, :width, :year
  belongs_to :series

  validates_presence_of :title
  has_attached_file :image
  has_attached_file :thumbnail
end
