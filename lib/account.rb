require 'date'

class Account
  attr_reader :name, :date, :statement
  attr_accessor :credit, :transactions

  def initialize(name)#, date = Date.today)
    @name = name
    @credit = 0
    @debit = 0
    @statement = Statement.new
    @transactions = []
    #@date = date
  end

  def balance
    p @credit
  end

  def topup(amount)
    @credit += amount
  end

  def account
    p @name
    p @credit
  end

  def withdrawl(amount)
    if @credit >= amount
      @credit -= amount
      p "You withdrawled $#{amount}. New balace $#{@credit}."
    else
      p 'You have insufficient funds.'
    end
  end

  def log
    single_transaction = { #date: @date,
                           name: @name,
                           credit: @credit,
                           debit: @debit }
    #transactions = []
    @transactions.push(single_transaction)
  end
end
