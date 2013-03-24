require 'spec_helper'

describe ArtworksController do
  describe "GET #show" do
    it "renders the series_artwork #show view" do
      artwork = FactoryGirl.create(:artwork)
      get :show, id: artwork, :series_id => artwork.series_id
      assigns(:artwork).should eq(artwork)
    end

    it "renders the #show view" do
      artwork = FactoryGirl.create(:artwork)
      get :show, id: artwork, :series_id => artwork.series_id
      response.should render_template :show
    end

  end
end
