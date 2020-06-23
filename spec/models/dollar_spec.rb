require 'rails_helper'

RSpec.describe Dollar, type: :model do
  it '#multiple' do
    five = Dollar.new(5)
    expect(Dollar.new(10).equal?(five.times(2))).to be true
    expect(Dollar.new(15).equal?(five.times(3))).to be true
  end

  it '#equal?' do
    expect(Dollar.new(5).equal?(Dollar.new(5))).to be true
    expect(Dollar.new(5).equal?(Dollar.new(6))).to be false
  end
end
