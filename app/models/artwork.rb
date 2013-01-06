class Artwork < ActiveRecord::Base
  validates_presence_of :title
  has_one :series
end
