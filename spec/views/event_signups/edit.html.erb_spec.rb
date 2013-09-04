require 'spec_helper'

describe "event_signups/edit" do
  before(:each) do
    @event_signup = assign(:event_signup, stub_model(EventSignup,
      :event_id => 1,
      :name => "MyString",
      :studentID => 1
    ))
  end

  it "renders the edit event_signup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_signups_path(@event_signup), :method => "post" do
      assert_select "input#event_signup_event_id", :name => "event_signup[event_id]"
      assert_select "input#event_signup_name", :name => "event_signup[name]"
      assert_select "input#event_signup_studentID", :name => "event_signup[studentID]"
    end
  end
end
