require 'account'

describe Account do
  it 'includes account name' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.name).to eq('Sam')
  end

  it 'includes account credit' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.credit).to eq(0)
  end

  it 'includes account debit' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.debit).to eq(0)
  end

  it 'includes account topup' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.topup).to eq(0)
  end

  it 'includes account transactions array' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.transactions).to eq([])
  end

  it 'includes date variable' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.date).to eq(Time.now.to_s)
  end

  it 'can top up my account' do
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
  
  it 'prints my statement' do 
    bankaccount = Account.new('Sam')
    bankaccount.deposit(50)
    #bankaccount.withdrawl(20)
    expect(bankaccount.print_statement).to include(@transactions) 
  end
 
end
