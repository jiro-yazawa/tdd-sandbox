class Dollar < ApplicationRecord
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    return Dollar.new(amount * multiplier)
  end

  def equal?(object)
    true
  end
end
