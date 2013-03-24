require 'spec_helper'

describe SeriesController do
  describe "GET #index" do
    it "populates an array of series" do
      series = FactoryGirl.create(:series)
      get :index
      assigns(:series_plural).should eq([series])
    end

    it "renders the index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested series to @series" do
      series = FactoryGirl.create(:series)
      get :show, id: series
      assigns(:series).should eq(series)
    end
  end

end
