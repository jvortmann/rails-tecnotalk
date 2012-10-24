require 'spec_helper'

describe Reference do
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:link) }
end
