
class Transaction
  
  attr_accessor :credit, :transactions_array, :debit, :topup

  def initialize(date = Time.now)
  	@credit = 0
  	@debit = 0
    @topup = 0
    @date = date.to_s
    @transactions_array = []
  end

  def deposit(amount)
    @credit += amount
    @transactions_array << ["#{@date} || #{@credit} || #{@debit} ||  #{amount}"]
    "You topped up $#{amount}. New balance $#{@credit}"
  end

  def withdrawl(amount)
    if @credit >= amount
      @credit -= amount
      @transactions_array << ["#{@date} || #{@credit} || #{amount} ||  #{@topup}"]
      "You withdrawled $#{amount}. New balace $#{@credit}."
    else
      'You have insufficient funds.'
    end
  end
end