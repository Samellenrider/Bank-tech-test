require 'date'

class Account
  attr_reader :name, :date#, :statement
  attr_accessor :credit, :transactions, :debit

  def initialize(name, date = Time.now)
    @name = name
    @credit = 0
    @debit = 0
    #@statement = Statement.new
    @transactions = []
    @date = date.to_s
  end

  def balance
    p @credit
  end

  def topup(amount)
    @credit += amount
    t = {date: @date, name: @name, credit: @credit, debit: @debit}
    @transactions.push(t)
  end

  def account
    p @name
    p @credit
  end

  def withdrawl(amount)
    if @credit >= amount
      @credit -= amount
      t = {date: @date, name: @name, credit: @credit, debit: amount}
      @transactions.push(t)
      p "You withdrawled $#{amount}. New balace $#{@credit}."
    else
      p 'You have insufficient funds.'
    end

  end

  def log
    single_transaction = { date: @date,
                           name: @name,
                           credit: @credit,
                           debit: @debit }
    #transactions = []
    @transactions.push(single_transaction)
  end

  def print_statement

     @transactions.each do |name, date, credit, debit|
   
   if debit == 0
    print "name || date || credit || debit ""\n"
else
	print "name || date || credit || debit ""\n"
  end

  end
end
end
