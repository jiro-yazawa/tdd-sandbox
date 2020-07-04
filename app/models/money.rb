class Money < ApplicationRecord
  attr_reader :amount

  def equal?(object)
    self.amount == object.amount
  end
end
