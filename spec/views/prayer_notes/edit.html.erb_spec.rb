require 'spec_helper'

describe "prayer_notes/edit" do
  before(:each) do
    @prayer_note = assign(:prayer_note, stub_model(PrayerNote,
      :user_id => 1,
      :request_id => 1,
      :content => "MyText",
      :anonymous => false,
      :public => false
    ))
  end

  it "renders the edit prayer_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prayer_notes_path(@prayer_note), :method => "post" do
      assert_select "input#prayer_note_user_id", :name => "prayer_note[user_id]"
      assert_select "input#prayer_note_request_id", :name => "prayer_note[request_id]"
      assert_select "textarea#prayer_note_content", :name => "prayer_note[content]"
      assert_select "input#prayer_note_anonymous", :name => "prayer_note[anonymous]"
      assert_select "input#prayer_note_public", :name => "prayer_note[public]"
    end
  end
end
