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

  class << self
    def home_page_artwork
      results = Artwork.find_all_by_home_image(true);
      if (results.length > 0)
        results[0]
      end
    end
  end

end
