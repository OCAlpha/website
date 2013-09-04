require 'spec_helper'

describe "event_categories/new" do
  before(:each) do
    assign(:event_category, stub_model(EventCategory,
      :category => "MyString"
    ).as_new_record)
  end

  it "renders new event_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_categories_path, :method => "post" do
      assert_select "input#event_category_category", :name => "event_category[category]"
    end
  end
end
