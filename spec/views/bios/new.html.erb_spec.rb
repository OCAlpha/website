require 'spec_helper'

describe "bios/new" do
  before(:each) do
    assign(:bio, stub_model(Bio,
      :hometown => "MyString",
      :favorite_verse => "MyString",
      :major => "MyString",
      :favorite_breakfast => "MyString",
      :favorite_superhero => "MyString",
      :grow_up => "MyString",
      :catchphrase => "MyString"
    ).as_new_record)
  end

  it "renders new bio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bios_path, :method => "post" do
      assert_select "input#bio_hometown", :name => "bio[hometown]"
      assert_select "input#bio_favorite_verse", :name => "bio[favorite_verse]"
      assert_select "input#bio_major", :name => "bio[major]"
      assert_select "input#bio_favorite_breakfast", :name => "bio[favorite_breakfast]"
      assert_select "input#bio_favorite_superhero", :name => "bio[favorite_superhero]"
      assert_select "input#bio_grow_up", :name => "bio[grow_up]"
      assert_select "input#bio_catchphrase", :name => "bio[catchphrase]"
    end
  end
end
