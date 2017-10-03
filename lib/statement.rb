require_relative './account'

class Statement

  def initialize
  	@account = Account.new
  end
  
  def head_line
    p 'name || date || credit || debit'
  end

  def print_statement

  @transactions.each do |name, date, credit, debit|
   
   if debit == 0
    print "name || date || credit || debit "
else
	print "name || date || credit || debit "
  end
end

end
end