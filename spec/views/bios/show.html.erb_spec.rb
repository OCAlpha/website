require 'spec_helper'

describe "bios/show" do
  before(:each) do
    @bio = assign(:bio, stub_model(Bio,
      :hometown => "Hometown",
      :favorite_verse => "Favorite Verse",
      :major => "Major",
      :favorite_breakfast => "Favorite Breakfast",
      :favorite_superhero => "Favorite Superhero",
      :grow_up => "Grow Up",
      :catchphrase => "Catchphrase"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hometown/)
    rendered.should match(/Favorite Verse/)
    rendered.should match(/Major/)
    rendered.should match(/Favorite Breakfast/)
    rendered.should match(/Favorite Superhero/)
    rendered.should match(/Grow Up/)
    rendered.should match(/Catchphrase/)
  end
end
