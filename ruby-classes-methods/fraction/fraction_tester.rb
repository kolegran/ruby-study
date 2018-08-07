require_relative 'fraction'

class FractionTester
  def self.main
    fraction_1 = Fraction.new(1, 2)
    fraction_2 = Fraction.new(3, 4)
    fraction_3 = Fraction.new(2, 7)

    puts fraction_2.subtract(fraction_1)
    puts fraction_2.add(fraction_3)
    puts fraction_1.multiply(fraction_3)
    puts fraction_1.divide(fraction_2)
  end
end

FractionTester.main
