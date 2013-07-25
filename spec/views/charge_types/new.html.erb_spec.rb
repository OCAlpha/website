require 'spec_helper'

describe "charge_types/new" do
  before(:each) do
    assign(:charge_type, stub_model(ChargeType,
      :type => "",
      :value => "9.99"
    ).as_new_record)
  end

  it "renders new charge_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charge_types_path, :method => "post" do
      assert_select "input#charge_type_type", :name => "charge_type[type]"
      assert_select "input#charge_type_value", :name => "charge_type[value]"
    end
  end
end
