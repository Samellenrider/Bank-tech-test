require_relative 'transaction'

class Account
  attr_reader :name, :date

  def initialize(name, transactions = Transaction.new)
    @name = name
    @transactions = transactions
  end

  def deposit(value)
    @transactions.deposit(value)
  end

  def withdrawl(value)
    @transactions.withdrawl(value)
  end

  def print_statement
    print "date || credit || debit || topup \n"
    @transactions.transactions_array.each do |row|
      puts row
    end
  end
end

ac = Account.new('Sam')
ac.deposit(100)
ac.withdrawl(50)
ac.print_statement
