require 'spec_helper'

describe "charge_types/index" do
  before(:each) do
    assign(:charge_types, [
      stub_model(ChargeType,
        :type => "Type",
        :value => "9.99"
      ),
      stub_model(ChargeType,
        :type => "Type",
        :value => "9.99"
      )
    ])
  end

  it "renders a list of charge_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
