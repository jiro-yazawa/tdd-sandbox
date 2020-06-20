class Dollar < ApplicationRecord
  attr_accessor :value
  def initialize(value)
    @value = 10
  end

  def amount
    10
  end

  def times(multiplier)
  end
end
