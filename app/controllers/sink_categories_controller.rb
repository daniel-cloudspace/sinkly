class SinkCategoriesController < ApplicationController
  # GET /sink_categories
  # GET /sink_categories.json
  def index
    @sink_categories = SinkCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sink_categories }
    end
  end

  # GET /sink_categories/1
  # GET /sink_categories/1.json
  def show
    @sink_category = SinkCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sink_category }
    end
  end

  # GET /sink_categories/new
  # GET /sink_categories/new.json
  def new
    @sink_category = SinkCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sink_category }
    end
  end

  # GET /sink_categories/1/edit
  def edit
    @sink_category = SinkCategory.find(params[:id])
  end

  # POST /sink_categories
  # POST /sink_categories.json
  def create
    @sink_category = SinkCategory.new(params[:sink_category])

    respond_to do |format|
      if @sink_category.save
        format.html { redirect_to @sink_category, notice: 'Sink category was successfully created.' }
        format.json { render json: @sink_category, status: :created, location: @sink_category }
      else
        format.html { render action: "new" }
        format.json { render json: @sink_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sink_categories/1
  # PUT /sink_categories/1.json
  def update
    @sink_category = SinkCategory.find(params[:id])

    respond_to do |format|
      if @sink_category.update_attributes(params[:sink_category])
        format.html { redirect_to @sink_category, notice: 'Sink category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sink_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sink_categories/1
  # DELETE /sink_categories/1.json
  def destroy
    @sink_category = SinkCategory.find(params[:id])
    @sink_category.destroy

    respond_to do |format|
      format.html { redirect_to sink_categories_url }
      format.json { head :ok }
    end
  end
end
