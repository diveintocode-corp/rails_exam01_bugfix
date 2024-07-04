require 'rails_helper'

RSpec.describe Blog, type: :model do
  it { should have_many(:comments) }
end