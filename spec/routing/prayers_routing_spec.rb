require "spec_helper"

describe PrayersController do
  describe "routing" do

    it "routes to #index" do
      get("/prayers").should route_to("prayers#index")
    end

    it "routes to #new" do
      get("/prayers/new").should route_to("prayers#new")
    end

    it "routes to #show" do
      get("/prayers/1").should route_to("prayers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prayers/1/edit").should route_to("prayers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prayers").should route_to("prayers#create")
    end

    it "routes to #update" do
      put("/prayers/1").should route_to("prayers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prayers/1").should route_to("prayers#destroy", :id => "1")
    end

  end
end
