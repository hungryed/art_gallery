require 'spec_helper'

describe Artwork do
  it { should validate_presence_of :artist }
  it { should validate_presence_of :type }
  it { should validate_presence_of :collection }

  let(:art) { Artwork.create }
  it "defaults to true for available" do
    expect(art.available).to be_true
    art.available = false
    expect(art.available).to be_false
  end

  it "does not set defaults cost to 0" do
    expect(art.cost).to_not eq(0)
  end

  it { should validate_numericality_of(:cost).is_greater_than_or_equal_to 0 }
end
