
class Transaction
  attr_accessor :balance, :transactions_array, :debit, :credit

  def initialize
    @balance = 0
    @debit = 0
    @credit = 0
    t = Time.now
    @date = t.strftime('%d/%m/%Y')
    @transactions_array = []
  end

  def debit(amount)
    @balance += amount
    @transactions_array << ["#{@date} || #{amount.to_f} || ||  #{@balance.to_f}"]
  end

  def credit(amount)
      @balance -= amount
      @transactions_array << ["#{@date} || || #{amount.to_f} ||  #{@balance.to_f}"]
  end
end
