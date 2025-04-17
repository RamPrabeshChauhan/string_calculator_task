require 'rails_helper'

RSpec.describe "Api::V1::Calculator", type: :request do
  describe "GET /api/v1/calculator/add" do
    it "returns sum for valid input" do
      get '/api/v1/calculator/add', params: { numbers: "1,2" }
      expect(JSON.parse(response.body)['result']).to eq(3)
    end

    it "returns error for negative numbers" do
      get '/api/v1/calculator/add', params: { numbers: "1,-2" }
      expect(JSON.parse(response.body)['error']).to eq("negative numbers not allowed: -2")
    end
  end
end
