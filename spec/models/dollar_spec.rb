require 'rails_helper'

RSpec.describe Dollar, type: :model do
  it '#multiple' do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq 10
    product = five.times(3)
    expect(product.amount).to eq 15
  end

  it '#equals' do
    expect(Dollar.new(5).equal?(Dollar.new(5))).to be true
  end
end
