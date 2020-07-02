require 'rails_helper'

RSpec.describe Franc, type: :model do
  it '#multiple' do
    five = Franc.new(5)
    expect(Franc.new(10).equal?(five.times(2))).to be true
    expect(Franc.new(15).equal?(five.times(3))).to be true
  end

  it '#equal?' do
    expect(Franc.new(5).equal?(Franc.new(5))).to be true
    expect(Franc.new(5).equal?(Franc.new(6))).to be false
  end
end
