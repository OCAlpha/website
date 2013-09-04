require 'spec_helper'

describe "event_signups/new" do
  before(:each) do
    assign(:event_signup, stub_model(EventSignup,
      :event_id => 1,
      :name => "MyString",
      :studentID => 1
    ).as_new_record)
  end

  it "renders new event_signup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_signups_path, :method => "post" do
      assert_select "input#event_signup_event_id", :name => "event_signup[event_id]"
      assert_select "input#event_signup_name", :name => "event_signup[name]"
      assert_select "input#event_signup_studentID", :name => "event_signup[studentID]"
    end
  end
end
