require "spec_helper"

describe PrayerFollowupsController do
  describe "routing" do

    it "routes to #index" do
      get("/prayer_followups").should route_to("prayer_followups#index")
    end

    it "routes to #new" do
      get("/prayer_followups/new").should route_to("prayer_followups#new")
    end

    it "routes to #show" do
      get("/prayer_followups/1").should route_to("prayer_followups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prayer_followups/1/edit").should route_to("prayer_followups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prayer_followups").should route_to("prayer_followups#create")
    end

    it "routes to #update" do
      put("/prayer_followups/1").should route_to("prayer_followups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prayer_followups/1").should route_to("prayer_followups#destroy", :id => "1")
    end

  end
end
