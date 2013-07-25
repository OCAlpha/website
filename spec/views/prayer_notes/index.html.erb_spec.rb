require 'spec_helper'

describe "prayer_notes/index" do
  before(:each) do
    assign(:prayer_notes, [
      stub_model(PrayerNote,
        :user_id => 1,
        :request_id => 2,
        :content => "MyText",
        :anonymous => false,
        :public => false
      ),
      stub_model(PrayerNote,
        :user_id => 1,
        :request_id => 2,
        :content => "MyText",
        :anonymous => false,
        :public => false
      )
    ])
  end

  it "renders a list of prayer_notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
