require 'spec_helper'

describe "offices/index" do
  before(:each) do
    assign(:offices, [
      stub_model(Office,
        :budget => ""
      ),
      stub_model(Office,
        :budget => ""
      )
    ])
  end

  it "renders a list of offices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 4
  end
end
