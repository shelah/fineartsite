require 'spec_helper'

describe Artwork do
  before(:each) do
    @series = Series.create(:name => 'MySeries', :begin_date => Date.new)
    @valid_attributes = {
        :title => 'MyArtwork',
        :series_id => @series.id
    }
  end

  it "should create a new instance given valid attributes" do
    Artwork.create!(@valid_attributes)
  end
end
