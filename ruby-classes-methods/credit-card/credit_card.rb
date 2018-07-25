class CreditCard
  EUR_COEFF = 0.8587
  GPB_COEFF = 0.7880

  attr_accessor :owner_name
  attr_accessor :number_of_card
  attr_accessor :card_validity_period
  attr_accessor :cvv_code
  attr_accessor :balance

  def owner_name=(owner_name)
    if owner_name == ""
      raise "The name isn\'t valid."
    end
    @owner_name = owner_name
  end

  def initialize(owner_name = "", number_of_card = 2345_1324_8764_9871, card_validity_period = "12/2022", cvv_code = 328)
    self.owner_name = owner_name
    @number_of_card = number_of_card
    @card_validity_period = card_validity_period
    @cvv_code = cvv_code
    @balance = 0.0
  end

  def deposit(replenishment)
    @balance += replenishment
  end

  def payment(consumption)
    if balance_validity?
      @balance = (@balance - consumption) < 0 ? 0.0 : (@balance - consumption)
    end
  end

  def print_in_usd
    puts "Your balance in usd is #{balance}"
  end

  def print_in_eur
    puts "Your balance in eur is #{balance * EUR_COEFF}"
  end

  def print_in_gpb
    puts "Your balance in gpb is #{balance * GPB_COEFF}"
  end

private
  def balance_validity?
    if balance.zero?
      raise "Your balance is #{balance}. Put money into the account."
    end
    true
  end
end

new_card = CreditCard.new("John Doe")

new_card.deposit(5000)
new_card.print_in_usd
new_card.payment(500)
new_card.print_in_usd
new_card.payment(400)
new_card.print_in_usd
new_card.print_in_eur
new_card.print_in_gpb
