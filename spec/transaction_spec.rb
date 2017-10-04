require 'transaction'

describe Transaction do
  it 'topup adds to topup' do
    bankaccount = Account.new('Sam')
    bankaccount.deposit(50)
    expect(bankaccount.credit).to eq(50)
  end

  it 'withdrawls subtracts withdrawl from my credit' do
    bankaccount = Account.new('Sam')
    bankaccount.deposit(50)
    expect(bankaccount.withdrawl(30)).to eq('You withdrawled $30. New balace $20.')
  end

  it 'throws an error if balance is lower than withdrawl amount' do
    bankaccount = Account.new('Sam')
    bankaccount.deposit(50)
    expect(bankaccount.withdrawl(80)).to eq('You have insufficient funds.')
  end
end