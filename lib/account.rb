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

  def credit(value) #debit
    @transactions.credit(value)
  end

  def print_statement
    print "date || credit || debit || balance \n"

    @transactions.transactions_array.each do |row|
      puts row
    end
  end
end

# ac = Account.new('Sam')
# ac.debit(100)
# ac.credit(50) #debit
# ac.print_statement
