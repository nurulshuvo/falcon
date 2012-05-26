class ProductTagsController < ApplicationController
  # GET /product_tags
  # GET /product_tags.json
  def index
    @product_tags = ProductTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_tags }
    end
  end

  # GET /product_tags/1
  # GET /product_tags/1.json
  def show
    @product_tag = ProductTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_tag }
    end
  end

  # GET /product_tags/new
  # GET /product_tags/new.json
  def new
    @product_tag = ProductTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_tag }
    end
  end

  # GET /product_tags/1/edit
  def edit
    @product_tag = ProductTag.find(params[:id])
  end

  # POST /product_tags
  # POST /product_tags.json
  def create
    @product_tag = ProductTag.new(params[:product_tag])

    respond_to do |format|
      if @product_tag.save
        format.html { redirect_to @product_tag, notice: 'Product tag was successfully created.' }
        format.json { render json: @product_tag, status: :created, location: @product_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @product_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_tags/1
  # PUT /product_tags/1.json
  def update
    @product_tag = ProductTag.find(params[:id])

    respond_to do |format|
      if @product_tag.update_attributes(params[:product_tag])
        format.html { redirect_to @product_tag, notice: 'Product tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_tags/1
  # DELETE /product_tags/1.json
  def destroy
    @product_tag = ProductTag.find(params[:id])
    @product_tag.destroy

    respond_to do |format|
      format.html { redirect_to product_tags_url }
      format.json { head :no_content }
    end
  end
end
