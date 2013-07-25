require 'spec_helper'

describe "purchases/show" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :user_id => 1,
      :purchase_amount => "9.99",
      :office_id => 2,
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/2/)
    rendered.should match(/Note/)
  end
end
