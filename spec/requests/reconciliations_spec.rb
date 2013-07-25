require 'spec_helper'

describe "Reconciliations" do
  describe "GET /reconciliations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get reconciliations_path
      response.status.should be(200)
    end
  end
end
