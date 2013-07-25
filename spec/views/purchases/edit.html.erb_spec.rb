require 'spec_helper'

describe "purchases/edit" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :user_id => 1,
      :purchase_amount => "9.99",
      :office_id => 1,
      :note => "MyString"
    ))
  end

  it "renders the edit purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path(@purchase), :method => "post" do
      assert_select "input#purchase_user_id", :name => "purchase[user_id]"
      assert_select "input#purchase_purchase_amount", :name => "purchase[purchase_amount]"
      assert_select "input#purchase_office_id", :name => "purchase[office_id]"
      assert_select "input#purchase_note", :name => "purchase[note]"
    end
  end
end
