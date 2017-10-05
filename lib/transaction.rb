
class Transaction
  attr_accessor :balance, :transactions_array, :debit, :credit

  def initialize
    @balance = 0
    @debit = 0
    @credit = 0
    t = Time.now
    @date = t.strftime("%d/%m/%Y")
    @transactions_array = []
  end

  def debit(amount)
    @balance += amount
    @transactions_array.unshift(["#{@date} || #{amount.to_s + ".00"} || ||  #{@balance.to_s + ".00"}"])
    "You topped up $#{amount}. New balance $#{@balance}"
  end

  def credit(amount)
    if @balance >= amount
      @balance -= amount
      @transactions_array.unshift(["#{@date} || || #{amount.to_s + ".00"} ||  #{@balance.to_s + ".00"}"])
      "You withdrawled $#{amount}. New balace $#{@balance}."
    else
      'You have insufficient funds.'
    end
  end
end
