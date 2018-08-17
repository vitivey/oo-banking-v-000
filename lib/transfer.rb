require "pry"

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
      @sender.valid? && @receiver.valid?
    end

    def execute_transaction
      if valid? && @status=="pending"
        @sender.balance-=@amount
        @receiver.balance+=@amount
        @status="complete"
      else
        "Transaction rejected. Please check your account balance."
        @status="rejected"
      end
      # binding.pry
    end

    def reverse_transfer
      @sender.balance+=@amount if @status="complete"
      @receiver.balance-=@amount if @status="complete"
      @status="reversed"
    end

end
