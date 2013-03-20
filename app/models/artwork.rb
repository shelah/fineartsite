class Artwork < ActiveRecord::Base
  attr_accessible :height, :img_height, :img_width, :title, :width, :year, :series_id
  belongs_to :series

  validates_presence_of :title
end
