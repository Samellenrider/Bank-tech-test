require 'account'

describe Account do
  it 'can top up my account' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    expect(bankaccount.credit).to eq(50)
  end

  it 'withdrawls subtracts withdrawl from my credit' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    expect(bankaccount.withdrawl(30)).to eq('You withdrawled $30. New balace $20.')
  end

  it 'throws an error if balance is lower than withdrawl amount' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    expect(bankaccount.withdrawl(80)).to eq('You have insufficient funds.')
  end
  
  it 'prints my statement' do 
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    #bankaccount.withdrawl(20)
    expect(bankaccount.print_statement).to eq("date || name || credit || debit || topup\n #{@date} || Sam ||  50 || 0 ||  50" )
  end
 
end
