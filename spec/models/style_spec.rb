require 'spec_helper'

describe Style do
  it { should validate_presence_of :name }
  it { should_not have_valid(:name).when('', nil)}
end
