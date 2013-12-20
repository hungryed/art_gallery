require 'spec_helper'

describe Collection do
  it { should validate_presence_of :name }
  it { should have_many :artworks }
end
