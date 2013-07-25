require "spec_helper"

describe ChargeTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/charge_types").should route_to("charge_types#index")
    end

    it "routes to #new" do
      get("/charge_types/new").should route_to("charge_types#new")
    end

    it "routes to #show" do
      get("/charge_types/1").should route_to("charge_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/charge_types/1/edit").should route_to("charge_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/charge_types").should route_to("charge_types#create")
    end

    it "routes to #update" do
      put("/charge_types/1").should route_to("charge_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/charge_types/1").should route_to("charge_types#destroy", :id => "1")
    end

  end
end
