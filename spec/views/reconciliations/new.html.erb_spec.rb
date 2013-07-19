require 'spec_helper'

describe "reconciliations/new" do
  before(:each) do
    assign(:reconciliation, stub_model(Reconciliation,
      :account_id => 1,
      :balance => "9.99"
    ).as_new_record)
  end

  it "renders new reconciliation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reconciliations_path, :method => "post" do
      assert_select "input#reconciliation_account_id", :name => "reconciliation[account_id]"
      assert_select "input#reconciliation_balance", :name => "reconciliation[balance]"
    end
  end
end
