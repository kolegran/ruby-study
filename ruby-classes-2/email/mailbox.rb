class Mailbox
  attr_accessor :email_address
  attr_accessor :user_name
  attr_accessor :emails

  def email_address=(email_address)
    raise "The email address isn\'t valid." if email_address == ''
    @email_address = email_address
  end

  def user_name=(user_name)
    raise "The username isn\'t valid." if user_name == ''
    @user_name = user_name
  end

  def initialize(email_address, user_name)
    self.email_address = email_address
    self.user_name = user_name
    @emails = []
  end

  def compose(subject, info)
    new_email = Email.new(subject, info)
    @emails << new_email
  end

  def sent(sent_email)
    sent_email.current_status = sent_email.status[:sent]
  end

  def receive(incoming_email)
    email = incoming_email.clone
    email.current_status = email.status[:inbox]
    @emails << email
  end

  def print_email_list
    @emails.each do |email|
      puts "Date:".ljust(20) + email.date
      puts "From:".ljust(20) + email.from
      puts "To:".ljust(20) + email.to
      puts "Subject:".ljust(20) + email.subject
      puts "Current status:".ljust(20) + email.current_status
    end
  end
end
