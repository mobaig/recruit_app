require "spec_helper"

describe RecruitersController do
  describe "routing" do

    it "routes to #index" do
      get("/recruiters").should route_to("recruiters#index")
    end

    it "routes to #new" do
      get("/recruiters/new").should route_to("recruiters#new")
    end

    it "routes to #show" do
      get("/recruiters/1").should route_to("recruiters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recruiters/1/edit").should route_to("recruiters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recruiters").should route_to("recruiters#create")
    end

    it "routes to #update" do
      put("/recruiters/1").should route_to("recruiters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recruiters/1").should route_to("recruiters#destroy", :id => "1")
    end

  end
end
