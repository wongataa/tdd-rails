require 'spec_helper'
require 'zombie'

# describe $CLASSNAME do
describe Zombie do
  zombie = Zombie.new
  # examples (tests) here
  # leave off the 'do' block to have a pending example
  # OR put an x in front of the 'it'
  # OR make the first line of your example 'pending'
  it 'is named Ash' do
    # this next bit is called an expectation (assertion)
    # 'should' is called a modifier
    # 'Ash' is called a matcher
    expect(zombie.name).to match('Ash')
  end

  it 'smells and looks like a zombie' do
    # more on matchers from official docs
    # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    expect(zombie.rotting).to eq(true)
    expect(zombie.alive).not_to eq(true)
    expect(zombie.brains).to be < 1
  end

  it 'is hungry' do
    # predicate matchers can match against predicate methods
    # ie methods that end in a ? returning true or false
    expect(zombie).to be_hungry
  end
end
