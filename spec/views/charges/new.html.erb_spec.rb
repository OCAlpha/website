require 'spec_helper'

describe "charges/new" do
  before(:each) do
    assign(:charge, stub_model(Charge,
      :office_id => 1,
      :user_id => 1,
      :charge_type_id => 1,
      :override_value => "9.99",
      :reconciled => false
    ).as_new_record)
  end

  it "renders new charge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charges_path, :method => "post" do
      assert_select "input#charge_office_id", :name => "charge[office_id]"
      assert_select "input#charge_user_id", :name => "charge[user_id]"
      assert_select "input#charge_charge_type_id", :name => "charge[charge_type_id]"
      assert_select "input#charge_override_value", :name => "charge[override_value]"
      assert_select "input#charge_reconciled", :name => "charge[reconciled]"
    end
  end
end
