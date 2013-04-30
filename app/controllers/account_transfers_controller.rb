class AccountTransfersController < ApplicationController
  # GET /account_transfers
  # GET /account_transfers.json
  def index
    @account_transfers = AccountTransfer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @account_transfers }
    end
  end

  # GET /account_transfers/1
  # GET /account_transfers/1.json
  def show
    @account_transfer = AccountTransfer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account_transfer }
    end
  end

  # GET /account_transfers/new
  # GET /account_transfers/new.json
  def new
    @account_transfer = AccountTransfer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account_transfer }
    end
  end

  # GET /account_transfers/1/edit
  def edit
    @account_transfer = AccountTransfer.find(params[:id])
  end

  # POST /account_transfers
  # POST /account_transfers.json
  def create
    @account_transfer = AccountTransfer.new(params[:account_transfer])

    respond_to do |format|
      if @account_transfer.save
        format.html { redirect_to @account_transfer, notice: 'Account transfer was successfully created.' }
        format.json { render json: @account_transfer, status: :created, location: @account_transfer }
      else
        format.html { render action: "new" }
        format.json { render json: @account_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /account_transfers/1
  # PUT /account_transfers/1.json
  def update
    @account_transfer = AccountTransfer.find(params[:id])

    respond_to do |format|
      if @account_transfer.update_attributes(params[:account_transfer])
        format.html { redirect_to @account_transfer, notice: 'Account transfer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @account_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_transfers/1
  # DELETE /account_transfers/1.json
  def destroy
    @account_transfer = AccountTransfer.find(params[:id])
    @account_transfer.destroy

    respond_to do |format|
      format.html { redirect_to account_transfers_url }
      format.json { head :no_content }
    end
  end
end
