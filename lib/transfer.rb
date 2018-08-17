class Transfer
  # your code here
  attr_accessor :status, :amount
  attr_reader :sender, :receiver

    def initialize(sender, receiver, amount)
      @sender=sender
      @receiver=receiver
      @amount=amount
      @status="pending"
    end

    def valid?
      @sender.valid? and @receiver.valid?
    end

    def execute_transaction

    end

    def reverse_transfer

    end

end
