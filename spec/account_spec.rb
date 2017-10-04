require 'account'

describe Account do
  it 'includes account name' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.name).to eq('Sam')
  end
end
