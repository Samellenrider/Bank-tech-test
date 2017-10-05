require 'spec_helper'
require 'account'

describe Account do
  it 'includes account name' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.name).to eq('Sam')
  end

  it 'prints header' do
    bankaccount = Account.new('Sam')
    expect(bankaccount.print_header).to eq('date || credit || debit || balance')
  end

  it 'prints the statement right' do
    bankaccount = Account.new('Sam')
    bankaccount.debit(50)
    bankaccount.credit(20)
    expect(bankaccount.print_statement).to eq([['05/10/2017 || || 20.0 ||  30.0'], ['05/10/2017 || 50.0 || ||  50.0']])
  end
end
