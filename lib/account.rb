require_relative 'statement'
require_relative 'transaction'

class Account
  attr_reader :name, :date, :statement
  #attr_accessor :credit, :transactions, :debit, :topup

  def initialize(name, date = Time.now, statement = Statement.new, transactions = Transaction.new)
    @name = name
    @debit = 0
    @topup = 0
    @date = date.to_s
    @statement = statement
    @transactions = transactions
  end

  def deposit(value)
  	@transactions.deposit(value)
  end

  def withdrawl(value)
  	@transactions.withdrawl(value)
  end

  def print_statement
  	@statement.print_statement
  end
end




ac = Account.new('Sam')
ac.deposit(100)
ac.withdrawl(50)
ac.print_statement
