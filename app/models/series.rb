class Series < ActiveRecord::Base
  has_many :artworks
  attr_accessible :name, :begin_date, :end_date, :artworks

  validates_presence_of :name
  validates_presence_of :begin_date
  validate :valid_dates

  accepts_nested_attributes_for :artworks

  def valid_dates
    if !end_date.blank? and begin_date > end_date
      self.errors.add :begin_date, ' has to be after end date'
    end
  end
end
