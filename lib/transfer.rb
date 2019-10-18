class Transfer
  # your code here
  attr_reader :status, :sender, :receiver

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = reciever
    
  end

end
