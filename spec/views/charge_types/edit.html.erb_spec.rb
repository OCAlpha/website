require 'spec_helper'

describe "charge_types/edit" do
  before(:each) do
    @charge_type = assign(:charge_type, stub_model(ChargeType,
      :type => "",
      :value => "9.99"
    ))
  end

  it "renders the edit charge_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charge_types_path(@charge_type), :method => "post" do
      assert_select "input#charge_type_type", :name => "charge_type[type]"
      assert_select "input#charge_type_value", :name => "charge_type[value]"
    end
  end
end
