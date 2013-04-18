require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  def setup
    @client = Client.new(name: 'Jan', surname: 'Kowalski',
                         email: 'jan@wp.pl', phone: '345-678-334')
    assert @client.save
    @account = @client.accounts.create
  end

  def teardown
    @client.delete
    @account.delete
  end

  test "update_balance" do
    @account.transactions.create(amount: 100, descr: 'wpłata 1')
    @account.transactions.create(amount: 350, descr: 'wpłata 2')
    @account.reload
    assert_equal 450, @account.balance
  end
end
