require "spec_helper"

describe AccountTransfersController do
  describe "routing" do

    it "routes to #index" do
      get("/account_transfers").should route_to("account_transfers#index")
    end

    it "routes to #new" do
      get("/account_transfers/new").should route_to("account_transfers#new")
    end

    it "routes to #show" do
      get("/account_transfers/1").should route_to("account_transfers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account_transfers/1/edit").should route_to("account_transfers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account_transfers").should route_to("account_transfers#create")
    end

    it "routes to #update" do
      put("/account_transfers/1").should route_to("account_transfers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account_transfers/1").should route_to("account_transfers#destroy", :id => "1")
    end

  end
end
