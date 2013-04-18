class TransactionsController < ApplicationController
  before_filter :find_account

  def new
    @transaction = @account.transactions.new
  end

  def create
    @transaction = @account.transactions.new(transaction_params)
    if @transaction.save
      redirect_to [@client, @account], notice: 'Transakcja zapisana'
    else
      render action: 'new'
    end
  end

  private
    def find_account
      @account = Account.find(params[:account_id])
      @client = @account.client
    end

    def transaction_params
      params.require(:transaction).permit(:amount, :descr)
    end
end
