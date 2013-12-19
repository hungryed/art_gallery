require 'spec_helper'

describe Artwork do
  it { should validate_presence_of :artist_id }
  it { should validate_presence_of :type_id }
  it { should validate_presence_of :collection_id }
  it { should validate_presence_of :cost }

  let(:art) { Artwork.create }
  it "defaults to true for availible" do
    expect(art.availible).to be_true
  end

  it "defaults cost to 0" do
    expect(art.cost).to eql(0)
  end

  it { should validate_numericality_of(:cost).is_greater_than_or_equal_to 0 }
end
