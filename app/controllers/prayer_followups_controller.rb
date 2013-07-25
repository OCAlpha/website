class PrayerFollowupsController < ApplicationController
  # GET /prayer_followups
  # GET /prayer_followups.json
  def index
    @prayer_followups = PrayerFollowup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prayer_followups }
    end
  end

  # GET /prayer_followups/1
  # GET /prayer_followups/1.json
  def show
    @prayer_followup = PrayerFollowup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prayer_followup }
    end
  end

  # GET /prayer_followups/new
  # GET /prayer_followups/new.json
  def new
    @prayer_followup = PrayerFollowup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prayer_followup }
    end
  end

  # GET /prayer_followups/1/edit
  def edit
    @prayer_followup = PrayerFollowup.find(params[:id])
  end

  # POST /prayer_followups
  # POST /prayer_followups.json
  def create
    @prayer_followup = PrayerFollowup.new(params[:prayer_followup])

    respond_to do |format|
      if @prayer_followup.save
        format.html { redirect_to @prayer_followup, notice: 'Prayer followup was successfully created.' }
        format.json { render json: @prayer_followup, status: :created, location: @prayer_followup }
      else
        format.html { render action: "new" }
        format.json { render json: @prayer_followup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prayer_followups/1
  # PUT /prayer_followups/1.json
  def update
    @prayer_followup = PrayerFollowup.find(params[:id])

    respond_to do |format|
      if @prayer_followup.update_attributes(params[:prayer_followup])
        format.html { redirect_to @prayer_followup, notice: 'Prayer followup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prayer_followup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_followups/1
  # DELETE /prayer_followups/1.json
  def destroy
    @prayer_followup = PrayerFollowup.find(params[:id])
    @prayer_followup.destroy

    respond_to do |format|
      format.html { redirect_to prayer_followups_url }
      format.json { head :no_content }
    end
  end
end
