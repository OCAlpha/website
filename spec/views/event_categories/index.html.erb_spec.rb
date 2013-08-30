require 'spec_helper'

describe "event_categories/index" do
  before(:each) do
    assign(:event_categories, [
      stub_model(EventCategory,
        :category => "Category"
      ),
      stub_model(EventCategory,
        :category => "Category"
      )
    ])
  end

  it "renders a list of event_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
