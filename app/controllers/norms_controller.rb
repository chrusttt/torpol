class NormsController < ApplicationController
  # GET /norms
  # GET /norms.json
  def index
    @norms = Norm.includes(:quantities => :material)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @norms }
    end
  end

  # GET /norms/1
  # GET /norms/1.json
  def show
    @norm = Norm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @norm }
    end
  end

  # GET /norms/new
  # GET /norms/new.json
  def new
    @norm = Norm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @norm }
    end
  end

  # GET /norms/1/edit
  def edit
    @norm = Norm.find(params[:id])
  end

  # POST /norms
  # POST /norms.json
  def create
    @norm = Norm.new(params[:norm])

    respond_to do |format|
      if @norm.save
        format.html { redirect_to @norm, notice: 'Norm was successfully created.' }
        format.json { render json: @norm, status: :created, location: @norm }
      else
        format.html { render action: "new" }
        format.json { render json: @norm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /norms/1
  # PUT /norms/1.json
  def update
    @norm = Norm.find(params[:id])

    respond_to do |format|
      if @norm.update_attributes(params[:norm])
        format.html { redirect_to @norm, notice: 'Norm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @norm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /norms/1
  # DELETE /norms/1.json
  def destroy
    @norm = Norm.find(params[:id])
    @norm.destroy

    respond_to do |format|
      format.html { redirect_to norms_url }
      format.json { head :no_content }
    end
  end
end
