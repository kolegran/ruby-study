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

  def add(new_email)
    new_email.current_status = new_email.status[:draft]
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

  def search_email_by_subject(sub_str)
    found_subject = @emails.find_all { |email| email.subject.downcase.include?(sub_str.downcase) }

    puts "No matches on " + sub_str if found_subject.empty?

    found_subject
  end

  def print_all_emails
    puts "There are no emails\n" if @emails.empty?

    print_emails(@emails)
  end

  def print_emails(emails_list)
    emails_list.each do |email|
      puts "Date:".ljust(20) + email.date
      puts "From:".ljust(20) + email.from
      puts "To:".ljust(20) + email.to
      puts "Subject:".ljust(20) + email.subject
      puts "Current status:".ljust(20) + email.current_status, "\n"
    end
  end
end
