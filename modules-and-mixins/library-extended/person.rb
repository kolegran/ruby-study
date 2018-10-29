class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :sex
  attr_accessor :address
  attr_accessor :phone

  def initialize(first_name, last_name, sex, address, phone)
    @first_name = first_name
    @last_name = last_name
    @sex = sex
    @address = address
    @phone = phone
  end
end
