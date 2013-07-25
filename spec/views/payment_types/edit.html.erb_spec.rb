require 'spec_helper'

describe "payment_types/edit" do
  before(:each) do
    @payment_type = assign(:payment_type, stub_model(PaymentType,
      :type => ""
    ))
  end

  it "renders the edit payment_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_types_path(@payment_type), :method => "post" do
      assert_select "input#payment_type_type", :name => "payment_type[type]"
    end
  end
end
