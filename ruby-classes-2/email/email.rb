class Email
  attr_accessor :subject
  attr_accessor :info
  attr_accessor :date
  attr_accessor :from
  attr_accessor :to
  attr_accessor :status
  attr_accessor :current_status

  def info=(info)
    if info.empty?
      raise "Enter the required information."
    end
    @info = info
  end

  def date=(date)
    if !date
      raise "Enter the date."
    elsif date == ""
      raise "The date isn\'t valid."
    end
    @date = date
  end

  def from=(from)
    if !from
      raise "Enter the sender."
    elsif from == ""
      raise "The sender isn\'t valid. Enter the valid sender."
    end
    @from = from
  end

  def to=(to)
    if !to
      raise "Enter the recipient."
    elsif to == ""
      raise "The recipient isn\'t valid. Enter the valid recipient."
    end
    @to = to
  end

  def initialize(subject = "", info = {})
    @subject = subject
    self.info = info
    self.date = info[:date]
    self.from = info[:from]
    self.to = info[:to]
    @status = {none: 'none', draft: 'draft', sent: 'sent', inbox: 'inbox'}
    @current_status = @status[:draft]  # by default
  end
end
