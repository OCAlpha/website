require 'spec_helper'

describe "prayer_followups/new" do
  before(:each) do
    assign(:prayer_followup, stub_model(PrayerFollowup,
      :prayer_id => 1,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new prayer_followup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prayer_followups_path, :method => "post" do
      assert_select "input#prayer_followup_prayer_id", :name => "prayer_followup[prayer_id]"
      assert_select "textarea#prayer_followup_content", :name => "prayer_followup[content]"
    end
  end
end
