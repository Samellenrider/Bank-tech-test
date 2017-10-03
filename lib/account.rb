require 'statement'

class Account
  attr_reader :name, :date
  attr_accessor :credit, :transactions, :debit, :topup

  def initialize(name, date = Time.now)
    @name = name
    @credit = 0
    @debit = 0
    @topup = 0
    @transactions = []
    @date = date.to_s
  end


  def topup(amount)
    @credit += amount    
    @transactions << {date: @date, name: @name, credit: @credit, debit: @debit, topup: amount}
    "You topped up $#{amount}. New balance $#{@credit}"
  end

  def withdrawl(amount)
    if @credit >= amount
      @credit -= amount
      @transactions << {date: @date, name: @name, credit: @credit, debit: amount, topup: @topup}
       "You withdrawled $#{amount}. New balace $#{@credit}."
    else
       "You have insufficient funds."
    end
  end

  def print_statement
  	print "name || date || credit || debit || topup \n"
    @transactions.each do |elt|
    		elt.each do |key, value|
    		  "#{key}||"#{value}||#{value}||#{value}||#{value}"
    		end
    	end
    end
  end
end	

ac =Account.new("Sam")
ac.topup(100)
ac.withdrawl(50)
ac.print_statement