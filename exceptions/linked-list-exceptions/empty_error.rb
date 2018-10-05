class EmptyError < StandardError
  def initialize(message)
    super(message)
  end
end
