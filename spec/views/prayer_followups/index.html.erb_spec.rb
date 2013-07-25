require 'spec_helper'

describe "prayer_followups/index" do
  before(:each) do
    assign(:prayer_followups, [
      stub_model(PrayerFollowup,
        :prayer_id => 1,
        :content => "MyText"
      ),
      stub_model(PrayerFollowup,
        :prayer_id => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of prayer_followups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
