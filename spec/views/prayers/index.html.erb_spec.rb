require 'spec_helper'

describe "prayers/index" do
  before(:each) do
    assign(:prayers, [
      stub_model(Prayer,
        :user_id => 1,
        :request => "MyText",
        :private => false,
        :anonymous => false
      ),
      stub_model(Prayer,
        :user_id => 1,
        :request => "MyText",
        :private => false,
        :anonymous => false
      )
    ])
  end

  it "renders a list of prayers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
