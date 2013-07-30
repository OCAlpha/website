class ReconciliationsController < ApplicationController
  before_filter :exec_user

  # GET /reconciliations
  # GET /reconciliations.json
  def index
    @reconciliations = Reconciliation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reconciliations }
    end
  end

  # GET /reconciliations/1
  # GET /reconciliations/1.json
  def show
    @reconciliation = Reconciliation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reconciliation }
    end
  end

  # GET /reconciliations/new
  # GET /reconciliations/new.json
  def new
    @reconciliation = Reconciliation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reconciliation }
    end
  end

  # GET /reconciliations/1/edit
  def edit
    @reconciliation = Reconciliation.find(params[:id])
  end

  # POST /reconciliations
  # POST /reconciliations.json
  def create
    @reconciliation = Reconciliation.new(params[:reconciliation])

    respond_to do |format|
      if @reconciliation.save
        format.html { redirect_to @reconciliation, notice: 'Reconciliation was successfully created.' }
        format.json { render json: @reconciliation, status: :created, location: @reconciliation }
      else
        format.html { render action: "new" }
        format.json { render json: @reconciliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reconciliations/1
  # PUT /reconciliations/1.json
  def update
    @reconciliation = Reconciliation.find(params[:id])

    respond_to do |format|
      if @reconciliation.update_attributes(params[:reconciliation])
        format.html { redirect_to @reconciliation, notice: 'Reconciliation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reconciliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reconciliations/1
  # DELETE /reconciliations/1.json
  def destroy
    @reconciliation = Reconciliation.find(params[:id])
    @reconciliation.destroy

    respond_to do |format|
      format.html { redirect_to reconciliations_url }
      format.json { head :no_content }
    end
  end
end
