require 'spec_helper'

describe "transfers/new" do
  before(:each) do
    assign(:transfer, stub_model(Transfer,
      :officer_user_id => 1,
      :account_id => 1,
      :value => "9.99"
    ).as_new_record)
  end

  it "renders new transfer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transfers_path, :method => "post" do
      assert_select "input#transfer_officer_user_id", :name => "transfer[officer_user_id]"
      assert_select "input#transfer_account_id", :name => "transfer[account_id]"
      assert_select "input#transfer_value", :name => "transfer[value]"
    end
  end
end
