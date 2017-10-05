require 'spec_helper'
require 'transaction'

describe Transaction do
  it 'adds a transaction to the array debit' do
    transaction = Transaction.new
    transaction.debit(100)
    expect(transaction.transactions_array[0]).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 100.0 || || 100.0"])
  end
  
  it 'adds a transaction to the array credit' do
    transaction = Transaction.new
    transaction.debit(100)
    transaction.credit(50)
    expect(transaction.transactions_array[0]).to eq(["#{Time.now.strftime('%d/%m/%Y')} || 100.0 || || 100.0"])
  end
end
