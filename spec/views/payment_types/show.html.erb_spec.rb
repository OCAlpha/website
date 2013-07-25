require 'spec_helper'

describe "payment_types/show" do
  before(:each) do
    @payment_type = assign(:payment_type, stub_model(PaymentType,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
