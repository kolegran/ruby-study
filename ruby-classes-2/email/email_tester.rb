require_relative 'mailbox'
require_relative 'mail_server'
require_relative 'email'

class EmailTester
  def self.main
    mailbox_recipient = Mailbox.new("leon-do-vine@gmail.com", "Leonardo")
    mailbox_sender = Mailbox.new("picky-casserole@gmail.com", "Picasso")

    subject = "Hi Leo! Can you send me the bottle of your best vine?"

    s_email = Email.new(subject, date: "2018-08-16", from: mailbox_sender.user_name, to: mailbox_recipient.user_name)

    mailbox_sender.add(s_email)

    server = MailServer.new('Postfix')

    curr_email = mailbox_sender.emails.first

    server.send_email(mailbox_recipient, mailbox_sender, curr_email)

    puts "Sender\'s emails: "
    mailbox_sender.print_email_list
    puts "Recipient\'s emails: "
    mailbox_recipient.print_email_list
  end
end

EmailTester.main
