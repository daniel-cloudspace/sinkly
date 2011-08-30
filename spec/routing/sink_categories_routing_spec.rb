require "spec_helper"

describe SinkCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/sink_categories").should route_to("sink_categories#index")
    end

    it "routes to #new" do
      get("/sink_categories/new").should route_to("sink_categories#new")
    end

    it "routes to #show" do
      get("/sink_categories/1").should route_to("sink_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sink_categories/1/edit").should route_to("sink_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sink_categories").should route_to("sink_categories#create")
    end

    it "routes to #update" do
      put("/sink_categories/1").should route_to("sink_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sink_categories/1").should route_to("sink_categories#destroy", :id => "1")
    end

  end
end
