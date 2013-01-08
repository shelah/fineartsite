class Artwork < ActiveRecord::Base
  belongs_to :series

  validates_presence_of :title
#  validates_associated :series
end
