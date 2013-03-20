require 'spec_helper'

describe "artworks/new" do
  before(:each) do
    assign(:artwork, stub_model(Artwork,
      :title => "MyString",
      :width => 1.5,
      :height => 1.5,
      :img_width => 1,
      :img_height => 1
    ).as_new_record)
  end

  it "renders new artwork form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artworks_path, "post" do
      assert_select "input#artwork_title[name=?]", "artwork[title]"
      assert_select "input#artwork_width[name=?]", "artwork[width]"
      assert_select "input#artwork_height[name=?]", "artwork[height]"
      assert_select "input#artwork_img_width[name=?]", "artwork[img_width]"
      assert_select "input#artwork_img_height[name=?]", "artwork[img_height]"
    end
  end
end
