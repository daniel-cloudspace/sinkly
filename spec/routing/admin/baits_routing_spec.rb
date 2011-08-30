require "spec_helper"

describe Admin::BaitsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/baits").should route_to("admin/baits#index")
    end

    it "routes to #new" do
      get("/admin/baits/new").should route_to("admin/baits#new")
    end

    it "routes to #show" do
      get("/admin/baits/1").should route_to("admin/baits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/baits/1/edit").should route_to("admin/baits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/baits").should route_to("admin/baits#create")
    end

    it "routes to #update" do
      put("/admin/baits/1").should route_to("admin/baits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/baits/1").should route_to("admin/baits#destroy", :id => "1")
    end

  end
end
