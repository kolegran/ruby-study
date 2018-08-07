class Fraction
  attr_accessor :numerator
  attr_accessor :denominator

  def initialize(numerator, denominator)
    @numerator   = numerator
    @denominator = denominator
  end

  def add(fraction)
    if self.denominator == fraction.denominator
      a_numerator   = self.numerator + fraction.numerator
      a_denominator = self.denominator
    else
      a_numerator   = self.numerator   * fraction.denominator + fraction.numerator * self.denominator
      a_denominator = self.denominator * fraction.denominator
    end
    Fraction.new(a_numerator, a_denominator).reduction_of_fraction
  end

  def subtract(fraction)
    if self.denominator == fraction.denominator
      s_numerator   = self.numerator - fraction.numerator
      s_denominator = self.denominator
    else
      s_numerator   = self.numerator   * fraction.denominator - fraction.numerator * self.denominator
      s_denominator = self.denominator * fraction.denominator
    end
    Fraction.new(s_numerator, s_denominator).reduction_of_fraction
  end

  def multiply(fraction)
    m_numerator   = self.numerator   * fraction.numerator
    m_denominator = self.denominator * fraction.denominator
    Fraction.new(m_numerator, m_denominator).reduction_of_fraction
  end

  def divide(fraction)
    d_numerator   = self.numerator   * fraction.denominator
    d_denominator = self.denominator * fraction.numerator
    Fraction.new(d_numerator, d_denominator).reduction_of_fraction
  end

  def reduction_of_fraction
    numbers_gcd = self.numerator.gcd self.denominator
    self.numerator   /= numbers_gcd
    self.denominator /= numbers_gcd
    Fraction.new(self.numerator, self.denominator)
  end

  def to_s
    "#{numerator}/#{denominator}"
  end
end
