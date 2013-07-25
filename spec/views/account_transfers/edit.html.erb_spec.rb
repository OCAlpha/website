require 'spec_helper'

describe "account_transfers/edit" do
  before(:each) do
    @account_transfer = assign(:account_transfer, stub_model(AccountTransfer,
      :from_account_id => 1,
      :to_account_id => 1,
      :amount => "9.99"
    ))
  end

  it "renders the edit account_transfer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => account_transfers_path(@account_transfer), :method => "post" do
      assert_select "input#account_transfer_from_account_id", :name => "account_transfer[from_account_id]"
      assert_select "input#account_transfer_to_account_id", :name => "account_transfer[to_account_id]"
      assert_select "input#account_transfer_amount", :name => "account_transfer[amount]"
    end
  end
end
