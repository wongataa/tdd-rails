# A zombie for use with codeschool's Testing With RSpec
class Zombie
  attr_accessor :name, :brains, :alive, :rotting, :tweets

  def initialize
    @name    = 'Ash'
    @brains  = 0
    @alive   = false
    @rotting = true
    @tweets  = %w[uuuuuunnhhhh arrrggg]
  end

  def hungry?
    true
  end
end
