require 'spec_helper'

describe "Artworks" do
  describe "GET /series_artworks" do
    it "should bring you to the page for the series and artwork" do
      @artwork = FactoryGirl.create(:artwork, :with_home_image)
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get series_artwork_path(:series_id => @artwork.series_id, :id => @artwork.id)
      response.status.should be(200)
    end
  end
end
