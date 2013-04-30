require 'spec_helper'

describe "account_transfers/new" do
  before(:each) do
    assign(:account_transfer, stub_model(AccountTransfer,
      :from_account_id => 1,
      :to_account_id => 1,
      :amount => "9.99"
    ).as_new_record)
  end

  it "renders new account_transfer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => account_transfers_path, :method => "post" do
      assert_select "input#account_transfer_from_account_id", :name => "account_transfer[from_account_id]"
      assert_select "input#account_transfer_to_account_id", :name => "account_transfer[to_account_id]"
      assert_select "input#account_transfer_amount", :name => "account_transfer[amount]"
    end
  end
end
