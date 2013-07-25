require 'spec_helper'

describe "prayers/show" do
  before(:each) do
    @prayer = assign(:prayer, stub_model(Prayer,
      :user_id => 1,
      :request => "MyText",
      :private => false,
      :anonymous => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
