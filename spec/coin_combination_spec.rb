require('rspec')
require('pry')
require('coin_combination.rb')

describe('Fixnum#coin_combination') do
  it("test Fixnum for single penny") do
    expect(1.coin_combination()).to(eq("1 penny"))
  end
  it("test Fixnum for quantity of pennies up to 4 cents") do
    expect(4.coin_combination()).to(eq("4 pennies"))
  end
  it("test Fixnum for single nickel") do
    expect(5.coin_combination()).to(eq("1 nickel"))
  end
  it("test Fixnum for modulo") do
    expect(7.coin_combination()).to(eq("1 nickel 2 pennies"))
  end
  it("test Fixnum for single dime") do
    expect(10.coin_combination()).to(eq("1 dime"))
  end
  it("test Fixnum for modulo") do
    expect(12.coin_combination()).to(eq("1 dime 2 pennies"))
  end
  it("test Fixnum for modulo") do
    expect(15.coin_combination()).to(eq("1 dime 1 nickel"))
  end
  it("test Fixnum for modulo") do
    expect(16.coin_combination()).to(eq("1 dime 1 nickel 1 penny"))
  end
  it("test Fixnum for modulo") do
    expect(17.coin_combination()).to(eq("1 dime 1 nickel 2 pennies"))
  end
  it("test Fixnum for modulo") do
    expect(20.coin_combination()).to(eq("2 dimes"))
  end
  it("test Fixnum for modulo") do
    expect(21.coin_combination()).to(eq("2 dimes 1 penny"))
  end
  it("test Fixnum for modulo") do
    expect(23.coin_combination()).to(eq("2 dimes 3 pennies"))
  end

end
