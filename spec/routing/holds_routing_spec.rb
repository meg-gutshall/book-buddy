require "rails_helper"

RSpec.describe HoldsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/holds").to route_to("holds#index")
    end

    it "routes to #new" do
      expect(:get => "/holds/new").to route_to("holds#new")
    end

    it "routes to #show" do
      expect(:get => "/holds/1").to route_to("holds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/holds/1/edit").to route_to("holds#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/holds").to route_to("holds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/holds/1").to route_to("holds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/holds/1").to route_to("holds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/holds/1").to route_to("holds#destroy", :id => "1")
    end
  end
end
