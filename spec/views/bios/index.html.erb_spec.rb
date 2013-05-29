require 'spec_helper'

describe "bios/index" do
  before(:each) do
    assign(:bios, [
      stub_model(Bio,
        :hometown => "Hometown",
        :favorite_verse => "Favorite Verse",
        :major => "Major",
        :favorite_breakfast => "Favorite Breakfast",
        :favorite_superhero => "Favorite Superhero",
        :grow_up => "Grow Up",
        :catchphrase => "Catchphrase"
      ),
      stub_model(Bio,
        :hometown => "Hometown",
        :favorite_verse => "Favorite Verse",
        :major => "Major",
        :favorite_breakfast => "Favorite Breakfast",
        :favorite_superhero => "Favorite Superhero",
        :grow_up => "Grow Up",
        :catchphrase => "Catchphrase"
      )
    ])
  end

  it "renders a list of bios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hometown".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Verse".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Breakfast".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Superhero".to_s, :count => 2
    assert_select "tr>td", :text => "Grow Up".to_s, :count => 2
    assert_select "tr>td", :text => "Catchphrase".to_s, :count => 2
  end
end
