require 'pry'

class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if self.status == "pending"
      if valid? == true
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"
      else
        "Transaction rejected. Please check your account balance."
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
    #binding.pry
  end

end
