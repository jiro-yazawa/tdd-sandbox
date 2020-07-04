class Franc < Money
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    return Franc.new(amount * multiplier)
  end

  def equal?(object)
    self.amount == object.amount
  end
end
