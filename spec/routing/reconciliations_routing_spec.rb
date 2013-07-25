require "spec_helper"

describe ReconciliationsController do
  describe "routing" do

    it "routes to #index" do
      get("/reconciliations").should route_to("reconciliations#index")
    end

    it "routes to #new" do
      get("/reconciliations/new").should route_to("reconciliations#new")
    end

    it "routes to #show" do
      get("/reconciliations/1").should route_to("reconciliations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reconciliations/1/edit").should route_to("reconciliations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reconciliations").should route_to("reconciliations#create")
    end

    it "routes to #update" do
      put("/reconciliations/1").should route_to("reconciliations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reconciliations/1").should route_to("reconciliations#destroy", :id => "1")
    end

  end
end
