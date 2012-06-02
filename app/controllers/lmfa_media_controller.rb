class LmfaMediaController < ApplicationController
  # GET /lmfa_media
  # GET /lmfa_media.json
  def index
    @lmfa_media = LmfaMedium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lmfa_media.shuffle }
    end
  end

  # GET /lmfa_media/1
  # GET /lmfa_media/1.json
  def show
    @lmfa_medium = LmfaMedium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lmfa_medium }
    end
  end

  # GET /lmfa_media/new
  # GET /lmfa_media/new.json
  def new
    @lmfa_medium = LmfaMedium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lmfa_medium }
    end
  end

  # GET /lmfa_media/1/edit
  def edit
    @lmfa_medium = LmfaMedium.find(params[:id])
  end

  # POST /lmfa_media
  # POST /lmfa_media.json
  def create
    @lmfa_medium = LmfaMedium.new(params[:lmfa_medium])

    respond_to do |format|
      if @lmfa_medium.save
        format.html { redirect_to @lmfa_medium, notice: 'Lmfa medium was successfully created.' }
        format.json { render json: @lmfa_medium, status: :created, location: @lmfa_medium }
      else
        format.html { render action: "new" }
        format.json { render json: @lmfa_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lmfa_media/1
  # PUT /lmfa_media/1.json
  def update
    @lmfa_medium = LmfaMedium.find(params[:id])

    respond_to do |format|
      if @lmfa_medium.update_attributes(params[:lmfa_medium])
        format.html { redirect_to @lmfa_medium, notice: 'Lmfa medium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lmfa_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lmfa_media/1
  # DELETE /lmfa_media/1.json
  def destroy
    @lmfa_medium = LmfaMedium.find(params[:id])
    @lmfa_medium.destroy

    respond_to do |format|
      format.html { redirect_to lmfa_media_url }
      format.json { head :no_content }
    end
  end
end
