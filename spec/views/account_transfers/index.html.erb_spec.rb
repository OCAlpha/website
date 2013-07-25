require 'spec_helper'

describe "account_transfers/index" do
  before(:each) do
    assign(:account_transfers, [
      stub_model(AccountTransfer,
        :from_account_id => 1,
        :to_account_id => 2,
        :amount => "9.99"
      ),
      stub_model(AccountTransfer,
        :from_account_id => 1,
        :to_account_id => 2,
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of account_transfers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
