class Transfer
  # your code here
  attr_reader :status

  def initialize(bank_account, amount)
    @status = "pending"
  end

end
