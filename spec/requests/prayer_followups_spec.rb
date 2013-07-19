require 'spec_helper'

describe "PrayerFollowups" do
  describe "GET /prayer_followups" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get prayer_followups_path
      response.status.should be(200)
    end
  end
end
