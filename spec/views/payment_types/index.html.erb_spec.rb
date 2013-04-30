require 'spec_helper'

describe "payment_types/index" do
  before(:each) do
    assign(:payment_types, [
      stub_model(PaymentType,
        :type => "Type"
      ),
      stub_model(PaymentType,
        :type => "Type"
      )
    ])
  end

  it "renders a list of payment_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
