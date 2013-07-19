class PrayerNotesController < ApplicationController
  # GET /prayer_notes
  # GET /prayer_notes.json
  def index
    @prayer_notes = PrayerNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prayer_notes }
    end
  end

  # GET /prayer_notes/1
  # GET /prayer_notes/1.json
  def show
    @prayer_note = PrayerNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prayer_note }
    end
  end

  # GET /prayer_notes/new
  # GET /prayer_notes/new.json
  def new
    @prayer_note = PrayerNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prayer_note }
    end
  end

  # GET /prayer_notes/1/edit
  def edit
    @prayer_note = PrayerNote.find(params[:id])
  end

  # POST /prayer_notes
  # POST /prayer_notes.json
  def create
    @prayer_note = PrayerNote.new(params[:prayer_note])

    respond_to do |format|
      if @prayer_note.save
        format.html { redirect_to @prayer_note, notice: 'Prayer note was successfully created.' }
        format.json { render json: @prayer_note, status: :created, location: @prayer_note }
      else
        format.html { render action: "new" }
        format.json { render json: @prayer_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prayer_notes/1
  # PUT /prayer_notes/1.json
  def update
    @prayer_note = PrayerNote.find(params[:id])

    respond_to do |format|
      if @prayer_note.update_attributes(params[:prayer_note])
        format.html { redirect_to @prayer_note, notice: 'Prayer note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prayer_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_notes/1
  # DELETE /prayer_notes/1.json
  def destroy
    @prayer_note = PrayerNote.find(params[:id])
    @prayer_note.destroy

    respond_to do |format|
      format.html { redirect_to prayer_notes_url }
      format.json { head :no_content }
    end
  end
end
