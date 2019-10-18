class Transfer
  # your code here
  attr_reader :status, :sender

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
  end

end
