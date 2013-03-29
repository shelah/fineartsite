require "spec_helper"

describe ArtworksController do
  describe "routing" do

    it "routes to series_artwork#show" do
      artwork = FactoryGirl.create(:artwork, :with_home_image)
      get series_artwork_path(:series_id => artwork.series_id, :id => artwork.id)
    end

  end
end
