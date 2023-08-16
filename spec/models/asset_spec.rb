require "rails_helper"

RSpec.describe Asset, type: :model do
  subject(:asset) { described_class.new }

  it "is valid with valid attributes" do
    asset.name = "test"
    asset.code = "test"
    asset.category = "test"
    expect(asset).to be_valid
  end

  it "is invalid without valid attributes" do
    expect(asset).to be_invalid
  end
end
