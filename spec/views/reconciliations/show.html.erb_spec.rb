require 'spec_helper'

describe "reconciliations/show" do
  before(:each) do
    @reconciliation = assign(:reconciliation, stub_model(Reconciliation,
      :account_id => 1,
      :balance => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
