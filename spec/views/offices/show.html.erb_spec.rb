require 'spec_helper'

describe "offices/show" do
  before(:each) do
    @office = assign(:office, stub_model(Office,
      :budget => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
