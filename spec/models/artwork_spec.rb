require 'spec_helper'

describe Artwork do
  it "has a valid factory" do
    FactoryGirl.create(:artwork).should be_valid
  end

  it "is invalid without a title" do
    @artwork = FactoryGirl.create(:artwork)
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
end
