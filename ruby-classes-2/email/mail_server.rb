class MailServer
  attr_accessor :name

  def name=(server_name)
    raise "The name of the server isn\'t valid." if server_name == ''
    @name = server_name
  end

  def initialize(server_name = 'XMail')
    self.name = server_name
  end

  def send_email(mailbox_recipient, mailbox_sender, email)
    mailbox_sender.sent(email)

    mailbox_recipient.receive(email)
  end
end
