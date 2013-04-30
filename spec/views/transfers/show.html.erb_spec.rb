require 'spec_helper'

describe "transfers/show" do
  before(:each) do
    @transfer = assign(:transfer, stub_model(Transfer,
      :officer_user_id => 1,
      :account_id => 2,
      :value => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
  end
end
