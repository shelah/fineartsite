class Series < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :begin_date
end
