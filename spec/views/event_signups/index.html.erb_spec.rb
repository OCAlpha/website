require 'spec_helper'

describe "event_signups/index" do
  before(:each) do
    assign(:event_signups, [
      stub_model(EventSignup,
        :event_id => 1,
        :name => "Name",
        :studentID => 2
      ),
      stub_model(EventSignup,
        :event_id => 1,
        :name => "Name",
        :studentID => 2
      )
    ])
  end

  it "renders a list of event_signups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
