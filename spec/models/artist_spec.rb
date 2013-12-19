require 'spec_helper'

describe Artist do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :birth_place }
  it { should have_many :artworks }
  it { should belong_to :style }
  it { should validate_presence_of :style }
  it { should validate_numericality_of :style_id }

end
