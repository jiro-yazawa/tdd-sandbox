class Dollar < ApplicationRecord
  attr_accessor :amount
  def initialize(amount)
    @amount = 5 * 2
  end

  def times(multiplier)
  end
end
