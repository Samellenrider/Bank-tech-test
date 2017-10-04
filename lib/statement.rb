require_relative './account'

class Statement

  def print_statement
  	n = Transaction.new
    print "date || credit || debit || topup \n"
    n.transactions_array.each do |row|
      puts row
    end
  end
end
