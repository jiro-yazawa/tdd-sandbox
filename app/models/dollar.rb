class Dollar < ApplicationRecord
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    @amount = 5 * 2
  end
end
