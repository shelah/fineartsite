require 'spec_helper'

describe Artwork do
  it "has a valid factory" do
    FactoryGirl.create(:artwork, :with_home_image).should be_valid
  end

  it "is invalid without a title" do
    @artwork = FactoryGirl.create(:artwork, :with_home_image)
    @artwork.title = nil
    @artwork.should_not be_valid
  end

  it "is invalid without a series" do
     Artwork.create(
         :title => Faker::Name.name,
         :series_id => nil,
         :image => File.new(Rails.root + 'spec/support/images/rails.png')
     ).should_not be_valid
  end

  it "is invalid without an image" do
    @artwork = FactoryGirl.create(:artwork)
    @artwork.image.destroy
    @artwork.should_not be_valid
  end

  it "is invalid without a thumbnail" do
    @artwork = FactoryGirl.create(:artwork)
    @artwork.thumbnail.destroy
    @artwork.should_not be_valid
  end

  it "should not have more than one home image" do
    artwork1 = FactoryGirl.create(:artwork, :with_home_image)
    artwork2 = FactoryGirl.create(:artwork).should be_valid
    artwork3 = FactoryGirl.create(:artwork, :with_home_image).should_not be_valid
  end
end
