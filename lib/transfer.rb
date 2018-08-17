class Transfer
  # your code here
  attr_accessor :status, amount

    def initialize(sender, receiver, amount)
      @amount=amount
      @status="pending"
    end

    def sender(sender)
      BankAccount.new(sender)
    end

    def receiver(receiver)
      BankAccount.new(sender)
    end
    
end
