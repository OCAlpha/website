class ChargeTypesController < ApplicationController
  # GET /charge_types
  # GET /charge_types.json
  def index
    @charge_types = ChargeType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @charge_types }
    end
  end

  # GET /charge_types/1
  # GET /charge_types/1.json
  def show
    @charge_type = ChargeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @charge_type }
    end
  end

  # GET /charge_types/new
  # GET /charge_types/new.json
  def new
    @charge_type = ChargeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @charge_type }
    end
  end

  # GET /charge_types/1/edit
  def edit
    @charge_type = ChargeType.find(params[:id])
  end

  # POST /charge_types
  # POST /charge_types.json
  def create
    @charge_type = ChargeType.new(params[:charge_type])

    respond_to do |format|
      if @charge_type.save
        format.html { redirect_to @charge_type, notice: 'Charge type was successfully created.' }
        format.json { render json: @charge_type, status: :created, location: @charge_type }
      else
        format.html { render action: "new" }
        format.json { render json: @charge_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /charge_types/1
  # PUT /charge_types/1.json
  def update
    @charge_type = ChargeType.find(params[:id])

    respond_to do |format|
      if @charge_type.update_attributes(params[:charge_type])
        format.html { redirect_to @charge_type, notice: 'Charge type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @charge_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charge_types/1
  # DELETE /charge_types/1.json
  def destroy
    @charge_type = ChargeType.find(params[:id])
    @charge_type.destroy

    respond_to do |format|
      format.html { redirect_to charge_types_url }
      format.json { head :no_content }
    end
  end
end
