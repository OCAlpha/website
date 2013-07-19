require 'spec_helper'

describe "prayer_followups/edit" do
  before(:each) do
    @prayer_followup = assign(:prayer_followup, stub_model(PrayerFollowup,
      :prayer_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit prayer_followup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prayer_followups_path(@prayer_followup), :method => "post" do
      assert_select "input#prayer_followup_prayer_id", :name => "prayer_followup[prayer_id]"
      assert_select "textarea#prayer_followup_content", :name => "prayer_followup[content]"
    end
  end
end
