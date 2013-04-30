require 'spec_helper'

describe "charge_types/show" do
  before(:each) do
    @charge_type = assign(:charge_type, stub_model(ChargeType,
      :type => "Type",
      :value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/9.99/)
  end
end
