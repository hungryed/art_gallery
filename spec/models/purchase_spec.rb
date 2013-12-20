require 'spec_helper'

describe Purchase do
  it { should validate_presence_of :customer }
  it { should validate_presence_of :artwork }
  it { should belong_to :artwork }
  it { should belong_to :customer }
  it { should validate_presence_of :date_of_purchase }
end
