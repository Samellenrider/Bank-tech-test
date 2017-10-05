require 'spec_helper'
require 'transaction'

describe Transaction do
  it 'adds a transaction to the array debit' do
    transaction = Transaction.new
    transaction.debit(100)
    expect(transaction.transactions_array.count).to be(1)
  end
  it 'adds a transaction to the array credit' do
    transaction = Transaction.new
    transaction.debit(100)
    transaction.credit(50)
    expect(transaction.transactions_array.count).to be(2)
  end
end
