require ('rspec')
require ('pry')
require ('coin_combo')

describe('CoinCombo#coin_counter') do

  it('will return error when NaN is entered') do
    cow = CoinCombo.new('cow')
    expect(cow.coin_counter).to(eq('Not a number'))
  end

  it('will return a coin name when a single coin value is inputted 25') do
    quarter = CoinCombo.new(25)
    expect(quarter.coin_counter).to(eq('1 quarter '))
  end

  it('will return a coin name when a single coin value is inputted 50') do
    two_quarters = CoinCombo.new(75)
    expect(two_quarters.coin_counter).to(eq('3 quarters '))
  end

  it('will return a coin name when a single coin value is inputted 86') do
    two_quarters = CoinCombo.new(86)
    expect(two_quarters.coin_counter).to(eq('3 quarters 1 dime 1 penny '))
  end

  it('will return a coin name when a single coin value is inputted 86') do
    two_quarters = CoinCombo.new(72)
    expect(two_quarters.coin_counter).to(eq('2 quarters 2 dimes 2 pennys '))
  end
end
