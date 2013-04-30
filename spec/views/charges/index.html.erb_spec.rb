require 'spec_helper'

describe "charges/index" do
  before(:each) do
    assign(:charges, [
      stub_model(Charge,
        :office_id => 1,
        :user_id => 2,
        :charge_type_id => 3,
        :override_value => "9.99",
        :reconciled => false
      ),
      stub_model(Charge,
        :office_id => 1,
        :user_id => 2,
        :charge_type_id => 3,
        :override_value => "9.99",
        :reconciled => false
      )
    ])
  end

  it "renders a list of charges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
