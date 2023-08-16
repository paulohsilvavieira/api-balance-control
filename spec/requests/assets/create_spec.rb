require "rails_helper"

RSpec.describe "Assets", type: :request do
  it "creates a valid asset" do
    post "/assets", params: { asset: { name: "bitcoin", code: "btc", category: "crypto" } }
    expect(response).to have_http_status :created
  end
end
