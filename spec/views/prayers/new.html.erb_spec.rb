require 'spec_helper'

describe "prayers/new" do
  before(:each) do
    assign(:prayer, stub_model(Prayer,
      :user_id => 1,
      :request => "MyText",
      :private => false,
      :anonymous => false
    ).as_new_record)
  end

  it "renders new prayer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prayers_path, :method => "post" do
      assert_select "input#prayer_user_id", :name => "prayer[user_id]"
      assert_select "textarea#prayer_request", :name => "prayer[request]"
      assert_select "input#prayer_private", :name => "prayer[private]"
      assert_select "input#prayer_anonymous", :name => "prayer[anonymous]"
    end
  end
end
