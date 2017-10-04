require 'statement'

describe Statement do
  
  it 'prints my statement' do
    bankaccount = Account.new('Sam')
    bankaccount.deposit(50)
    expect(bankaccount.print_statement).to include()
  end 
	
end