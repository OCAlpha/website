require 'spec_helper'

describe "transfers/index" do
  before(:each) do
    assign(:transfers, [
      stub_model(Transfer,
        :officer_user_id => 1,
        :account_id => 2,
        :value => "9.99"
      ),
      stub_model(Transfer,
        :officer_user_id => 1,
        :account_id => 2,
        :value => "9.99"
      )
    ])
  end

  it "renders a list of transfers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
