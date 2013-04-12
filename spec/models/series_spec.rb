require 'spec_helper'

describe Series do

  it "has a valid factory" do
    FactoryGirl.create(:series).should be_valid
  end

  it "is invalid without a name" do
    FactoryGirl.build(:series, :name => nil, :begin_date => Date.current).should_not be_valid
  end

  it "is invalid without a begin date" do
    FactoryGirl.build(:series, :name => Faker::Name.name, :begin_date => nil).should_not be_valid
  end

  it "has an end date that is equal to or after the begin date if it has an end date at all" do
    @series = FactoryGirl.create(:series)
    @series.end_date = @series.begin_date.years_ago(1)
    @series.should_not be_valid

    @series.end_date = @series.begin_date
    @series.should be_valid
  end

  it "can find the home page artwork for all series and fails gracefully if there is none" do
    @home_page_artwork = Series.home_page_artwork
    @home_page_artwork.should be_nil
    FactoryGirl.create(:artwork, :with_home_image)
    @home_page_artwork = Series.home_page_artwork
    @home_page_artwork.should_not be_nil
    @home_page_artwork.image.should_not be_nil
    @home_page_artwork.image_file_name.should_not be_nil
    @home_page_artwork.image_file_name.ends_with?('rails.png').should be_true
    @home_page_artwork.img_width.equal?(50).should be_true
    @home_page_artwork.img_height.equal?(64).should be_true
  end
end
