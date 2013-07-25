require 'spec_helper'

describe "payment_types/new" do
  before(:each) do
    assign(:payment_type, stub_model(PaymentType,
      :type => ""
    ).as_new_record)
  end

  it "renders new payment_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_types_path, :method => "post" do
      assert_select "input#payment_type_type", :name => "payment_type[type]"
    end
  end
end
