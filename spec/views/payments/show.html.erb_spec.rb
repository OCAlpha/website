require 'spec_helper'

describe "payments/show" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :paid_by_user_id => 1,
      :collected_by_user_id => 2,
      :amount_paid => "9.99",
      :notes => "Notes",
      :reconciled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/Notes/)
    rendered.should match(/false/)
  end
end
