class MaterialsController < ApplicationController
  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materials }
    end
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materials/new
  # GET /materials/new.json
  def new
    @material = Material.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material }
      format.js {}
    end
  end

  # GET /materials/1/edit
  def edit
    @material = Material.find(params[:id])
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(params[:material])
    @materials = Material.all
    respond_to do |format|
      if @material.save
        flash.now[:notice] = "Dodano surowiec."
        format.html { redirect_to @material, notice: 'Material was successfully created.' }
        format.json { render json: @material, status: :created, location: @material }
        @materials = Material.all
        format.js {}
      else
        flash.now[:error] = "Niepoprawne dane"
        format.html { render action: "new" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  # PUT /materials/1
  # PUT /materials/1.json
  def update
    @material = Material.find(params[:id])

    respond_to do |format|
      if @material.update_attributes(params[:material])
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { respond_with_bip @material  }
      else
        format.html { render action: "edit" }
        format.json { respond_with_bip @material }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    respond_to do |format|
      format.html { redirect_to materials_url }
      format.json { head :no_content }
    end
  end

  def destroy_multiple
    
    Material.destroy_all(id: params[:material_ids])
    @materials = Material.all
    respond_to do |format|
      format.html {redirect_to materials_url}
      format.json {head :no_content}
      format.js
    end
  end

end
