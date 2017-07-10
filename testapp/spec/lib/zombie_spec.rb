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

  # Matcher type: includes
  it 'has tweeted arrrggg' do
    expect(zombie.tweets).to include('arrrggg')
  end

  # Matcher type: have/have_at_least/have_at_most
  # The Have matcher is actually depreciated - see below changelog
  # http://github.com/rspec/rspec-expectations/compare/v2.99.2...v3.0.0.beta1
  #
  # use the below syntax instead (and remember fewer things!)
  it 'has only one tweet' do
    expect(zombie.tweets.size).to eq(1)
  end

  # Matcher type: change
  it 'gets smarter by eating brains' do
    expect { zombie.eats_brains }.to change { zombie.iq }.from(0).to(3)
    # from/to methods aside, there are also by(), by_at_most() & by_at_least()
  end
end
