require_relative './account'

class Statement

	attr_reader :transactions_array

	def initialize
	  @transactions_array = []
	end

  def print_statement
    print "date || name || credit || debit || topup \n"
    @transactions_array.each do |row|
      puts row
    end
  end
end
