require 'spec_helper'

describe Customer do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :amount_spent }
  it { should validate_presence_of :favorite_collection_id }
  it { should have_many :purchases }
  it { should have_many(:artworks).through(:purchases) }
end
