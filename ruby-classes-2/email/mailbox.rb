class Mailbox
  attr_accessor :email_address
  attr_accessor :user_name
  attr_accessor :emails

  def email_address=(email_address)
    if email_address == ""
      raise "The email address isn\'t valid."
    end
    @email_address = email_address
  end

  def user_name=(user_name)
    if user_name == ""
      raise "The username isn\'t valid."
    end
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
    incoming_email.current_status = incoming_email.status[:inbox]
    @emails << incoming_email
  end

  def print_email_list
    @emails.each do |email|
      puts "Date: #{email.date}"
      puts "From: #{email.from}"
      puts "To: #{email.to}"
      puts "Subject: #{email.subject}"
      puts "Current status: #{email.current_status}", "\n"
    end
  end
end
