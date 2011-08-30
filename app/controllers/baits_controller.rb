class BaitsController < ApplicationController
  # GET /admin/baits
  # GET /admin/baits.json
  def index
    @admin_baits = Bait.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_baits }
    end
  end

  # GET /admin/baits/1
  # GET /admin/baits/1.json
  def show
    @admin_bait = Bait.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_bait }
    end
  end

  # GET /admin/baits/new
  # GET /admin/baits/new.json
  def new
    @admin_bait = Bait.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_bait }
    end
  end

  # GET /admin/baits/1/edit
  def edit
    @admin_bait = Bait.find(params[:id])
  end

  # POST /admin/baits
  # POST /admin/baits.json
  def create
    @admin_bait = Bait.new(params[:admin_bait])

    respond_to do |format|
      if @admin_bait.save
        format.html { redirect_to @admin_bait, notice: 'Bait was successfully created.' }
        format.json { render json: @admin_bait, status: :created, location: @admin_bait }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_bait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/baits/1
  # PUT /admin/baits/1.json
  def update
    @admin_bait = Bait.find(params[:id])

    respond_to do |format|
      if @admin_bait.update_attributes(params[:admin_bait])
        format.html { redirect_to @admin_bait, notice: 'Bait was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_bait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/baits/1
  # DELETE /admin/baits/1.json
  def destroy
    @admin_bait = Bait.find(params[:id])
    @admin_bait.destroy

    respond_to do |format|
      format.html { redirect_to admin_baits_url }
      format.json { head :ok }
    end
  end
end
