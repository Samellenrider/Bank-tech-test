require_relative 'transaction'

class Account
  attr_reader :name, :date

  def initialize(name, transactions = Transaction.new)
    @name = name
    @transactions = transactions
  end

  def debit(value)
    @transactions.debit(value)
  end

  def credit(value)
    @transactions.credit(value)
  end

  def print_header
    h = 'date || credit || debit || balance'
    p h
  end

  def print_statement
    print_header
    @transactions.transactions_array.reverse.each do |row|
      puts row
    end
  end
end
