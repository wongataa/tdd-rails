# A zombie for use with codeschool's Testing With RSpec
class Zombie
  attr_accessor :name, :brains, :alive, :rotting, :tweets, :iq

  def initialize
    @name    = 'Ash'
    @brains  = 0
    @iq      = 0
    @alive   = false
    @rotting = true
    @tweets  = %w[uuuuuunnhhhh arrrggg]
  end

  def eats_brains
    self.iq += 3
  end

  def hungry?
    true
  end
end
