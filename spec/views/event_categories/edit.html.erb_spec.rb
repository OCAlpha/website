require 'spec_helper'

describe "event_categories/edit" do
  before(:each) do
    @event_category = assign(:event_category, stub_model(EventCategory,
      :category => "MyString"
    ))
  end

  it "renders the edit event_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_categories_path(@event_category), :method => "post" do
      assert_select "input#event_category_category", :name => "event_category[category]"
    end
  end
end
