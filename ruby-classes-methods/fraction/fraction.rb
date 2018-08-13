class Fraction
  attr_accessor :numerator
  attr_accessor :denominator

  def denominator=(denominator)
    if denominator.zero?
      raise "Error: cannot divide by zero!"
    end
    @denominator = denominator
  end

  def initialize(numerator, denominator)
    @numerator   = numerator
    self.denominator = denominator
  end

  def add(fraction)
    if @denominator == fraction.denominator
      a_numerator   = @numerator + fraction.numerator
      a_denominator = @denominator
    else
      a_numerator   = @numerator   * fraction.denominator + fraction.numerator * @denominator
      a_denominator = @denominator * fraction.denominator
    end
    Fraction.new(a_numerator, a_denominator).reduction_of_fraction
  end

  def subtract(fraction)
    if @denominator == fraction.denominator
      s_numerator   = @numerator - fraction.numerator
      s_denominator = @denominator
    else
      s_numerator   = @numerator   * fraction.denominator - fraction.numerator * @denominator
      s_denominator = @denominator * fraction.denominator
    end
    Fraction.new(s_numerator, s_denominator).reduction_of_fraction
  end

  def multiply(fraction)
    m_numerator   = @numerator   * fraction.numerator
    m_denominator = @denominator * fraction.denominator
    Fraction.new(m_numerator, m_denominator).reduction_of_fraction
  end

  def divide(fraction)
    d_numerator   = @numerator   * fraction.denominator
    d_denominator = @denominator * fraction.numerator
    Fraction.new(d_numerator, d_denominator).reduction_of_fraction
  end

  def reduction_of_fraction
    numbers_gcd = @numerator.gcd @denominator
    @numerator   /= numbers_gcd
    @denominator /= numbers_gcd
    Fraction.new(@numerator, @denominator)
  end

  def to_s
    "#{numerator}/#{denominator}"
  end
end
