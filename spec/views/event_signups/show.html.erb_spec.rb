require 'spec_helper'

describe "event_signups/show" do
  before(:each) do
    @event_signup = assign(:event_signup, stub_model(EventSignup,
      :event_id => 1,
      :name => "Name",
      :studentID => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
  end
end
