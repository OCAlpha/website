require 'spec_helper'

describe "prayer_notes/show" do
  before(:each) do
    @prayer_note = assign(:prayer_note, stub_model(PrayerNote,
      :user_id => 1,
      :request_id => 2,
      :content => "MyText",
      :anonymous => false,
      :public => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
