require 'spec_helper'

describe "event_categories/show" do
  before(:each) do
    @event_category = assign(:event_category, stub_model(EventCategory,
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
  end
end
