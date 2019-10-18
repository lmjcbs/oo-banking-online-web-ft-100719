class Transfer
  # your code here
  attr_reader :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if valid?
    sender.balance - amount && receiver.balance += amount if valid?
  end
end
