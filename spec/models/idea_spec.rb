require 'rails_helper'

RSpec.describe Idea, type: :model do
  it "has a valid factory" do
    idea = build(:idea)
    expect(idea).to be_valid
  end
end
