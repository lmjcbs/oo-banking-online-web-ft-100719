class Transfer
  # your code here
  attr_reader :status

  def initialize(sender, receiver, amount)
    @status = "pending"
  end

end
