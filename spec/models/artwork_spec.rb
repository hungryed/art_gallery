require 'spec_helper'

describe Artwork do
  it { should belong_to :collection }
  it { should belong_to :type }
  it { should belong_to :purchase }
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
  it { should respond_to(:collection) }
  it "should respond to collection" do
    expect(art.collection).to be_an_instance_of(Collection)
  end
end
