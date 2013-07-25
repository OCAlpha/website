require "spec_helper"

describe PrayerNotesController do
  describe "routing" do

    it "routes to #index" do
      get("/prayer_notes").should route_to("prayer_notes#index")
    end

    it "routes to #new" do
      get("/prayer_notes/new").should route_to("prayer_notes#new")
    end

    it "routes to #show" do
      get("/prayer_notes/1").should route_to("prayer_notes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prayer_notes/1/edit").should route_to("prayer_notes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prayer_notes").should route_to("prayer_notes#create")
    end

    it "routes to #update" do
      put("/prayer_notes/1").should route_to("prayer_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prayer_notes/1").should route_to("prayer_notes#destroy", :id => "1")
    end

  end
end
