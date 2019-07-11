require 'rails_helper'

RSpec.describe "Holds", type: :request do
  describe "GET /holds" do
    it "works! (now write some real specs)" do
      get holds_path
      expect(response).to have_http_status(200)
    end
  end
end
