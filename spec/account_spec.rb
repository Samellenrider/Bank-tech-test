require 'account'

describe Account do
  it 'can top up my account' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    expect(bankaccount.balance).to eq(50)
  end

  it 'can check my balance' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    bankaccount.topup(30)
    expect(bankaccount.balance).to eq(80)
  end

  it 'displays my account details' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    expect(bankaccount.account).to eq('Sam' && 50)
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

  it 'creates a log' do
    bankaccount = Account.new('Sam')
    bankaccount.topup(50)
    bankaccount.withdrawl(30)
    expect(bankaccount.log).to eq([{:date=>"2017-10-03 11:51:13 +0100", :name=>"Sam", :credit=>20, :debit=>0}])
  end

end
