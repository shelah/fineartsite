class Series < ActiveRecord::Base
  has_many :artworks

  validates_presence_of :name
  validates_presence_of :begin_date

  accepts_nested_attributes_for :artworks
end
