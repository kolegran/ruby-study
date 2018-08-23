require_relative 'mailbox'
require_relative 'mail_server'
require_relative 'email'

class EmailTester
  def self.main
    # Create a Mail Server
    server = MailServer.new('Postfix')

    # Create mailboxes for the sender and recipient
    mailbox_recipient = Mailbox.new("leon-do-vine@gmail.com", "Leonardo")
    mailbox_sender = Mailbox.new("picky-casserole@gmail.com", "Picasso")

    # Create the first email for sending
    subject = "Hi Leo! Can you send me the bottle of your best vine?"
    s_email = Email.new(subject, date: "2018-08-16", from: mailbox_sender.user_name, to: mailbox_recipient.user_name)

    # Add the first email to mailbox
    mailbox_sender.add(s_email)

    # Send the first email
    curr_email = mailbox_sender.emails.last
    server.send_email(mailbox_recipient, mailbox_sender, curr_email)

    # Create the second email
    subject = "Leo! Where are you?! I want a wine!"
    s_email = Email.new(subject, date: "2018-08-17", from: mailbox_sender.user_name, to: mailbox_recipient.user_name)

    # Add the second email to mailbox
    mailbox_sender.add(s_email)

    # Send the second email
    curr_email = mailbox_sender.emails.last
    server.send_email(mailbox_recipient, mailbox_sender, curr_email)

    # Search email
    found_email = mailbox_recipient.search_email_by_subject("can")
    # Display the found email
    mailbox_recipient.print_emails(found_email)

    puts "Sender\'s emails: "
    mailbox_sender.print_all_emails
    puts "Recipient\'s emails: "
    mailbox_recipient.print_all_emails
  end
end

EmailTester.main
