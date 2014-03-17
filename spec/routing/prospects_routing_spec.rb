require "spec_helper"

describe ProspectsController do
  describe "routing" do

    it "routes to #index" do
      get("/prospects").should route_to("prospects#index")
    end

    it "routes to #new" do
      get("/prospects/new").should route_to("prospects#new")
    end

    it "routes to #show" do
      get("/prospects/1").should route_to("prospects#show", :id => "1")
    end

    it "routes to #create" do
      post("/prospects").should route_to("prospects#create")
    end

  end
end
