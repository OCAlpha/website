require 'spec_helper'

describe "payments/index" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :paid_by_user_id => 1,
        :collected_by_user_id => 2,
        :amount_paid => "9.99",
        :notes => "Notes",
        :reconciled => false
      ),
      stub_model(Payment,
        :paid_by_user_id => 1,
        :collected_by_user_id => 2,
        :amount_paid => "9.99",
        :notes => "Notes",
        :reconciled => false
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
