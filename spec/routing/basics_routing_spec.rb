require "spec_helper"

describe BasicsController do
  describe "routing" do

    it "routes to #index" do
      get("/basics").should route_to("basics#index")
    end

    it "routes to #new" do
      get("/basics/new").should route_to("basics#new")
    end

    it "routes to #show" do
      get("/basics/1").should route_to("basics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/basics/1/edit").should route_to("basics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/basics").should route_to("basics#create")
    end

    it "routes to #update" do
      put("/basics/1").should route_to("basics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/basics/1").should route_to("basics#destroy", :id => "1")
    end

  end
end
