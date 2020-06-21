require 'rails_helper'

RSpec.describe Dollar, type: :model do
  it '#multiple' do
    five = Dollar.new(5)
    five.times(2)
    expect(five.amount).to eq 10
    five.times(3)
    expect(five.amount).to eq 15
  end
end
